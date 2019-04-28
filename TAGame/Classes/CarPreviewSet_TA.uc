class CarPreviewSet_TA extends Object;

var transient array<CarPreviewActor_TA> CarPreviewActors;
// TODO
//var transient OnlineGameParty_TA OnlineParty;
var transient bool bRemotePlayersHidden;
var const int MaxCars;
//var delegate<EventPreviewActorsChanged> __EventPreviewActorsChanged__Delegate;
//var delegate<EventPreviewActorSetProfile> __EventPreviewActorSetProfile__Delegate;
//var delegate<EventSwapFinished> __EventSwapFinished__Delegate;

function bool SetRemotePlayersHidden (bool bHidden) {}
function HandlePrimaryPlayerSet (PlayerController_Menu_TA PC) {}
function OnPreviewActorsChanged () {}
function HandlePartyMemberLoadoutRemoved () {}
function HandlePartyMemberLoadoutChange () {}
function HandleReceiveController (Player PlayerRef) {}
function HandlePlayerJoin (LocalPlayer P) {}
function UpdatePreview (int Index) {}
function UpdatePreviewAll () {}
function UpdatePreviewForPlayer (LocalPlayer P) {}
function CarPreviewActor_TA GetMainCarPreview (LocalPlayer P) {}
function CarPreviewActor_TA GetPlayerCarPreviewActor (LocalPlayer P) {}
function UpdateAllPreviews () {}
function InitPreviewActors () {}
function HandleCarPreviewActorAdded (GameShare_TA GameShare, CarPreviewActor_TA PreviewActor) {}
function Cleanup () {}
function Init () {}
event EventSwapFinished () {}
event EventPreviewActorSetProfile (CarPreviewActor_TA Car) {}
event EventPreviewActorsChanged (CarPreviewSet_TA G) {}