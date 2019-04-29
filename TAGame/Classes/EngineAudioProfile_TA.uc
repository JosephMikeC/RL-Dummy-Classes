class EngineAudioProfile_TA extends EngineAudioProfileBase_TA;

var() array<AudioGear> Gears;
var() float GearSwitchTime;
var() float RPMAccelStart;
var() float RPMAccelEnd;
var() float RPMAccelClutched;
var() float RPMDecelClutched;
var() float RPMMaxClutched;
var() float RPMAccelFactor;
var() float RPMDecelFactor;
var() float RPMAccelBoostStart;
var() float RPMAccelBoostEnd;
var() float RPMShiftUpBoost;
var() float RPMMaxLoad;
var() float EngineLoadSmoothFactor;
var() float AirMaxThrottleTime;
var() float RevLimitRPM;
var() float RevLimitRPMDecel;