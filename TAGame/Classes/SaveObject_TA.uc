class SaveObject_TA extends Object;

var int Version;
/*
var delegate<EventDirtied> __EventDirtied__Delegate;
var delegate<EventLoaded> __EventLoaded__Delegate;
var delegate<EventUnloaded> __EventUnloaded__Delegate;
var delegate<EventPropertyChangeFunc> EventPropertyChange;
*/
/*
delegate EventPropertyChangeFunc () {}
delegate EventUnloaded (SaveObject_TA SaveObject) {}
delegate EventLoaded (SaveObject_TA SaveObject) {}
delegate EventDirtied (SaveObject_TA SaveObject) {}
*/

//function GetVersionDelegates (array<ScriptDelegate> VersionDelegates) {}
function UpdateVersion () {}
function SaveObject_TA Reconcile(SaveObject_TA Remote) {}
function SetDirtyDelayed () {}
function SetDirty () {}
function OnUnload () {}
function Unload () {}
function OnLoad () {}
function Load () {}
function OnCreate () {}
function SaveObject_TA Create () {}