class ThrottleShakeComponent_TA extends ActorComponent_X;

var() AkSoundCue EngageSound;
var() AkSoundCue ReleaseSound;
var transient Vehicly_TA Car;
var transient float PrevThrottle;
var transient bool bPrevCarAccelerating;
var transient bool bPrevCarIdling;
var transient bool bCanThrottleEngage;

function StopThrottleSounds() {}
event Tick(float DeltaTime) {}
event Detached () {}
event Attached() {}