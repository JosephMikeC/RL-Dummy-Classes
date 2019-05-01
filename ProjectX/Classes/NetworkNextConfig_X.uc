class NetworkNextConfig_X extends OnlineConfig_X;

var() bool bEnableDriver;
var() bool bEnableRouting;
var() float RouteRequestTimeoutSeconds;
var() int KbpsUp;
var() int KbpsDown;
var() string MaxPricePerGig;
var() int AcceptableLatency;
var() int SteamUserRoutingChance;
var() array<string> SteamUserCountryCodes;
var() int ServerEnableChance;