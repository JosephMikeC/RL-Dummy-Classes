class EngineAudioBaseComponent_TA extends ActorComponent_X;

// TODO
//var() export editinline AkPlaySoundComponent EngineAudio;
//var() export editinline AkPlaySoundComponent ExhaustAudio;
// TODO
//var() export editinline EngineAudioBlowoffComponent_TA BlowoffComponent;
// TODO
//var() export editinline WheelSpeedComponent_TA WheelSpeed;
var() export editinline ThrottleStateComponent_TA ThrottleComponent;
// TODO
//var() AkSoundCue GearChangeSound;
var export transient editinline MaxActorsGroup_TA MaxActorsGroup;
var transient Vehicle_TA Car;

// Don't have the correct types, possibly are references to Event functions for this class?
/**
var ScriptDelegate __GetNormalizedRpmDelegate__Delegate;
*/

// Not sure about these definitions
/**
void PrintDebugInfo (DebugDrawer Drawer) {}
void eventGearChanged () {}
void HandleSplitScreenTypeChanged (GameViewportClient_TA ViewportClient) {}
void HandleDisabled () {}
void HandleEnabled () {}
void InitFromAsset (ProductAsset_EngineAudio_TA EngineAsset) {}
void eventDetached () {}
void eventAttached () {}
float GetNormalizedRpmDelegate () {}
*/