class CarComponent_AirControl_Robin_TA extends CarComponent_AirControl_TA;

var() WaveParams RandomPitch;
var() WaveParams RandomYaw;
var() WaveParams RandomRoll;

protected event ApplyForces(float ActiveTime) {}