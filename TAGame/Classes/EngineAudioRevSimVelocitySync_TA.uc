class EngineAudioRevSimVelocitySync_TA extends Component;

var() float NoThrottleTime;
var transient float NoThrottleTimeElapsed;
var() float RealToSimScale;
var() float InterpSpeed;
var() float InterpTime;
var transient float InterpTimeLeft;
var() float FirstGearThrottleThreshold;

function PrintDebugInfo(DebugDrawer Drawer) {}