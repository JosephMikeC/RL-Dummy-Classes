class EngineAudioRevSimResistance_TA extends Component;

var() float Clutched;
var() float ZScale;
var() InterpCurveFloat SideSpeedCurve;
var transient float SideFriction;
var transient float ZFriction;
var transient float SideAngle;

function PrintDebugInfo(DebugDrawer Drawer) {}