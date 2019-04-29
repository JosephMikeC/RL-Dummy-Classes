class EngineShare_TA extends EngineShare_X;

var() const bool bEnableClientPrediction;
var const transient bool bClientPhysicsUpdate;
var transient bool bDisableClientCorrections;
var bool bDebugClientCorrections;
var bool bForceClientCorrection;
var transient ReplayManager_TA ReplayManager;
// TODO
//var transient AdManager_TA AdManager;
// TODO
//var export transient editinline OnlineProductAssetStore_TA OnlineProductStore;
var() float PhysicsFramerate;
var() const int MaxPhysicsSubsteps;
var() int MaxUploadedClientFrames;
var const transient int MaxClientReplayFrames;
var const transient int PhysicsFrame;
var const transient float RenderAlpha;
var const transient int ReplicatedPhysicsFrame;
var const transient int DirtyPhysicsFrame;
var transient int ForceCorrectionFrames;
var const transient array<ITickNotify_TA> TickNotifies;
var const transient int TickNotifyIndex;
var string ShellArchetypePath;
// TODO
//var transient SystemSettingsManager_TA SystemSettingsManager;
var const transient float LastBugReportTime;
var float DebugClientCorrectionStartTime;
var int DebugClientCorrectionCount;
// TODO
//var export editinline StatGraphSystem_TA StatGraphs;
// TODO
//var PhysicsConfig_TA PhysicsConfig;
// TODO
//var array<NetworkInputBuffer_TA> InputBuffers;
var float LastPhysicsDeltaTimeScale;

// Delegates crash compilation.
//var delegate<EventPreAsyncTask> __EventPreAsyncTick__Delegate;
//delegate EventPreAsyncTick (float DeltaTime) {}

function PrintDebugInfo (DebugDrawer Drawer) {}
function DebugClientCorrections () {}
function float GetBulletFixedDeltaTime () {}
function RunPhysicsStep (int BulletSceneIndex, float DeltaTime) {}
function DrawBuildInfo (Canvas C) {}
function UpdateReplicatedPhysicsFrame (int ServerFrame) {}
function DebugDedicatedServer (float ForHowLong) {}
function float GetPhysicsTime () {}
function SetTickNotify (ITickNotify_TA Obj, bool bNotify) {}
//function Object LoadStandaloneObject (Class ExpectedClass, struct FName& ObjectName, int LoadFlags) {}
function InitOnlineGame (OnlineSubsystem NewOnlineSubsystem) {}
event RecordAppStart () {}
event Init () {}
function string GetVersionString () {}