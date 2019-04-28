class PlayerItemDispenser_TA extends Object;

var() float ItemGiveRate;
var() array<SpecialPickup_TA> Items;
var() float PickWeightMultiplier;
var() bool bResetWeightsOnGoal;
var() bool bResetTimerOnDemolish;
var() bool bUseItemPool;
var() bool bWaitingForNextRound;
var transient bool bGiven;
var transient float NextItemTime;
var transient PRI_TA PRI;
var transient array<SpecialPickup_TA> ItemPool;
var transient SpecialPickup_TA DemolishedItem;
var transient SpecialPickup_TA LastPickup;

event GiveItem(SpecialPickup_TA OverrideItem) {}