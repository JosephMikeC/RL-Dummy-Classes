class ForceVolume_TA extends Volume;

//var const native noexport Pointer VfTable_IITickNotify_TA;
var() byte ForceDirection;
var() byte ConstantForceMode;
var() byte EnterForceMode;
var() float ConstantForce;
var() float EnterForce;
var() Actor CustomForceDirection;

event eventUnTouch (Actor Other) {}
Vector GetForceDirection (RBActor_TA RB) {}
event eventTouch (Actor OTher, PrimitiveComponent OtherComponent, Vector HitLocation, Vector HitNormal) {}
event eventPrePhysicsStep (float DeltaTime) {}