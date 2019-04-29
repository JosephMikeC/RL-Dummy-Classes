class EngineAudioRevSimLimiter_TA extends Component;

var() float LimitTime;
var() float SideSpeedThresh;
var() float DecelScale;
var() float AirMaxThrottleTime;
var transient float TimeRemaining;
var transient float TimeActiveInAir;

function PrintDebugInfo (DebugDrawer Drawer) {}