;#ADD004BASIC PIEs#
; _________________________________________
;| Alex by varo_hades                      |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
command.buffer.time = 1



;====================<SINGLE BUTTON>====================

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1



;==================<HOLD DIRECTION>==================

[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1


;====================<HOLD BUTTON>====================

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1



;====================<DIRECTION>====================

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1



;====================<RELEASE DIR>====================

[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1



;====================<RELEASE BUTTON>====================

[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1



;====================<SUPER MOTIONS>====================

[Command]
name = "StunGunHeadbutt"
command = ~D, DF, F, D, DF, F, a
time = 32

[Command]
name = "StunGunHeadbutt"
command = ~D, DF, F, D, DF, F, b
time = 32

[Command]
name = "StunGunHeadbutt"
command = ~D, DF, F, D, DF, F, c
time = 32

[Command]
name = "StunGunHeadbutt"
command = ~D, DF, F, D, DF, F, ~a
time = 32

[Command]
name = "StunGunHeadbutt"
command = ~D, DF, F, D, DF, F, ~b
time = 32

[Command]
name = "StunGunHeadbutt"
command = ~D, DF, F, D, DF, F, ~c
time = 32

[Command]
name = "MAXStunGunHeadbutt"
command = ~D, DF, F, D, DF, F, a+b
time = 32

[Command]
name = "MAXStunGunHeadbuttt"
command = ~D, DF, F, D, DF, F, a+c
time = 32

[Command]
name = "MAXStunGunHeadbutt"
command = ~D, DF, F, D, DF, F, b+c
time = 32

[Command]
name = "BoomerangRaid"
command = ~D, DF, F, D, DF, F, x
time = 32

[Command]
name = "BoomerangRaid"
command = ~D, DF, F, D, DF, F, y
time = 32

[Command]
name = "BoomerangRaid"
command = ~D, DF, F, D, DF, F, z
time = 32

[Command]
name = "BoomerangRaid"
command = ~D, DF, F, D, DF, F, ~x
time = 32

[Command]
name = "BoomerangRaid"
command = ~D, DF, F, D, DF, F, ~y
time = 32

[Command]
name = "BoomerangRaid"
command = ~D, DF, F, D, DF, F, ~z
time = 32

[Command]
name = "MAXBoomerangRaid"
command = ~D, DF, F, D, DF, F, x+y
time = 32

[Command]
name = "MAXBoomerangRaid"
command = ~D, DF, F, D, DF, F, y+z
time = 32

[Command]
name = "MAXBoomerangRaid"
command = ~D, DF, F, D, DF, F, x+z
time = 32

[Command]
name = "BackdropBomb"
command = ~$B, $D, $F, $U, x
time = 32
[Command]
name = "BackdropBomb"
command = ~$D, $F, $U, $B, x
time = 32
[Command]
name = "BackdropBomb"
command = ~$F, $U, $B, $D, x
time = 32
[Command]
name = "BackdropBomb"
command = ~$U, $B, $D, $F, x
time = 32
[Command]
name = "BackdropBomb"
command = ~$F, $D, $B, $U, x
time = 32
[Command]
name = "BackdropBomb"
command = ~$D, $B, $U, $F, x
time = 32
[Command]
name = "BackdropBomb"
command = ~$B, $U, $F, $D, x
time = 32
[Command]
name = "BackdropBomb"
command = ~$U, $F, $D, $B, x
time = 32

[Command]
name = "BackdropBomb"
command = ~$B, $D, $F, $U, y
time = 32
[Command]
name = "BackdropBomb"
command = ~$D, $F, $U, $B, y
time = 32
[Command]
name = "BackdropBomb"
command = ~$F, $U, $B, $D, y
time = 32
[Command]
name = "BackdropBomb"
command = ~$U, $B, $D, $F, y
time = 32
[Command]
name = "BackdropBomb"
command = ~$F, $D, $B, $U, y
time = 32
[Command]
name = "BackdropBomb"
command = ~$D, $B, $U, $F, y
time = 32
[Command]
name = "BackdropBomb"
command = ~$B, $U, $F, $D, y
time = 32
[Command]
name = "BackdropBomb"
command = ~$U, $F, $D, $B, y
time = 32

[Command]
name = "BackdropBomb"
command = ~$B, $D, $F, $U, z
time = 32
[Command]
name = "BackdropBomb"
command = ~$D, $F, $U, $B, z
time = 32
[Command]
name = "BackdropBomb"
command = ~$F, $U, $B, $D, z
time = 32
[Command]
name = "BackdropBomb"
command = ~$U, $B, $D, $F, z
time = 32
[Command]
name = "BackdropBomb"
command = ~$F, $D, $B, $U, z
time = 32
[Command]
name = "BackdropBomb"
command = ~$D, $B, $U, $F, z
time = 32
[Command]
name = "BackdropBomb"
command = ~$B, $U, $F, $D, z
time = 32
[Command]
name = "BackdropBomb"
command = ~$U, $F, $D, $B, z
time = 32

[Command]
name = "BackdropBomb"
command = ~$B, $D, $F, $U, ~x
time = 32
[Command]
name = "BackdropBomb"
command = ~$D, $F, $U, $B, ~x
time = 32
[Command]
name = "BackdropBomb"
command = ~$F, $U, $B, $D, ~x
time = 32
[Command]
name = "BackdropBomb"
command = ~$U, $B, $D, $F, ~x
time = 32
[Command]
name = "BackdropBomb"
command = ~$F, $D, $B, $U, ~x
time = 32
[Command]
name = "BackdropBomb"
command = ~$D, $B, $U, $F, ~x
time = 32
[Command]
name = "BackdropBomb"
command = ~$B, $U, $F, $D, ~x
time = 32
[Command]
name = "BackdropBomb"
command = ~$U, $F, $D, $B, ~x
time = 32

[Command]
name = "BackdropBomb"
command = ~$B, $D, $F, $U, ~y
time = 32
[Command]
name = "BackdropBomb"
command = ~$D, $F, $U, $B, ~y
time = 32
[Command]
name = "BackdropBomb"
command = ~$F, $U, $B, $D, ~y
time = 32
[Command]
name = "BackdropBomb"
command = ~$U, $B, $D, $F, ~y
time = 32
[Command]
name = "BackdropBomb"
command = ~$F, $D, $B, $U, ~y
time = 32
[Command]
name = "BackdropBomb"
command = ~$D, $B, $U, $F, ~y
time = 32
[Command]
name = "BackdropBomb"
command = ~$B, $U, $F, $D, ~y
time = 32
[Command]
name = "BackdropBomb"
command = ~$U, $F, $D, $B, ~y
time = 32

[Command]
name = "BackdropBomb"
command = ~$B, $D, $F, $U, ~z
time = 32
[Command]
name = "BackdropBomb"
command = ~$D, $F, $U, $B, ~z
time = 32
[Command]
name = "BackdropBomb"
command = ~$F, $U, $B, $D, ~z
time = 32
[Command]
name = "BackdropBomb"
command = ~$U, $B, $D, $F, ~z
time = 32
[Command]
name = "BackdropBomb"
command = ~$F, $D, $B, $U, ~z
time = 32
[Command]
name = "BackdropBomb"
command = ~$D, $B, $U, $F, ~z
time = 32
[Command]
name = "BackdropBomb"
command = ~$B, $U, $F, $D, ~z
time = 32
[Command]
name = "BackdropBomb"
command = ~$U, $F, $D, $B, ~z
time = 32

[Command]
name = "MAXBackdropBomb"
command = ~$B, $D, $F, $U, x+y
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$D, $F, $U, $B, x+y
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$F, $U, $B, $D, x+y
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$U, $B, $D, $F, x+y
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$F, $D, $B, $U, x+y
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$D, $B, $U, $F, x+y
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$B, $U, $F, $D, x+y
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$U, $F, $D, $B, x+y
time = 32

[Command]
name = "MAXBackdropBomb"
command = ~$B, $D, $F, $U, x+z
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$D, $F, $U, $B, x+z
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$F, $U, $B, $D, x+z
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$U, $B, $D, $F, x+z
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$F, $D, $B, $U, x+z
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$D, $B, $U, $F, x+z
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$B, $U, $F, $D, x+z
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$U, $F, $D, $B, x+z
time = 32

[Command]
name = "MAXBackdropBomb"
command = ~$B, $D, $F, $U, y+z
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$D, $F, $U, $B, y+z
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$F, $U, $B, $D, y+z
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$U, $B, $D, $F, y+z
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$F, $D, $B, $U, y+z
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$D, $B, $U, $F, y+z
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$B, $U, $F, $D, y+z
time = 32
[Command]
name = "MAXBackdropBomb"
command = ~$U, $F, $D, $B, y+z
time = 32

[Command]
name = "HyperBomb"
command = ~$B, $D, $F, $U, x+y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$D, $F, $U, $B, x+y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$F, $U, $B, $D, x+y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$U, $B, $D, $F, x+y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$F, $D, $B, $U, x+y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$D, $B, $U, $F, x+y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$B, $U, $F, $D, x+y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$U, $F, $D, $B, x+y+z
time = 32

;====================<SPECIAL MOTIONS>====================

[Command]
name = "SlashElbow"
command = ~$B, $F, a
time = 16

[Command]
name = "SlashElbow"
command = ~$B, $F, b
time = 16

[Command]
name = "SlashElbow"
command = ~$B, $F, c
time = 16

[Command]
name = "SlashElbow"
command = ~$B, $F, ~a
time = 16

[Command]
name = "SlashElbow"
command = ~$B, $F, ~b
time = 16

[Command]
name = "SlashElbow"
command = ~$B, $F, ~c
time = 16

[Command]
name = "EXSlashElbow"
command = ~$B, $F, a+b
time = 16

[Command]
name = "EXSlashElbow"
command = ~$B, $F, b+c
time = 16

[Command]
name = "EXSlashElbow"
command = ~$B, $F, a+c
time = 16

[Command]
name = "Air Stampede"
command = ~$D, $U, a
time = 16

[Command]
name = "Air Stampede"
command = ~$D, $U, b
time = 16

[Command]
name = "Air Stampede"
command = ~$D, $U, c
time = 16

[Command]
name = "Air Stampede"
command = ~$D, $U, ~a
time = 16

[Command]
name = "Air Stampede"
command = ~$D, $U, ~b
time = 16

[Command]
name = "Air Stampede"
command = ~$D, $U, ~c
time = 16

[Command]
name = "EXAir Stampede"
command = ~$D, $U, a+b
time = 16

[Command]
name = "EXAir Stampede"
command = ~$D, $U, b+c
time = 16

[Command]
name = "EXAir Stampede"
command = ~$D, $U, a+c
time = 16

[Command]
name = "Spiral D.D.T."
command = ~F, DF, D, DB, B, a
time = 16

[Command]
name = "Spiral D.D.T."
command = ~F, DF, D, DB, B, b
time = 16

[Command]
name = "Spiral D.D.T."
command = ~F, DF, D, DB, B, c
time = 16

[Command]
name = "Spiral D.D.T."
command = ~F, DF, D, DB, B, ~a
time = 16

[Command]
name = "Spiral D.D.T."
command = ~F, DF, D, DB, B, ~b
time = 16

[Command]
name = "Spiral D.D.T."
command = ~F, DF, D, DB, B, ~c
time = 16

[Command]
name = "EXSpiral D.D.T."
command = ~F, DF, D, DB, B, a+b
time = 16

[Command]
name = "EXSpiral D.D.T."
command = ~F, DF, D, DB, B, b+c
time = 16

[Command]
name = "EXSpiral D.D.T."
command = ~F, DF, D, DB, B, a+c
time = 16

[Command]
name = "PowerBomb"
command = ~B, DB, D, DF, F, x
time = 16

[Command]
name = "PowerBomb"
command = ~B, DB, D, DF, F, y
time = 16

[Command]
name = "PowerBomb"
command = ~B, DB, D, DF, F, z
time = 16

[Command]
name = "PowerBomb"
command = ~B, DB, D, DF, F, ~x
time = 16

[Command]
name = "PowerBomb"
command = ~B, DB, D, DF, F, ~y
time = 16

[Command]
name = "PowerBomb"
command = ~B, DB, D, DF, F, ~z
time = 16

[Command]
name = "EXPowerBomb"
command = ~B, DB, D, DF, F, x+y
time = 16

[Command]
name = "EXPowerBomb"
command = ~B, DB, D, DF, F, y+z
time = 16

[Command]
name = "EXPowerBomb"
command = ~B, DB, D, DF, F, x+z
time = 16

[Command]
name = "FlashChop"
command = ~D, DF, F, x
time = 16

[Command]
name = "FlashChop"
command = ~D, DF, F, y
time = 16

[Command]
name = "FlashChop"
command = ~D, DF, F, z
time = 16

[Command]
name = "FlashChop"
command = ~D, DF, F, ~x
time = 16

[Command]
name = "FlashChop"
command = ~D, DF, F, ~y
time = 16

[Command]
name = "FlashChop"
command = ~D, DF, F, ~z
time = 16

[Command]
name = "EXFlashChop"
command = ~D, DF, F, x+y
time = 16

[Command]
name = "EXFlashChop"
command = ~D, DF, F, y+z
time = 16

[Command]
name = "EXFlashChop"
command = ~D, DF, F, x+z
time = 16

[Command]
name = "PowerBackdrop"
command = ~F, DF, D, DB, B, x
time = 16

[Command]
name = "PowerBackdrop"
command = ~F, DF, D, DB, B, y
time = 16

[Command]
name = "PowerBackdrop"
command = ~F, DF, D, DB, B, z
time = 16

[Command]
name = "PowerBackdrop"
command = ~F, DF, D, DB, B, ~x
time = 16

[Command]
name = "PowerBackdrop"
command = ~F, DF, D, DB, B, ~y
time = 16

[Command]
name = "PowerBackdrop"
command = ~F, DF, D, DB, B, ~z
time = 16

[Command]
name = "EXPowerBackdrop"
command = ~F, DF, D, DB, B, x+y
time = 16

[Command]
name = "EXPowerBackdrop"
command = ~F, DF, D, DB, B, y+z
time = 16

[Command]
name = "EXPowerBackdrop"
command = ~F, DF, D, DB, B, x+z
time = 16

[Command]
name = "AirKneeSmash"
command = ~F, D, DF, a
time = 16

[Command]
name = "AirKneeSmash"
command = ~F, D, DF, b
time = 16

[Command]
name = "AirKneeSmash"
command = ~F, D, DF, c
time = 16

[Command]
name = "AirKneeSmash"
command = ~F, D, DF, ~a
time = 16

[Command]
name = "AirKneeSmash"
command = ~F, D, DF, ~b
time = 16

[Command]
name = "AirKneeSmash"
command = ~F, D, DF, ~c
time = 16

[Command]
name = "EXAirKneeSmash"
command = ~F, D, DF, a+b
time = 16

[Command]
name = "EXAirKneeSmash"
command = ~F, D, DF, b+c
time = 16

[Command]
name = "EXAirKneeSmash"
command = ~F, D, DF, a+c
time = 16

[Command]
name = "412p"
command = ~B, DB, D, x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~z
time = 16

[Command]
name = "412k"
command = ~B, DB, D, a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k"
command = ~B, DB, D, c
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~c
time = 16

;====================<OTHER>====================

[Command]
name = "highjump"
command = $D, $U
time = 15



;====================<DOUBLE TAP>====================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10



;====================<2/3 BUTTON COMBINATION>====================

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = a+x
time = 1


[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1


[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1


[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1




;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[StateDef -1]

;//==========================
;// add004-1-sctrls-start
;//==========================
;--- partner_standby
[state 0]
	type=selfstate
	trigger1=ctrl && numpartner && !ishelper && roundstate=2 && pos y=0
	trigger1=sysfvar(4)>0 && sysfvar(0)>0 && playeridexist(floor(sysfvar(0)))
	trigger1=playerid(floor(sysfvar(0))),var(0)=90900 && playerid(floor(sysfvar(0))),var(22)=4
	value=190190
	ctrl=0
	ignorehitpause=1
;//==========================
;// add004-1-sctrls-end
;//==========================




[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = StateNo = 810 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Hyper Bomb]
type = ChangeState
value = 3200
triggerAll = !AILevel
triggerAll = command = "HyperBomb"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Stun Gun Headbutt]
type = ChangeState
value = 3050
triggerAll = !AILevel
triggerAll = command = "MAXStunGunHeadbutt"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Backdrop Bomb]
type = ChangeState
value = 3350
triggerAll = !AILevel
triggerAll = command = "MAXBackdropBomb"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Boomerang Raid]
type = ChangeState
value = 3150 
triggerAll = !AILevel
triggerAll = command = "MAXBoomerangRaid"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Stun Gun Headbutt]
type = ChangeState
value = 3000
triggerAll = !AILevel
triggerAll = command = "StunGunHeadbutt"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Backdrop Bomb]
type = ChangeState
value = 3300 
triggerAll = !AILevel
triggerAll = command = "BackdropBomb"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Boomerang Raid]
type = ChangeState
value = 3100
triggerAll = !AILevel
triggerAll = command = "BoomerangRaid"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, EX Power Bomb]
type = ChangeState
value = 1030
triggerAll = !AILevel
triggerAll = command = "EXPowerBackdrop"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Slash Elbow]
type = ChangeState
value = 1430
triggerAll = !AILevel
triggerAll = command = "EXSlashElbow" && ifElse(var(20) > 0 || (StateNo = [1000, 4999]), 1, var(48) > 16)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Air Stampede]
type = ChangeState
value = 1330
triggerAll = !AILevel
triggerAll = command = "EXAir Stampede" && ifElse(var(20) > 0 || (StateNo = [1000, 4999]), 1, var(50) > 16)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Air Knee Smash]
type = ChangeState
value = 1630
triggerAll = !AILevel
triggerAll = command = "EXAirKneeSmash"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Flash Chop]
type = ChangeState
value = 1230
triggerAll = !AILevel
triggerAll = command = "EXFlashChop"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Spiral D.D.T.]
type = ChangeState
value = 1130
triggerAll = !AILevel
triggerAll = command = "EXSpiral D.D.T."
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Power Bomb]
type = ChangeState
value = 1000
triggerAll = !AILevel
triggerAll = command = "PowerBackdrop"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Slash Elbow]
type = ChangeState
value = 1400
triggerAll = !AILevel
triggerAll = command = "SlashElbow" && ifElse(var(20) > 0 || (StateNo = [1000, 4999]), 1, var(48) > 16)
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Air Stampede]
type = ChangeState
value = 1300
triggerAll = !AILevel
triggerAll = command = "Air Stampede" && ifElse(var(20) > 0 || (StateNo = [1000, 4999]), 1, var(50) > 16)
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Air Knee Smash]
type = ChangeState
value = 1600
triggerAll = !AILevel
triggerAll = command = "AirKneeSmash"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Flash Chop]
type = ChangeState
value = 1200
triggerAll = !AILevel
triggerAll = command = "FlashChop"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Spiral D.D.T.]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerAll = command = "Spiral D.D.T."
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
trigger1 = command = "c+z"
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
trigger1 = !var(41)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Dash Forward/Run]
type = ChangeState
value = 110
triggerAll = !AILevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
trigger1 = command = "BB"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Lariat]
type = ChangeState
value = 229
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "holdfwd" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Hand Stamp]
type = ChangeState
value = 259
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "holdfwd" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Chop]
type = ChangeState
value = 219
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "holdfwd" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) <= 20) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Light Punch]
type = ChangeState
value = 200 + (Abs(P2BodyDist X) <= 15) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 12
trigger3 = var(4)

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 430 && movecontact
trigger3 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 430 && movecontact
trigger3 = var(4)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 12
trigger3 = var(4)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 12
trigger3 = var(4)

[State -1, CrossChop]
type = ChangeState
value = 629
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = !AILevel
triggerAll = command = "c"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = !AILevel
triggerAll = command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = !AILevel
triggerAll = command = "b"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
triggerAll = command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = !AILevel
triggerAll = command = "a"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = !AILevel
triggerAll = command = "start"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(6)



;==============================================================================================
;===========================================< A.I >==============================================
;==============================================================================================


[State -1, Guarding Remove Var]
type=VarSet
trigger1= AILevel && roundstate=2
trigger1= var(28)
var(28)=0
ignorehitpause=1

[State -1, No Guarding Var]
type=VarSet
triggerall= AILevel && roundstate=2
trigger1= ((stateno=[760,762]) || (prevstateno=[760,762]))
trigger2= enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (enemynear,stateno=3020 || enemynear,numhelper(3025))
trigger3= enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (enemynear,stateno=3040 || enemynear,numhelper(3045) || enemynear,numhelper(3055))
trigger4= enemynear,name="Ryu" && enemynear,authorname="5theone/x_vyn_x" && (enemynear,stateno=[1600,1603])
trigger5= enemynear,name="Evil Ryu Hoshi" && enemynear,authorname="Vyn" && (enemynear,stateno=[1600,1603])
trigger6= enemynear,name="Orochi Gill" && enemynear,authorname="Shin_Lvl2_Akuma, Orochi Gill, SlayerGatsu" && enemynear,stateno=1420
trigger7= (enemynear,name="God Akuma" || enemynear,name="Orochi Shin Akuma" || enemynear,name="Another God Akuma") && enemynear,stateno=9980
trigger8= enemynear,name="Another God Akuma" && enemynear,authorname="Phantom.of.the.Server"
trigger8= (enemynear,stateno=2210 || enemynear,stateno=9800 || (enemynear,stateno=[78954,78995]))
trigger9= enemynear,hitdefattr=SCA,AT
trigger10= (prevstateno=[700,715])
var(28)=1
ignorehitpause=1

[State -1, No Guarding]
type=AssertSpecial
trigger1= AILevel && roundstate=2
trigger1= var(28)
flag=nostandguard
flag2=nocrouchguard
flag3=noairguard
ignorehitpause=1

[State -1, Stop Guarding]
type=ChangeState
triggerall= AILevel && roundstate=2
triggerall= stateno=[120,130]
trigger1= var(28)
value=140
ignorehitpause=1

[State -1, DCEA]
type=VarSet
triggerall= AILevel && roundstate=2
trigger1= var(51)
var(51)=0
ignorehitpause=1

[State -1, DCEA]
type=VarSet
triggerall= AILevel && roundstate=2
trigger1= enemynear,movetype=A && (enemynear,stateno=[1000,4999]) && enemynear,animtime<=-30
var(51)=1
ignorehitpause=1

[State -1, DWMTCETOSM]
type=VarSet
triggerall= AILevel && roundstate=2
trigger1= var(52)
var(52)=0
ignorehitpause=1

[State -1, DWMTCETOSM]
type=VarSet
triggerall= AILevel && roundstate=2
trigger1= enemynear,statetype=S && enemynear,authorname="Phantom.of.the.Server" && enemynear,stateno=1400
trigger2= enemynear,name="Psylocke" && enemynear,authorname="DivineWolf" && (enemynear,stateno=[1500,1510])
trigger3= enemynear,name="Ryu" && enemynear,authorname="5theone/x_vyn_x" && (enemynear,stateno=[1600,1603])
trigger4= enemynear,name="Evil Ryu Hoshi" && enemynear,authorname="Vyn" && (enemynear,stateno=[1600,1603])
trigger5= enemynear,name="Another God Akuma" && enemynear,authorname="Phantom.of.the.Server"
trigger5= (enemynear,stateno=2210 || (enemynear,stateno=[4700,4722]) || enemynear,stateno=7318 || enemynear,stateno=9800 || enemynear,stateno=22050)
trigger6= enemynear,name="Orochi Shin Akuma" && enemynear,authorname="Phantom.of.the.Server"
trigger6= (enemynear,stateno=[2200,2222])
trigger7= enemynear,name="God Akuma" && enemynear,authorname="Plaza (Shadow Leo)"
trigger7= ((enemynear,stateno=[2200,2222]) || enemynear,stateno=1400)
var(52)=1
ignorehitpause=1

[State -1, Standing Parry]
type=HitOverRide
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl || stateno=0 || stateno=21) && random<(300+200*(stateno=5120 && !animtime || stateno=5201 && !animtime))*(AILevel**2/64.0)
trigger1= var(24):=1
trigger2= (stateno=[760,761]) && random<(500+250*((prevstateno=[760,761]) && !animtime))*(AILevel**2/64.0)
trigger2= var(24):=1
trigger3= ctrl && statetype=C && enemynear,hitdefattr=SA,AA,AP && random<300*(AILevel**2/64.0)
trigger3= var(24):=1
attr=SA,AA,AP
stateno=760
slot=0
time=8

[State -1, Crouching Parry]
type=HitOverRide
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl || stateno=11 || stateno=21) && random<(300+200*(stateno=5120 && !animtime || stateno=5201 && !animtime))*(AILevel**2/64.0)
trigger1= var(24):=2
trigger2= (stateno=[760,761]) && random<(500+250*((prevstateno=[760,761]) && !animtime))*(AILevel**2/64.0)
trigger2= var(24):=2
trigger3= ctrl && statetype=S && enemynear,hitdefattr=C,AA,AP && random<300*(AILevel**2/64.0)
trigger3= var(24):=2
attr=C,AA,AP
stateno=761
slot=0
time=8

[State -1, Air Parry]
type=HitOverRide
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A
trigger1= (ctrl || (anim=[41,43])) && random<500*(AILevel**2/64.0)
trigger1= var(24):=3
trigger2= stateno=762 && random<(500+250*(prevstateno=762 && !animtime))*(AILevel**2/64.0)
trigger2= var(24):=3
attr=SA,AA,AP
stateno=762
forceair=1
slot=0
time=7

[State -1, Reset Parry]
type=HitOverRide
trigger1= (!ctrl && !(stateno=[760,762]) && stateno!=5120) || var(20)
trigger2= movetype!=I || (stateno=[100,106]) || (stateno=[120,132])
trigger3= !AILevel && (command="holdback" || command="holdup")
trigger4= (statetype=S || statetype=C) && var(24)!=1 && var(24)!=2
trigger5= statetype=A && var(24)!=3
slot=0
time=0



[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jump]
type = ChangeState
value = 40
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && (ctrl || stateno=21)
triggerall= enemynear,p2dist x>=0 || backedgebodydist<=80
trigger1= enemynear,movetype=A && enemynear,vel x>=-1 && p2bodydist x<=120
trigger1= enemynear,hitdefattr=SC,ST,HT && random<250*(AIlevel**2/64.0)
trigger2= enemynear,movetype=A && ((enemynear,stateno=[1000,1999]) || (enemynear,stateno=[3000,3999]))
trigger2= p2bodydist x>=120 && (((enemynear,numhelper) && !numhelper(9741)) || (enemynear,numproj))
trigger2= !(enemynear,statetype=A) && random<250*(AIlevel**2/64.0)
trigger3= enemynear,statetype=A && (p2bodydist x=[40,60]) && (p2dist y=[-110,-80])
trigger3= enemynear,vel x>=0 && !(enemynear,movetype=A) && random<50*(AIlevel**2/64.0)
trigger4= enemynear,name="God Akuma" || enemynear,name="Orochi Shin Akuma" || enemynear,name="Another God Akuma"
trigger4= enemynear,movetype=A && enemynear,stateno=9980 && p2bodydist x>=90 && random<500*(AIlevel**2/64.0)

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerall= AIlevel && numenemy && !var(57)
triggerall= roundstate=2 && statetype!=A && !var(28)
triggerall= (facing=1 && (enemynear,facing=-1)) || (facing=-1 && (enemynear,facing=1))
triggerall= (ctrl || stateno=21 || (stateno=[100,101])) && p2bodydist x>=80 && !(enemy,hitdefattr=SC,ST,HT,AT)
trigger1= enemynear,movetype=A && enemy,numproj>=0 && inguarddist
trigger1= random<(ifelse((var(44)=[1,2]),enemy,numproj>=0,450))*(AIlevel**2/64.0)


[State -1, roll backward]
type=changestate
value=715
triggerall= AIlevel && numenemy && !var(57)
triggerall= roundstate=2 && statetype!=A && !var(28) && var(46)=0 && !var(50)
triggerall= !(numtarget(1300) || numtarget(1310))
triggerall= !numhelper(3033) && !numtarget(3020) && !numtarget(3025) && !numtarget(3045)
triggerall= (facing=1 && (enemynear,facing=-1)) || (facing=-1 && (enemynear,facing=1))
triggerall= (ctrl || stateno=21 || (stateno=[100,101])) && !(enemy,hitdefattr=SC,ST,HT,AT)
triggerall= (p2bodydist x=[25,50]) && backedgebodydist>=80 && random<150*(AIlevel**2/64.0)
trigger1= enemynear,movetype=A || (enemynear,stateno=[5100,5120])

[State -1, Dodge]
type = ChangeState
value = 700
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && !var(28)
triggerall= (facing=1 && (enemynear,facing=-1)) || (facing=-1 && (enemynear,facing=1))
triggerall= (ctrl || stateno=21 || (stateno=[100,101])) && p2bodydist x>=0 && !(enemy,hitdefattr=SC,ST,HT,AT)
trigger1= enemynear,movetype=A && enemy,numproj>=0 && inguarddist
trigger1= random<(ifelse((var(44)=[1,2]),enemy,numproj>=0,400))*(AIlevel**2/64.0)

[State -1, Dash Backward]
type=ChangeState
value=105
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=S && var(20)<=150 && !var(26)
triggerall= (ctrl || stateno=21) && !var(51) && !(enemy,hitdefattr=SC,ST,HT,AT)
triggerall= (p2bodydist x=[-10,80]) && backedgebodydist>=80 && !(stateno=[100,106]) && !(prevstateno=[100,106])
triggerall= !((prevstateno=[760,762]) || (stateno=[760,762]))
trigger1= enemynear,movetype=A && p2bodydist x>=40 && random<200*(AILevel**2/64.0)
trigger2= (enemynear,stateno=[5100,5120]) || (enemynear,stateno=[5200,5201])
trigger2= p2bodydist x<=25 && random<150*(AILevel**2/64.0)

[State -1, Guard]
type = ChangeState
value = 120
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && inguarddist
triggerall= enemynear,p2dist x>=0 && !(stateno=[120,155]) && !var(20) && !var(28)
trigger1= (ctrl || stateno=0 || stateno=21 || (stateno=[100,101]))
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<=70)
trigger1= statetype!=A || enemynear,statetype=A
trigger1= ifelse(statetype=A,(var(9)!=2 || stateno=5210),1)
trigger1= random<((500*(var(44)=[1,2])+ifelse((enemynear,stateno=[200,699]),333,ifelse((enemynear,stateno=[1000,2999]),666,1000))))*(AIlevel**2/64.0)

[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power < const(data.power) && !var(20) && PrevStateNo != 5120
trigger1 = (ctrl || stateno = 21) && Power < const(data.power) && Power < PowerMax && !var(20) && numpartner = 0
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || stateno = 21) && Power < const(data.power) && Power < PowerMax && !var(20) && numpartner >= 1 && (partner, stateno != [5000,5050])
trigger2 = !InGuardDist && P2BodyDist x >= 160 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S && (ctrl || stateno=21)
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,24]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))


[State -1, Walk]
type=ChangeState
value=21
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist && anim!=5
triggerall= !((stateno=[10,12]) || stateno=21 || (stateno=[100,101]) || (stateno=[760,761]))
trigger1= ctrl && p2bodydist x>=75 && random<500*(AILevel**2/64.0)


[State -1, Run]
type = ChangeState
value = 100
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=S && (ctrl || stateno=21)
triggerall= !(stateno=[100,106]) && !(prevstateno=[100,106]) && !(stateno=[760,761]) && !(prevstateno=[760,761])
trigger1= !numhelper(1010) && !(enemynear,movetype=A) && p2bodydist x>=200 && random<100*(AILevel**2/64.0)
trigger2= numhelper(1010) && !(enemynear,movetype=A) && (enemynear,stateno=[120,140]) && p2bodydist x>=160 && random<200*(AILevel**2/64.0)

[State -1, Lariat]
type = ChangeState
value = 229
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [10,125]) && (P2Dist y = [-85,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,101]) && (P2Dist y = [-111,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,146]) && (P2Dist y = [-111,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && Statetype != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-132,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (350 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,97]) && (P2Dist y = [-33,0]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (350 * (AILevel ** 2 / 64.0))

[State -1, CrossChop]
type = ChangeState
value = 629
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,45]) && (P2Dist y = [-64,50]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-80,80]) && !(enemynear,statetype=L) && !(enemynear,hitfall)
trigger1= ctrl && !(enemynear,statetype=A) && (sysvar(1)=1 || sysvar(1)=0) && vel y>=-2
trigger1= p2bodydist x>=10 && (p2dist y=[-60,70]) && random<(300+100*(var(44)=3))*(AIlevel**2/64.0)
trigger2= ctrl && enemynear,statetype=A && vel y<=2 && p2bodydist x<=60 && random<200*(AIlevel**2/64.0)

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= !var(16) && var(15)<1
triggerall= (p2bodydist x=[0,80]) && (p2bodydist y=[-80,80]) && !(enemynear,statetype=L) && !(enemynear,hitfall)
trigger1= ctrl && !(enemynear,statetype=A) && (sysvar(1)=1 || sysvar(1)=0) && vel y>=-2
trigger1= p2bodydist x>=20 && (p2dist y=[-60,80]) && random<350*(AILevel**2/64.0)
trigger2= ctrl && enemynear,statetype=A && vel y<=2 && random<200*(AILevel**2/64.0)

[State -1, Chop]
type = ChangeState
value = 219
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,120]) && (P2Dist y = [-76,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,80]) && (P2Dist y = [-129,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist x) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,60]) && (P2Dist y = [-115,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,70]) && (P2Dist y = [-52,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,111]) && (P2Dist y = [-33,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,42]) && (P2Dist y = [-80,50]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,79]) && (P2Dist y = [-60,40]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Punch]
type = ChangeState
value = 200 + (Abs(P2BodyDist x) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,63]) && (P2Dist y = [-87,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,72]) && (P2Dist y = [-23,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,61]) && (P2Dist y = [-54,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,90]) && (P2Dist y = [-27,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || stateno=21 || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,41]) && (P2Dist y = [-56,28]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,32]) && (P2Dist y = [-117,40]) && P2StateType != L
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (ifElse(P2Dist x < 0, 250, 50) * (AILevel ** 2 / 64.0))

[State -1, Power Bomb]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1030, 1000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerall= p2dist x>=0 && p2bodydist x<=ceil(32 * const(size.xscale)) && p2dist y=0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (250 * (AILevel ** 3 / 64.0))

[State -1, Power Backdrop]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1530, 1500)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerall= p2dist x>=0 && p2bodydist x<=ceil(32 * const(size.xscale)) && p2dist y=0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (150 * (AILevel ** 3 / 64.0))

[State -1, Flash Chop]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1230, 1200)
triggerall= AIlevel && numenemy
triggerall= Roundstate=2 && statetype!=A
triggerall= !(enemynear,stateno=[120,155]) && !(enemynear,statetype=L) && !(enemynear,statetype=C)
triggerall= (p2bodydist x=[0,90]) && p2bodydist y=0 && !(enemynear,statetype=A)
trigger1= (stateno=[200,499]) || stateno=210 && anim=211 || stateno=219 && animelemtime(3)>=0 && hitcount>=2 || stateno=225 || (stateno=[245,255])
trigger1= movehit && enemynear,movetype=H && random<(150+50*(enemynear,gethitvar(animtype)>=0))*(AIlevel**2/64.0)

[State -1, Flash Chop]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1230, 1200)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerall= p2dist x>=0 && p2bodydist x<=ceil(32 * const(size.xscale)) && p2dist y=0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (150 * (AILevel ** 3 / 64.0))

[State -1, Slash Elbow]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1430, 1400)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerall= p2dist x>=0 && p2bodydist x<=ceil(32 * const(size.xscale)) && p2dist y=0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (200 * (AILevel ** 3 / 64.0))

[State -1, Slash Elbow]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1430, 1400)
triggerall= AIlevel && numenemy
triggerall= Roundstate=2 && statetype!=A
triggerall= !(enemynear,stateno=[120,155]) && !(enemynear,statetype=L) && !(enemynear,statetype=C)
triggerall= (p2bodydist x=[0,90]) && p2bodydist y=0 && !(enemynear,statetype=A)
trigger1= (stateno=[200,499]) || stateno=210 && anim=211 || stateno=219 && animelemtime(3)>=0 && hitcount>=2 || stateno=225 || (stateno=[245,255])
trigger1= movehit && enemynear,movetype=H && random<(150+50*(enemynear,gethitvar(animtype)>=0))*(AIlevel**2/64.0)


[State -1, Spiral D.D.T.]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1130, 1100)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-70,70]) && P2StateType != A) || ((P2BodyDist x = [-80,80]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (150 * (AILevel ** 3 / 64.0))

[State -1, Air Stampede]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1330, 1300)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerall= p2dist x>=0 && p2bodydist x<=ceil(32 * const(size.xscale)) && p2dist y=0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (50 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (150 * (AILevel ** 3 / 64.0))

[State -1, Air Knee Smash]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1630, 1600)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-80,80]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 3 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 3 / 64.0))

[State -1, Hyper Bomb]
type = ChangeState
value = 3200
triggerall = AILevel && NumEnemy
triggerall = roundstate=2 && statetype!=A
triggerall = power>=3000 && !var(20)
triggerall = !var(16) && (var(15)<1 || var(20) || (stateno=[1000,4999]))
triggerall = !(enemynear,ctrl) && p2stateno!=5201
triggerall = p2dist x>=0 && p2bodydist x<=ceil(32 * const(size.xscale))
triggerall = (enemynear,hitover || !(enemynear,movetype=H) || var(21)) && !(enemynear,stateno=[150,155]) && enemynear,anim!=5040
triggerall = !(enemynear,stateno=40 && enemynear,time>=1) && !(enemynear,stateno=52 && !(enemynear,ctrl) && enemynear,prevstateno=[5020,5040])
triggerall = p2statetype!=A && p2statetype!=L && (p2dist y=[-48,0])
trigger1 = (ctrl || stateno=52 || stateno=21 || (stateno=[100,101])) && random<500

[State -1, MAX Backdrop Bomb]
type = ChangeState
value = 3350
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, MAX Boomerang Raid]
type = ChangeState
value = 3150
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, MAX Stun Gun Headbutt]
type = ChangeState
value = 3050
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerall= (p2bodydist x=[-78,78]) && (p2dist y=[-67,0])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Backdrop Bomb]
type = ChangeState
value = 3300
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Boomerang Raid]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Stun Gun Headbutt]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerall= (p2bodydist x=[-78,78]) && (p2dist y=[-67,0])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = AILevel && NumEnemy
triggerAll = StateType != A && Life >= 0.5 * LifeMax
triggerAll = (EnemyNear, Life) <= 0.5 * (EnemyNear, LifeMax)
trigger1 = ctrl
trigger1 = P2Dist x >= 160 && !(EnemyNear, ctrl)
trigger1 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (50 * (AILevel ** 2 / 64.0))

