class WordFilterConfig_X extends OnlineConfig_X;

var() bool bSanitizeEntirePhrase;
var() bool PsyNetFilterEnabled;
var() int NameHistoryCacheLength;
var() array<byte> IgnoreFilterList;
var() array<byte> PlatformFilterList;
var() float PsyNetWordFilterBatchDelay;
var() int PsyNetWordFilterBatchMaxSize;