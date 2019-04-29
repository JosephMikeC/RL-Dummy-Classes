class EngineAudioREVComponent_TA extends EngineAudioBaseComponent_TA;

var() EngineAudioProfileREV_TA Profile;
// TODO
//var() AkRevPhysicsSimulation PhysicsSim;
var() export editinline EngineAudioRevSimLimiter_TA RevLimiter;
var() export editinline EngineAudioRevSimReverse_TA Reverse;
var() export editinline EngineAudioRevSimVelocitySync_TA VelocitySync;
var() export editinline EngineAudioRevSimBoost_TA Boost;
var() export editinline EngineAudioRevSimBoostLevel_TA BoostLevel;
var() export editinline EngineAudioRevSimResistance_TA Resistance;
// TODO
//var transient AkRevSimFrame SimFrame;
//var transient AkRevSimUpdateParams CachedUpdateParams;

// Not sure about these definitions.
/**
float __EngineAudioREVComponent_TA__InitFromAsset () {}
void PrintDebugInfo (DebugDrawer Drawer ) {}
void InitFromAsset (ProductAsset_EngineAudio_TA EngineAsset) {}
*/