class Mutator_TA extends Object
	abstract
	native
	collapsecategories
	notplaceable;

var bool bRecordMetrics;

defaultproperties 
{
	bRecordMetrics = true;
}

protected event MutateObject(Object o) 
{
	return;
}

protected event Init(GameEvent_TA GameEvent) 
{
	return;
}