/*******************************************************************************
 * Car_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Ball_TA extends RBActor_TA
	native;

struct native ExplosionData
{
    var export editinline Goal_TA Goal;
    var vector Location;

    structdefaultproperties
    {
        Goal=none
        Location=(X=0.0,Y=0.0,Z=0.0)
    }
};


/** Visual mesh */
var() export editinline StaticMeshComponent StaticMesh;
/** FX to replace the ball with when the game ends */
var() FXActor_X EndOfGameFXArchetype;
/** explosion to spawn */
// Commented out as we do not have the class
var() Explosion_X ExplosionArchetype;
var() Explosion_X NoGoalExplosionArchetype;
var() bool bAllowPlayerExplosionOverride;
var transient bool bNotifyGroundHit;
var privatewrite repnotify transient bool bEndOfGameHidden;
var bool bFadeIn;
var bool bFadeOut;
var const transient bool bPredictionOnGround;
var transient bool bCanBeAttached;
var transient bool bItemFreeze;
var() repnotify vector MagnusCoefficient;
var export editinline BallCamTarget_TA BallCamTarget;
var transient float Radius;
var float VisualRadius;
// This boolean is not present in my files.
var bool bNextCamTargetOnExplode;
var transient array<BallHitInfo> Touches;
var transient float LastCalculateCarHit;
var transient vector InitialLocation;
var transient Rotator InitialRotation;
var transient float LastHitWorldTime;
var repnotify float ReplicatedBallScale;
var repnotify StaticMesh ReplicatedBallMesh;
var repnotify float ReplicatedWorldBounceScale;
var repnotify float ReplicatedBallGravityScale;
var repnotify float ReplicatedBallMaxLinearSpeedScale;
var repnotify float ReplicatedAddedCarBounceScale;
var float AdditionalCarGroundBounceScaleZ;
var float AdditionalCarGroundBounceScaleXY;
var privatewrite repnotify PhysicalMaterial ReplicatedPhysMatOverride;
var privatewrite transient byte HitTeamNum;
var privatewrite repnotify transient GameEvent_Soccar_TA GameEvent;
var privatewrite repnotify transient ExplosionData ReplicatedExplosionData;
//var privatewrite repnotify transient ExplosionDataExtended ReplicatedExplosionDataExtended;
// Missing class
var privatewrite transient Explosion_X Explosion;
var privatewrite transient float ExplosionTime;
var privatewrite transient vector OldLocation;
// This property is not present in my files.
var privatewrite transient Constraint2D_TA Constraint;
var MaterialInterface FadeMaterial;
/** Timestep when predicting our next position(s) */
var() float PredictionTimestep;
//var const transient array<PredictedPosition> PredictedPositions;
var const transient float LastPredictionTime;
//var privatewrite transient GoalPenetrationData GoalPenetration;
var() float GroundForce;
var transient Car_TA CurrentAffector;
// TODO
//var export editinline Ball_TrajectoryComponent_TA TrajectoryComponent;
var const export editinline PitchTekDrawingComponent_TA PitchTekComponent;

// Don't have the correct types, possibly are references to Event functions for this class?
/**
var ScriptDelegate __EventCarTouch__Delegate;
var ScriptDelegate __EventHitWorld__Delegate;
var ScriptDelegate __EventHitGround__Delegate;
var ScriptDelegate __EventHitGoal__Delegate;
var ScriptDelegate __EventGameEventSet__Delegate;
var ScriptDelegate __EventExploded__Delegate;
*/


replication
{
    // Pos:0x000
    if(bNetInitial)
        GameEvent, ReplicatedBallMesh, 
        ReplicatedBallScale, ReplicatedWorldBounceScale;

    // Pos:0x00A
    if(bNetDirty)
        HitTeamNum, ReplicatedExplosionData, 
        bEndOfGameHidden;
}

simulated event ReplicatedEvent(name VarName)
{
	//Return
}

/*
simulated function SetBallScale(float NewScale)
{
    local StaticMesh OldMesh;
    local editinline DecalComponent Decal;
    local int I;
	
	//Return
}*/

simulated function SetWorldBounceScale(float NewScale)
{	
	local PhysicalMaterial PhysMaterial;
	//Return
}

simulated function SetBallMesh(StaticMesh NewMesh)
{
    //return;    
}

simulated event PostBeginPlay()
{
    //return;    
}

protected simulated function OnHitWorld(vector HitLoc, vector HitNormal)
{
    //return;    
}

simulated function Reset()
{
    //return;    
}

function RecordCarHit(Car_TA HitCar, vector HitLocation, vector HitNormal)
{
    local BallHitInfo Hit;
	
	//Return
}

protected function OnCarTouch(Car_TA HitCar)
{
    //return;    
}

simulated function TurnOff()
{
    //return;    
}

simulated function SetGameEvent(GameEvent_Soccar_TA SoccarGame)
{
    //return;    
}

protected event OnHitGoal(Goal_TA Goal, vector HitLoc)
{
    //return;    
}

final function bool IsRoundActive()
{
    //return ReturnValue;    
}


defaultproperties
{
	Begin Object Class=StaticMeshComponent Name=DefaultMesh
		ReplacementPrimitive=none
        RBChannel=RBCollisionChannel.RBCC_Ball
        bNotifyRigidBodyCollision=true
        RBCollideWithChannels=(Default=true,Vehicle=true,GameplayPhysics=true,EffectPhysics=true,Ball=true,BlockingVolume=true)
        ScriptRigidBodyCollisionThreshold=0.000010
	End Object
	
	
	Begin Object Name=DefaultBallCamTarget
	End Object
	
	//Begin Object Class=AkParamGroup Name=DefaultAkParams
	//End Object
	
	Begin Object Name=ReplayComponent0
	End Object
	
	Begin Object Name=LegacyTakeDamageComponent0
	End Object
	
	
	StaticMesh=DefaultMesh
    BallCamTarget=DefaultBallCamTarget
	MaxLinearSpeed=6000.0
	MaxAngularSpeed=6.0
    HitTeamNum=255
    PredictionTimestep=0.050
    //Ak=DefaultAkParams
    Replay=ReplayComponent0
    LegacyTakeDamageComponent=LegacyTakeDamageComponent0
	Mass=30.0
	CollisionType=ECollisionType.COLLIDE_BlockAll
    bGameInstanceRelevant=true
    BlockRigidBody=true
    NetPriority=10.0
	CollisionComponent=DefaultMesh
	
}
