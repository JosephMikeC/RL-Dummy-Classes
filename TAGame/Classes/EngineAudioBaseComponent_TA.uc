class EngineAudioBaseComponent_TA extends ActorComponent_X;

var() export editinline AkPlaySoundComponent EngineAudio;
var() export editinline AkPlaySoundComponent ExhaustAudio;
// TODO
//var() export editinline EngineAudioBlowoffComponent_TA BlowoffComponent;
// TODO
//var() export editinline WheelSpeedComponent_TA WheelSpeed;
var() export editinline ThrottleStateComponent_TA ThrottleComponent;

var() AkSoundCue GearChangeSound;
var export transient editinline MaxActorsGroup_TA MaxActorsGroup;
var transient Vehicle_TA Car;