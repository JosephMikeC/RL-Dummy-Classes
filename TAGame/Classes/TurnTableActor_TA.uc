class TurnTableActor_TA extends SkeletalMeshActor;

var() export editinline RotateComponent_TA RotateComponent;
var transient bool bIsSwapping;
var transient bool bInReveal;
var transient bool bCarLocked;
var() name SwapCarName;
var() name LiftItemName;
var() name LockCarName;
var() name TriggerRevealCompleteName;
var transient int DelayedPreviewSlot;
var() float TurntableRiseDelay;
// TODO
//var transient OnlineProduct_TA RevealProduct;

//var delegate<EventCarSwapComplete> __EventCarSwapComplete__Delegate;
//var delegate<EventRevealStarted> __EventRevealStarted__Delegate;
//var delegate<EventRevealComplete> __EventRevealComplete__Delegate;
