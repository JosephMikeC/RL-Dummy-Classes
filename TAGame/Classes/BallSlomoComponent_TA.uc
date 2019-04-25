class BallSlomoComponent_TA extends ActorComponent_X;

var transient float BallSloMoRadius;
var transient float BallSloMoDuration;
var transient float BallSloMoDilation;
var transient float BallSloMoCooldown;
var transient float BallSloMoNext;
var transient float BallSloMoDiffSpeed;

defaultproperties 
{
	BallSloMoRadius = 1.0;
	BallSloMoDuration = 1.0;
	BallSloMoDilation = 1.0;
	BallSloMoCooldown = 1.0;
	BallSloMoNext = 1.0;
	BallSloMoDiffSpeed = 1.0;
}

protected event RestoreTimeDilation();
protected event eventTick (float DeltaTime);