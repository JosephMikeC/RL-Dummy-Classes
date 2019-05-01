class RPC_X extends Object;

var() const string Service;
var() const int Version;
var() const bool bRetry;
var() const bool bAllowBatching;
var() const bool bRequiresAuth;
var() const float ServiceFailRetryDelay;
var() const byte Priority;
var() const array<KeyValuePair> Headers;