class BallIndicator_TA extends StaticMeshComponent_TA;
var() float MinTranslationX;
var() float MaxTranslationX;
var() float MinDistance;
var() float MaxDistance;
var() float ZTranslationOffset;
var transient Actor Ball;

function HandleBallRemoved (BallCamTarget_TA BallObject) {}
function HandleBallAdded (BallCamTarget_TA BallObject) {}
event OnDetached () {}
event OnAttached () {}