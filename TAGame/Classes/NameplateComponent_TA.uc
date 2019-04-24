class NameplateComponent_TA extends ActorComponent_X;

var() string PlayerName;
var() int Team;
var() bool bIsLocalPlayer;
var() bool bIsReady;
var() bool bLocalizeName;
var() int SpectatorShortcut;

// Not sure about these definitions
/**
int GetSpectatorShortcut () {}
bool IsReady () {}
bool IsLocalPlayer (PRI_TA LocalPRI) {}
int GetPlayerTeam () {}
string GetPlayerName () {}
PRI_TA GetPRI () {}
void SetPlayerName (string InPlayerName) {}
void eventDetached () {}
void eventAttached () {}
event EventPlayerNameSet (NameplateComponent_TA NameplateComponent) {}
*/