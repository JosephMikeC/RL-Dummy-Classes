class EventRecorderConfig_X extends OnlineConfig_X;

var() bool bEnabled;
var() bool bSeparatePlayerIDs;
var() bool bExcludePlayerIDs;
var() array<name> DisabledEvents;
var() class EventRecorderClass;