/*******************************************************************************
 * CameraStateBlender_X generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
 class CameraStateBlender_X extends Component;

struct CameraTransition
{
 var CameraState_X CameraState;
 var AnimNodeBlendList BlendParams;
 var float RemainingTime;
 var Camera_X SnapshotPOV;
 var bool bStarted;

 structdefaultproperties
 {
     CameraState=none
     BlendParams=(BlendTime=0.0,BlendFunction=EViewTargetBlendFunction.VTBlend_Cubic,BlendExp=2.0,bLockOutgoing=false)
     RemainingTime=0.0
     SnapshotPOV=(Focus=(X=0.0,Y=0.0,Z=0.0),Rotation=(Pitch=0,Yaw=0,Roll=0),Distance=0.0,FOV=0.0,CalculatedLocation=(X=0.0,Y=0.0,Z=0.0))
     bStarted=false
 }
};

var privatewrite transient CameraTransition Transition;
var private transient vector TransitionDelta;
var privatewrite transient CameraState_X CameraState;

function Snap()
{
 ClearTransition();
 ClearTransitionDelta();
 //return;    
}

function bool TransitionToState(CameraState_X NewState)
{
 // End:0x1ED
 if(NewState != CameraState)
 {
     // End:0x62
     if(NewState == none)
     {
         // End:0x5F
         if(CameraState != none)
         {
             CameraState.EndCameraState();
             CameraState = none;
         }
     }
     // End:0x1EB
     else
     {
         ClearTransition();
         // End:0x1B9
         if(CameraState != none)
         {
             Transition.BlendParams = CameraState.GetEndBlendParams(NewState);
             // End:0x16E
             if(Transition.BlendParams.BlendTime > 0.0)
             {
                 Transition.CameraState = CameraState;
                 Transition.RemainingTime = Transition.BlendParams.BlendTime;
             }
             // End:0x1B6
             else
             {
                 ClearTransitionDelta();
                 CameraState.EndCameraState();
                 NewState.BeginCameraState();
             }
         }
         // End:0x1D8
         else
         {
             NewState.BeginCameraState();
         }
         CameraState = NewState;
     }
     return true;
 }
 return false;
 //return ReturnValue;    
}

protected function ClearTransition()
{
 local CameraTransition EmptyTransition;

 // End:0x54
 if(Transition.CameraState != none)
 {
     Transition.CameraState.EndCameraState();
 }
 Transition = EmptyTransition;
 //return;    
}

protected function ClearTransitionDelta()
{
 local Orientation EmptyOrientation;

 TransitionDelta = EmptyOrientation;
 //return;    
}

function Tick(float DeltaTime)
{
 // End:0x7B
 if(CameraState != none)
 {
     // End:0x7B
     if((Transition.CameraState == none) || Transition.bStarted)
     {
         CameraState.Tick(DeltaTime);
     }
 }
 // End:0x1B2
 if(Transition.RemainingTime > 0.0)
 {
     Transition.RemainingTime -= DeltaTime;
     // End:0x155
     if(Transition.RemainingTime <= float(0))
     {
         // End:0x13E
         if(!Transition.bStarted && CameraState != none)
         {
             CameraState.BeginCameraState();
         }
         ClearTransition();
         ClearTransitionDelta();
     }
     // End:0x1B2
     else
     {
         // End:0x1B2
         if(Transition.CameraState != none)
         {
             Transition.CameraState.Tick(DeltaTime);
         }
     }
 }
 //return;    
}

function UpdatePOV(float DeltaTime, CameraState_X OutPOV)
{
 // End:0x45
 if(Transition.RemainingTime > 0.0)
 {
     BlendCameraState(OutPOV, DeltaTime);
 }
 // End:0x85
 else
 {
     // End:0x85
     if(CameraState != none)
     {
         CameraState.UpdatePOV(DeltaTime, OutPOV);
     }
 }
 //return;    
}

function PostProcessPOV(float DeltaTime, CameraState_X OutPOV)
{
 // End:0x10F
 if(Transition.RemainingTime > 0.0)
 {
     OutPOV.Focus += TransitionDelta.Focus;
     OutPOV.Rotation += TransitionDelta.Rotation;
     OutPOV.Distance += TransitionDelta.Distance;
     OutPOV.FOV += TransitionDelta.FOV;
 }
 //return;    
}

protected function BlendCameraState(CameraState_X OutPOV, float DeltaTime)
{
 local float BlendPct;

 // End:0x63
 if(Transition.bStarted)
 {
     // End:0x60
     if(CameraState != none)
     {
         CameraState.UpdatePOV(DeltaTime, OutPOV);
     }
 }
 // End:0x4E5
 else
 {
     Transition.bStarted = true;
     Transition.SnapshotPOV = OutPOV;
     Transition.CameraState.UpdatePOV(DeltaTime, Transition.SnapshotPOV);
     Transition.CameraState.EndCameraState();
     Transition.CameraState = none;
     CameraState.BeginCameraState();
     CameraState.UpdatePOV(DeltaTime, OutPOV);
     Transition.SnapshotPOV.Focus -= OutPOV.Focus;
     Transition.SnapshotPOV.Rotation -= OutPOV.Rotation;
     Transition.SnapshotPOV.Distance -= OutPOV.Distance;
     Transition.SnapshotPOV.FOV -= OutPOV.FOV;
     Transition.SnapshotPOV.Rotation = Normalize(Transition.SnapshotPOV.Rotation);
     Transition.SnapshotPOV.Focus += TransitionDelta.Focus;
     Transition.SnapshotPOV.Rotation += TransitionDelta.Rotation;
     Transition.SnapshotPOV.Distance += TransitionDelta.Distance;
     Transition.SnapshotPOV.FOV += TransitionDelta.FOV;
     Transition.SnapshotPOV.Rotation = Normalize(Transition.SnapshotPOV.Rotation);
     ClearTransitionDelta();
 }
 BlendPct = GetTransitionBlend();
 TransitionDelta.Focus = Transition.SnapshotPOV.Focus * BlendPct;
 TransitionDelta.Rotation = Transition.SnapshotPOV.Rotation * BlendPct;
 TransitionDelta.Distance = Transition.SnapshotPOV.Distance * BlendPct;
 TransitionDelta.FOV = Transition.SnapshotPOV.FOV * BlendPct;
 //return;    
}

protected function float GetTransitionBlend()
{
 local float DurationPct, BlendPct;

 DurationPct = Transition.RemainingTime / Transition.BlendParams.BlendTime;
 switch(Transition.BlendParams.BlendFunction)
 {
     // End:0xC9
     case 1:
         BlendPct = FCubicInterp(0.0, 0.0, 1.0, 0.0, DurationPct);
         // End:0x208
         break;
     // End:0x127
     case 2:
         BlendPct = FInterpEaseIn(0.0, 1.0, DurationPct, Transition.BlendParams.BlendExp);
         // End:0x208
         break;
     // End:0x185
     case 3:
         BlendPct = FInterpEaseOut(0.0, 1.0, DurationPct, Transition.BlendParams.BlendExp);
         // End:0x208
         break;
     // End:0x1E3
     case 4:
         BlendPct = FInterpEaseInOut(0.0, 1.0, DurationPct, Transition.BlendParams.BlendExp);
         // End:0x208
         break;
     // End:0xFFFF
     default:
         BlendPct = Lerp(0.0, 1.0, DurationPct);
         // End:0x208
         break;
 }
 return BlendPct;
 //return ReturnValue;    
}