/*******************************************************************************
 * SimpleSpringComponent_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SimpleSpringComponent_TA extends Component
    native
    editinlinenew;

var() SimpleSpringSettings Spring;
var transient vector Displacement;
var transient vector NormalizedDisplacement;
var transient vector MassLocation;
var transient vector MassVelocity;
var transient bool bInitialized;

// Export USimpleSpringComponent_TA::execUpdatePrimitive(FFrame&, void* const)
native function UpdatePrimitive(float DeltaTime, PrimitiveComponent BaseComponent)
{
    //native.DeltaTime;
    //native.BaseComponent;        
}

// Export USimpleSpringComponent_TA::execUpdateSpring(FFrame&, void* const)
native function UpdateSpring(float DeltaTime, const out vector BaseLocation, const out Rotator BaseRotation)
{
         
}

function AddForce(vector Force)
{
 
}

final event DrawDebug(Rotator BaseRotation)
{
  
}