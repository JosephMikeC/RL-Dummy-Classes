class CarTrajectoryComponent_TA extends ActorComponent_X;

var transient bool bEnabled;
var array<Vector> Points;
var const int TotalDrawPoints;
var const int FramesBetweenPoints;
var transient float LastAngle;
var transient Rotator VelocityRotator;
var transient Vector CurrentVelocity;
var transient Vector LastRotateAxis;
var transient Vector LastVelocity;

// Not sure about these definitions
float GetPointInterpSpeed(int PointIndex) {}
void eventTick(float DeltaTime) {}
void eventAttached() {}
event SetEnabled(bool bEnable) {}