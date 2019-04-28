class ForceVolume_TA extends Volume;

//var const native noexport Pointer VfTable_IITickNotify_TA;
var() byte ForceDirection;
var() byte ConstantForceMode;
var() byte EnterForceMode;
var() float ConstantForce;
var() float EnterForce;
var() Actor CustomForceDirection;

event UnTouch (Actor Other) {}
function vector GetForceDirection (RBActor_TA RB) {}
event Touch (Actor OTher, PrimitiveComponent OtherComponent, vector HitLocation, vector HitNormal) {}
event PrePhysicsStep (float DeltaTime) {}