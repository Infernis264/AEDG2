# AEDG2

## Installation
Visit https://www.autohotkey.com/ and install the ***v2.0*** version of AutoHotKey (AHK)

## Which script do I download?
If you're running with Spelunky 2's default keyboard controls, then go with `aedg-default.ahk`. Otherwise, you can use the script with my control scheme (WASD and Space) at `aedg.ahk`. If you have a custom control scheme, download either file and change the `MENU CONTROL VARIABLES` to your keyboard controls for Spelunky. 

## Running the script
Once you have AHK installed, double click one of the `.ahk` files to start the script and enable the hotkeys.

## Oh no I've run the script how do I make it stop
There is a default built-in panic button bound to `Ctrl+Escape` that you can press to terminate any running hotkey. If you rebind this hotkey, make sure to remember what it is bound to so you can stop a running script in case it gets triggered in an inopportune place.

## Default hotkeys
All hotkeys assume that you have just entered the arena menu and not moved the selection cursor or changed any values. If you have changed any values, you can still run the hotkey from the top of the arena menu, but it might not select the right options for the ruleset you choose.
- `Ctrl+1` - Input the Round 1 Ruleset
- `Ctrl+2` - Input the Round 2 Ruleset
- `Ctrl+3` - Input the Round 3 Ruleset
- `Ctrl+Escape` - Panic button; stop all running hotkeys

## Changing the hotkeys
At the top of the file there are variables for changing which hotkeys perform which actions. You can refer to the hotkeys reference [here](https://www.autohotkey.com/docs/v2/Hotkeys.htm#Symbols). 
