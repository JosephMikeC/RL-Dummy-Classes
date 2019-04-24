class Mutator_Ball_TA extends Mutator_TA
	collapsecategories
	placeable;

var() float BallScale;
var() float BallBounciness;
var() float BallCarBounciness;
var() int TotalGameBalls;
/** Not sure of type, was `class ABall_TA*` */
var(setup) Ball_TA BallArchetype;
var() float BallGravityScale;
var() float BallSloMoDuration;         
var() float BallSloMoDilation;
var() float BallSloMoCooldown;
var() float BallSloMoRadius;
var() float BallSloMoDiffSpeed;
var() float BallMaxLinearSpeedScale;
var() float BallMaxAngularSpeed;
/** Not sure of type, was `struct FVector` */      
var() Vector BallMagnusCoefficient;
/** Not sure of type, was `class UPhysicalMaterial*` */       
var() PhysicalMaterialProperty_TA PhysMatOverride;

defaultproperties 
{
	BallScale = 1.0;
	BallBounciness = 1.0;
	BallCarBounciness = 1.0;
	TotalGameBalls = 1;
	BallGravityScale = 1.0;
	BallSloMoDuration = 0.0;
	BallSloMoDilation = 0.0;
	BallSloMoCooldown = 0.0;
	BallSloMoRadius = 0.0;
	BallSloMoDiffSpeed = 0.0;
	BallMaxLinearSpeedScale = 1.0;
	BallMaxAngularSpeed = 1.0;
	BallMagnusCoefficient = (X=0.0, Y=0.0, Z=0.0);
}

event BallSlomoComponent_TA GetSlomoComponent(Ball_TA Ball);
protected event MutateObject (Object O);
protected event Init(GameEvent_TA GameEvent);