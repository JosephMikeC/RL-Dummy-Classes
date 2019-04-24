class EngineAudioREVComponent_TA extends EngineAudioBaseComponent_TA;

var() UEngineAudioProfileREV_TA Profile;
var() UAkRevPhysicsSimulation PhysicsSim;
var() export editinline UEngineAudioRevSimLimiter_TA RevLimiter;
var() export editinline UEngineAudioRevSimReverse_TA Reverse;
var() export editinline UEngineAudioRevSimVelocitySync_TA VelocitySync;
var() export editinline UEngineAudioRevSimBoost_TA Boost;
var() export editinline UEngineAudioRevSimBoostLevel_TA BoostLevel;
var() export editinline UEngineAudioRevSimResistance_TA Resistance;
var transient FAkRevSimFrame SimFrame;
var transient FAkRevSimUpdateParams CachedUpdateParams;

// Not sure about these definitions
/**
float __EngineAudioREVComponent_TA__InitFromAsset () {}
void PrintDebugInfo (DebugDrawer Drawer ) {}
void InitFromAsset (ProductAsset_EngineAudio_TA EngineAsset) {}
*/