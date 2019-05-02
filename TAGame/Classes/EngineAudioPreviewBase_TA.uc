class EngineAudioPreviewBase_TA extends Object;

var() float StartDelay;
var ProductAsset_EngineAudio_TA EngineAsset;
var export editinline AkParamGroup Ak;
var float Throttle;

function GotoPreviewState () {}
event GearChanged () {}
function Update (float DeltaTime) {}
function StopPreview () {}
function StartPreview () {}
function Init (ProductAsset_EngineAudio_TA InAsset, AkParamGroup InAkParams) {}