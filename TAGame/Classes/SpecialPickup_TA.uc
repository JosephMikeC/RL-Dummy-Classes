class SpecialPickup_TA extends CarComponent_TA;

var() String PickupName;
var() bool bHudIngoreUseTime;
var bool bHasActivated;
var transient bIsActive;
var() float ActivationDuration;
var() FXActor_X PickupFXArchetype;
var() array<PickupReplacement> BodyReplacements;
var() export editinline ShakeComponent_X ShakeComponentArchetype;
var() AkSoundCue ActivateSFX;
var() AkSoundCue LocalActivateSFX;
var FXActor_X PickupFX;
var export editinline ShakeComponent_X ShakeComp;
var delegate<EventActivated> __EventActivated__Delegate;

function bool HasActivated () {}
function RBActor_TA GetClientTarget () {}
function OnVehicleSetupComplete () {}
function RemovePickupFX () {}
function InitPickupFX () {}
float GetActiveTimePercent () {}
function PreActivatedTick (float DeltaTime) {}
function PickupTick (float DeltaTime) {}
function PickupEnd () {}
function PickupStart () {}
function CarComponent_Boost_TA GetBoostComponent () {}
function DeactivatePickup () {}
bool TryActivate (RBActor_TA TargetOverride) {}
function eventDestroyed () {}
//function HandleDemolish (Car_TA InCar, struct FDemolishData& Data) {}
function OnCreated () {}
bool CanPickup (Car_TA InCar) {}
function ApplyPickup (Car_TA InCar) {}
event RecordCarHit (Ball_TA Ball, struct FVector& Normal, byte HitType) {}
delegate EventActivated (Car_TA InCar, SpecialPickup_TA Pickup) {}