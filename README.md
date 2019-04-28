# Rocket League Fummy Classes v3
This repository exists to create a method for people wishing to mod the game Rocket League.
The classes contained within this repository come from a number of packages that are used/created by Psyonix but are not included in our normal version of UDK.

## Notes about dummy class creation
- Defining delegate class properties causes parsing to hang on script compilation by UDK.
- All function contents have been deleted as they are wiped on map load.
- All class properties that aren't directly editable have been deleted as we can't use them so they end up as bloat.
- Any class properties that have been commented with '`// TODO`' above have not had the class types made for them.
- Custom classes cannot (?) be created as Rocket League would not know where to look when finding them (untested).

## How the classes are applied in-game
These classes provide UDK with a means to reference the classes already contained within the packages in the `CookedPCConsole` folder.  
When a map is saved onto the disk, references to classes are saved within it - but not the classes themselves.  
This means that when you open the map in Rocket League, it searches for the classes used and overrides any properties in those classes with those set inside the map.  
Due to this, only variables that are editable in the editor will have their states applied when the map is opened.  

## How to add new classes
In order to add a new class, you need a reference that contains at least the class definition (Name and extension).  
If there are any class properties, they need to have the correct access modifiers and definition.  
If your reference is out of date, it will not work. This is because the properties reference those that exist within the baked classes of Rocket League and will not know how to apply the properties (An example of this was when the workshop maps stopped spawning players in due to a change in a class name)  
You can test your classes are syntactically correct by compiling them in UDK (which should happen automatically if you add them to the `Development/Src/<package_name>/Classes` folder and restart UDK).  
In order to test correct functionality you will need to manually test results in-game.  

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