class CarPreviewAnim_TA extends ActorComponent_X;

var() ProductSlot_TA Slot;
var() array<PreviewAnimKeyFrame> KeyFrames;
var() float Delay;
var() bool bDelayHidden;
var() bool bLoop;
var transient bool bComponentWasAttached;
var() name SkelControlName;
var transient CarPreviewActor_TA PreviewActor;
var export transient editinline PrimitiveComponent Component;
var transient PreviewAnimKeyFrame FinalKeyFrame;
var transient float KeyframeTime;
var transient int KeyframeIndex;
var transient SkelControlSingleBone SkelControl;

native final function SetRotation(Rotator Rotation) {}
native final function SetTranslation(vector Translation) {}
function UpdateAim () {}
function UpdateKeyframeIndex (float DeltaTime) {}
event Tick (float DeltaTime) {}
event Detached() {}
function Start(CarPreviewActor_TA InOwner, PrimitiveComponent InComponent) {}