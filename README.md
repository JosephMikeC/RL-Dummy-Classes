# Rocket League Dummy Classes v3
This repository exists to create a method for people wishing to mod the game Rocket League.
The classes contained within this repository come from a number of packages that are used/created by Psyonix but are not included in our normal version of UDK.

## Notes about dummy class creation
- Defining delegate class properties causes parsing to hang on script compilation by UDK.
- All function definitions have been deleted as they are replaced by the rocket league package classes on map load.
- All class properties that aren't directly editable have been deleted as we can't use them so they end up as bloat.
- Any class properties that have been commented with '`// TODO`' above have not had the class types made for them.
- Custom classes cannot be created as Rocket League would not know where to look when finding them (untested but theoretically sound).

## How the classes are applied in-game
These classes provide UDK with a means to reference the classes already contained within the packages in the `CookedPCConsole` folder.  
When a map is saved onto the disk, references to classes are saved within it - but not the classes themselves.  
This includes the properties that have been assigned to the object in your scene.
When you open the map in Rocket League, it searches for the classes used and overrides any properties in those classes with those set inside the map.  
Due to this, only variables that are editable in the editor will have their states applied when the map is opened.  

## How to add new classes
[Here](https://wiki.beyondunreal.com/Types) is a reference to `type` syntax within UnrealScript. [BeyondUnreal](https://wiki.beyondunreal.com/) is a huge time saver and a great information repository.  
In order to add a new class, you need a reference that contains at least the class definition (Name and extension).  
NOTE: A correct `extension` type is not technically required (Rocket League simply receives the class name) but without it you will be missing class properties from the correct extended class.
If there are any class properties, they need to have the correct type. There have been no tests performed on whether or not the access modifiers (`const`, `export`, etc.) are required.
If your reference is out of date (meaning Psyonix has changed the property or class name internally), it will not work. This is because the properties reference those that exist within the baked classes of Rocket League and will not know how to apply the properties (An example of this was when the workshop maps stopped spawning players in due to a change in a class name).  
You can test your classes are syntactically correct by compiling them in UDK (which should happen automatically if you add them to the `<UDK-Installation-dir>/<project>/Development/Src/<package_name>/Classes` folder and restart UDK).  
In order to test correct functionality, you will need to manually test results in-game.  

### Class definition template
Classes will end up looking something like this (commented for explanations):
```javascript
// The definition of the class. 
// This is what is seen in the editor when you attempt to add an actor.
// class <NAME> extends <EXTENSION_TYPE>
// OR (for interfaces)
// interface <INTERFACE> implements <INTERFACE_TYPE>
class PlayerHit_TA extends Hit_TA
  native;

// Class property defintion.
//var() <TYPE> <NAME>;
var() vector Direction;
var() Ball_TA Ball;

// Property defaults definition.
// Not all properties require defaults.
defaultproperties {
    Direction=(X=5,Y=10,Z=0);
    Ball_TA=none;
}
```
## Updating limitations
Updating these classes requires that the [UE Library](https://github.com/EliotVU/Unreal-Library) DLL be updated so that UE Explorer doesn't crash when opening the file. This is a reasonably intensive task which only a few people have done. Due to this, updates to the classes cannot be presumed, but requests for specific classes may be possible.

## Pull requests
If you wish to contribute, create a pull request with your contribution and it will be assessed. Any comments made should be addressed and the pull request updated.  
Please see the [trello](https://trello.com/b/nl6TB2hk/rl-dummy-classes) for information on our workflow.  

## Credit
This probably would never have been possible without the user of [Unreal Engine Explorer](https://eliotvu.com/portfolio/view/21/ue-explorer).  
Original classes were ripped by [Tim Unrue using UE Explorer](https://github.com/timunrue/RL-Dummy-Classes-v2).  
Class updating was performed by Wejrox (JimJoms), LiveDimensions and Digby Deathstar.  
The [UE Library](https://github.com/EliotVU/Unreal-Library) DLL was updated by Martinn.  