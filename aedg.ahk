#SingleInstance Force

; Script for Spelunky 2 Arena menuing for Admiral Eggroll's Doubles Gauntlet 2 (AEDG 2)

; !!!!!!!!!!!!!!! IMPORTANT !!!!!!!!!!!!!!!!!
; All scripts assume that no settings have been changed and you are at the 
; top of the Rules hovering over the Format section. Basically if you click
; the arena tab, don't do anything, and then run a hotkey, it will work
; 
; The default hotkeys are Ctrl+1, Ctrl+2, and Ctrl+3
; for rulesets 1, 2, and 3 respectively
; 
; The default PANIC BUTTON is Ctrl+Escape which stops
; any running hotkeys
; 
; The menu controls are set to work with my copy of Spelunky 2's control scheme
; If your control scheme is not the same as mine, then you will need to edit the
; MENU CONTROL VARIABLES below to match your control scheme



; RULESET HOTKEY VARIABLES
; If you don't like my hotkeys, then change them:
; https://www.autohotkey.com/docs/v2/Hotkeys.htm#Symbols
; Ruleset 1 (default is Ctrl+1)
R1_key:= "^1"
; Ruleset 2 (default is Ctrl+2)
R2_key:= "^2"
; Ruleset 3 (default is Ctrl+3)
R3_key:= "^3"
; Panic button in case a script is running when you don't want it to
; Press the key combination below to stop all running scripts
; (default is Ctrl+Escape)
PANIC_key:="^Escape"

; MENU CONTROL VARIABLES
; If you're having trouble finding the keys:
; https://www.autohotkey.com/docs/v2/KeyList.htm#keyboard

; Up menu control (default is W)
U:="w"

; Left menu control (default is A)
L:="a"

; Down menu control (default is S)
D:="s"

; Right menu control (default is D)
R:="d"

; Back menu control (default is Escape)
BACK:="Escape"

; Confirm menu control (default is Space)
CONFIRM:="Space"



; TIMING CONTROLS:
; The number of milliseconds to wait before releasing a key
; Increase this if spelunky's menu isn't recognizing that
; a key is being inputted
MID_KEYPRESS_DELAY:= 35

; The number of milliseconds to wait before repeating a key
; Increase this if repeated keypresses aren't being recognized
AFTER_REPEAT_KEYPRESS_DELAY:= 50 

; The number of milliseconds to wait after a key has been pressed
; This is in addition to the time set for AFTER_REPEAT_KEYPRESS_DELAY
; Increase this if increasing the other two delays doesn't fix any timing issues
AFTER_KEYPRESS_DELAY:= 60

; Number of milliseconds to wait before running the macro
START_DELAY:= 1000

; Number of milliseconds to wait when transitioning between
; level select and item select menus
; Increase if wrong levels/items selected
MENU_DELAY:= 1500


; Begin actual code stuff

right(num:=1) {
	Loop num {
		Send "{" R " down}"
		Sleep MID_KEYPRESS_DELAY
		Send "{" R " up}"
		Sleep AFTER_REPEAT_KEYPRESS_DELAY
	}
	Sleep AFTER_KEYPRESS_DELAY
}

up(num:=1) {
	Loop num {
		Send "{" U " down}"
		Sleep MID_KEYPRESS_DELAY
		Send "{" U " up}"
		Sleep AFTER_REPEAT_KEYPRESS_DELAY
	}
	Sleep AFTER_KEYPRESS_DELAY
}
left(num:=1) {
	Loop num {
		Send "{" L " down}"
		Sleep MID_KEYPRESS_DELAY
		Send "{" L " up}"
		Sleep AFTER_REPEAT_KEYPRESS_DELAY
	}
	Sleep AFTER_KEYPRESS_DELAY
}
down(num:=1) {
	Loop num {
		Send "{" D " down}"
		Sleep MID_KEYPRESS_DELAY
		Send "{" D " up}"
		Sleep AFTER_REPEAT_KEYPRESS_DELAY
	}
	Sleep AFTER_KEYPRESS_DELAY
}
enter(num:=1) {
	Loop num {
		Send "{" CONFIRM " down}"
		Sleep MID_KEYPRESS_DELAY
		Send "{" CONFIRM " up}"
		Sleep AFTER_REPEAT_KEYPRESS_DELAY
	}
	Sleep AFTER_KEYPRESS_DELAY
}
esc(num:=1) {
	Loop num {
		Send "{" BACK " down}"
		Sleep MID_KEYPRESS_DELAY
		Send "{" BACK " up}"
		Sleep AFTER_REPEAT_KEYPRESS_DELAY
	}
	Sleep AFTER_KEYPRESS_DELAY
}

Hotkey(R1_key,R1)
Hotkey(R2_key,R2)
Hotkey(R3_key,R3)
Hotkey(PANIC_key,PANIC)


R1(_) {
	Sleep START_DELAY
	left() ; hold the idol
	down(2) ; skip to timer
	right(6) ; increase it to 5 mins
	down(3) ; skip to time to win
	right() ; set it to 30
	down() ; go to health
	right(5) ; set it to 9
	down() ; go to bombs
	left(3) ; set it to 1
	down() ; go to ropes
	left(3) ; set it to 1
	down() ; go to stun time
	left() ; set it to 0.25
	down() ; go to whip damage
	right() ; set it to 2
	down(2) ; skip to breath cooldown
	left(4) ; set it to 2
	down(3) ; skip to arena select
	right() ; set to take turns
	down(2) ; skip to dark level chance
	left() ; 0% dark level
	up() ; go back to arena select
	enter() ; enter arena select

	sleep MENU_DELAY
	up() ; go to select none
	enter() ; click it
	down() ; reset cursor position
	right(2) ; select dwelling 3
	enter()
	right() ; dwellings 4
	enter()
	down() ; jungle 9
	enter()
	down() ; volcana 14
	enter()
	right() ; volcana 15
	enter()
	left() ; temple 24
	down(2)
	enter()
	esc()
	sleep MENU_DELAY

	down(3) ; goto items
	enter()
	sleep MENU_DELAY

	enter() ; disable all items
	up() ;enable cape
	enter()
	down(2) ; enable cape
	enter()
	right(2) ; enable bomb
	enter()
	right(2) ; enable rope
	enter()
	down() ; hold webgun
	enter(3)
	left() ; enable crossbow
	enter()
	left() ; enable pick
	enter()
	down() ; enable mine
	enter()
	right() ; bear trap
	enter()
	right() ; paste equip
	enter(3)
	right(2) ; mitt
	enter()
	right() ; spikes equip
	enter(3)
	right() ; springs
	enter()
	up(2) ; jelly
	enter()
	down() ; wood shield
	right() 
	enter()
	sleep AFTER_KEYPRESS_DELAY
	esc()
}

R2(_) {
	sleep START_DELAY
	down(2) ; skip to time
	left() ; set to 1:30
	down() ; time end
	left() ; ghost
	down(3) ; goto health
	right(4) ; health 8
	down() ; goto bombs
	left(3) ; set to 1
	down() ; goto ropes
	left(3) ; set to 1
	down() ; goto stun time
	left() ; set to 0.25
	down(2) ; skip to final ghost
	left() ; ghost off
	down() ; goto breath cooldown
	left(4) ; set to 2
	down(3) ; skip to arena select
	left()  ; loser picks
	down(2) ; skip to dark
	left() ; set to none
	up()
	enter() ; enter arena menu
	sleep MENU_DELAY

	up() ; goto none
	enter() ; click none
	down(2) ; goto jungle 6
	enter() ; click jungle 6
	right() ; jungle 7
	enter()
	up() ; dwellings 2
	enter()
	right() ; dwelling 3
	enter()
	right() ; dwelling 4
	enter()
	down()
	right() ; jungle 10
	enter()
	right()
	down(2) ; tidepool 16
	enter()
	down() ; temple 21
	enter()
	right() ; temple 22
	enter()
	down(2) ; babylon 32
	enter()
	esc()
	sleep MENU_DELAY

	down(3) ; go to items
	enter()
	sleep MENU_DELAY

	enter() ; none items
	up() ; cape
	enter()
	down(2) ; rock
	enter()
	right() ; pot
	enter()
	right() ; bomb
	enter()
	down(2) ; mine
	enter()
	right() ; bear trap
	enter()
	up() ; crossbow
	enter()
	up()
	right() ; rope
	enter()
	right()
	down(2) ; climbers
	enter(3) ; equip
	up(2)
	right(2) ; turkey
	enter()
	down()
	right(2) ; wood shield
	enter()
	sleep AFTER_KEYPRESS_DELAY
	esc()
}

R3(_) {
	sleep 500
	down(2) ; goto time
	left(3) ; set to 30 seconds
	down() ; goto time ending
	right(2) ; set death mist
	down(2) ; skip to lives
	left() ; set to 1
	down() ; goto health
	left(3) ; set to 1
	down() ; goto bombs
	left(4) ; set to 0
	down() ; goto ropes
	left(4) ; set to 0
	down() ; goto stun
	left() ; stun 0.25
	down(2) ; skip to final ghost
	left() ; turn off
	down(3) ; skip to punish ball
	right() ; turn on
	down(3) ; skip to dark level
	right() ; 50%
	down() ; crate frequency
	left() ; set to low
	up(2)
	enter() ; enter arena select
	sleep MENU_DELAY

	up() ; goto none
	enter()
	down() 
	right() ; dwelling 2
	enter()
	right() ; dwelling 3
	enter()
	right() ; dwelling 4
	enter() 
	right(2)
	down(3) ; tidepool 16
	enter()
	down() ; temple 21
	enter()
	down(3) ; sunken 36
	enter()
	right()
	up() ; babylon 32
	enter()
	right(2)
	up() ; ice 29
	enter()
	up() ; temple 24
	enter()
	sleep AFTER_KEYPRESS_DELAY
	esc()
	sleep MENU_DELAY

	down(3)
	enter()
	sleep MENU_DELAY ; enter items

	enter() ; none items
	down(3) ; shield
	enter()
	right(6) ; mitt
	enter(3) ; equip
	up(2) ; 24 bag
	enter()
	up(2)
	right() ; scepter
	enter()
	sleep AFTER_KEYPRESS_DELAY
	esc()
}

PANIC(_) {
	Loop 0xFF {
		IF GetKeyState(Key:=Format("VK{:X}",A_Index))
			SendInput "{" Key " up}"
	}
	Reload
}