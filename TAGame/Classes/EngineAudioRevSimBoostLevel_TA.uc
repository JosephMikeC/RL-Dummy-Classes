class EngineAudioRevSimBoostLevel_TA extends Component;

var() float ActivatedInterpTime;
var() float InactiveInterpTime;
var() float InterpExp;
var transient float ActivatedSpeedSq;
var transient float InterpTime;
var transient float InterpValue;
var transient float InterpTimeElapsed;
var transient float TargetValue;

function PrintDebugInfo (DebugDrawer Drawer) {}