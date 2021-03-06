/*******************************************************************************
 * CrowdActorSettings_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class CrowdActorSettings_TA extends Object
editinlinenew
    native;

/** Rate at which NoiseLevel rises to TargetNoiseLevel */
var() float NoiseRiseRate;
/** Rate at which NoiseLevel falls to zero */
var() float NoiseFallRate;
/** Min and Max values to randomly fluctuate the base noise level to */
//var() RandomRange IdleNoise;
/** How often we pick a new idle noise level */
//var() RandomRange IdleNoiseDuration;
/** Noise to add at the start of countdown */
var() editinline CrowdNoiseModifier_TA CountdownStartNoise;
/** Noise to add on 'Go!' */
var() editinline CrowdNoiseModifier_TA CountdownEndNoise;
/** Noise to add when we start overtime */
var() editinline CrowdNoiseModifier_TA OvertimeStartNoise;
/** Noise to add when we are almost out of time */
var() editinline CrowdNoiseModifier_TA TimeAlmostOutNoise;
/** Noise modifiers for each stat event */
//var() editfixedsize array<StatCrowdNoise> StatNoises;
/** Random chants */
//var() AkSoundCue RandomChantsSound;
/** Random delay between chants */
//var() RandomRange RandomChantsDelay;
/** Check this to update the StatNoises array with new stats */
var() editoronly bool UpdateStatNoises;
/** Increase base crowd noise level as the ball gets closer to the goal (input is distance to goal) */
var() InterpCurveFloat BallGoalDistanceNoiseCurve;
/** Increase base crowd noise level when a car hits the ball (input is relative speed of hit) */
//var() array<BallHitCrowdNoise> BallHitNoises;
/** Minimum time between ball hit noises (unless a harder hit overrides) */
var() float BallHitNoiseDelay;
/** count down sound list */
//var() array<AkSoundCue> CountDownSoundList;
/** Crowd stinger sounds */
//var() AkSoundCue CrowdStingerWin;
/** Crowd stinger sounds */
//var() AkSoundCue CrowdStingerLose;
/** Crowd stinger sounds */
//var() AkSoundCue CrowdStingerForfeit;
/** Played when overtime starts */
//var() AkSoundCue CrowdStartOverTimeSound;
/** Played after match ended */
//var() AkSoundCue MatchEndedEncore;
/** Time to wait after match ended before playing Encore sound */
var() float MatchEndedEncoreDelay;
/** Defense chant settings */
//var() CrowdDefenseSettings DefenseChant;