class BallSlomoComponent_TA extends ActorComponent_X;

var transient float BallSloMoRadius;
var transient float BallSloMoDuration;
var transient float BallSloMoDilation;
var transient float BallSloMoCooldown;
var transient float BallSloMoNext;
var transient float BallSloMoDiffSpeed;

defaultproperties 
{
	BallSloMoRadius = 0.0;
	BallSloMoDuration = 0.0;
	BallSloMoDilation = 0.0;
	BallSloMoCooldown = 0.0;
	BallSloMoNext = 0.0;
	BallSloMoDiffSpeed = 0.0;
}

protected event RestoreTimeDilation();
protected event eventTick (float DeltaTime);