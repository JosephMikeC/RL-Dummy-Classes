class RotateComponent_TA extends ActorComponent_X;

var float Momentum;
var float LastMomentum;
var float RotationSpeed;
var Rotator CurrentRotation;
var transient float TurntableDirection;
var() AkSoundCue SFX_Rotating;
var() AkSoundCue SFX_Reversing;
var() InterpCurveFloat FallOFfCurve;
var() InterpCurveFloat YawSpeedCurveMouse;
var() InterpCurveFloat YawSpeedCurveGamepad;
var transient bool bGrabbed;
var bool bDeterminedSnapRotation;
var Rotator SnapRotation;
var float SnapAngle;
var int TotalSnaps;
var Rotator SnapStartRotation;
var float MinStopMomentum;
var float SnapBlendSpeed;
//var delegate<EventRotationChanged> __EventRotationChanged__Delegate;

function DontStartSound () {}
function DontPlayReverse () {}
//function bool IsTimerActive (Name& FuncName) {}
//function SetTimer (float Time, unsigned bool bLoop, Name& FuncName) {}
//function ClearTimer (Name& FuncName) {}
function float CalculateMomentumFalloff (float DeltaTime) {}
function SetGrabbed (bool bGrab) {}
function float DetermineTurnSpeed (float DeltaTime, float YawInput, bool bGamepad) {}
function DetermineSnapRotation (int MoveDirection) {}
function UpdateSpin (float DeltaTime, float YawInput, bool bGamepad) {}
function int IncrementSlotIndex (int InTotalSnaps, int CurrentIndex, int AddAmount) {}
function Rotator GetSlotRotation (int SlotIndex) {}
//function int GetClosestSlotInRotation (vector& WorldDirection, Rotator& InRotation, int InTotalSnaps, float InSnapAngle) {}
//function SetSnap (Rotator& InSnapStartRotation, int InTotalSnaps, float InSnapAngle, float InMinStopMomentum) {}
function StopMovement () {}
function StopRotatingSound () {}
function SetComponentRotation (float InDirectionMag, float DeltaTime) {}
//function SetCurrentRotation (Rotator& NewRotation) {}
function eventTick (float DeltaTime) {}
function eventBeginPlay () {}
//function EventRotationChanged (RotateComponent_TA RotateComponent, Rotator& NewRotation) {}