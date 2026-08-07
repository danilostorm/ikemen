;#ADD004BASIC PIEs#
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
name = "TyrantSlaughter"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "TyrantSlaughter"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "TyrantSlaughter"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "TyrantSlaughter"
command = ~D, DF, F, D, DF, F, ~a
time = 30

[Command]
name = "TyrantSlaughter"
command = ~D, DF, F, D, DF, F, ~b
time = 30

[Command]
name = "TyrantSlaughter"
command = ~D, DF, F, D, DF, F, ~c
time = 30


[Command]
name = "MAXTyrantSlaughter"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "MAXTyrantSlaughter"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "MAXTyrantSlaughter"
command = ~D, DF, F, D, DF, F, a+c
time = 30


[Command]
name = "TemporalThunder"
command = ~D, DF, F, D, DF, F, x
time = 32

[Command]
name = "TemporalThunder"
command = ~D, DF, F, D, DF, F, y
time = 32

[Command]
name = "TemporalThunder"
command = ~D, DF, F, D, DF, F, z
time = 32

[Command]
name = "TemporalThunder"
command = ~D, DF, F, D, DF, F, ~x
time = 32

[Command]
name = "TemporalThunder"
command = ~D, DF, F, D, DF, F, ~y
time = 32

[Command]
name = "TemporalThunder"
command = ~D, DF, F, D, DF, F, ~z
time = 32


[Command]
name = "MAXTemporalThunder"
command = ~D, DF, F, D, DF, F, x+y
time = 32

[Command]
name = "MAXTemporalThunder"
command = ~D, DF, F, D, DF, F, y+z
time = 32

[Command]
name = "MAXTemporalThunder"
command = ~D, DF, F, D, DF, F, x+z
time = 32


[Command]
name = "AegisReflector"
command = ~D, DB, B, D, DB, B, x
time = 32

[Command]
name = "AegisReflector"
command = ~D, DB, B, D, DB, B, y
time = 32

[Command]
name = "AegisReflector"
command = ~D, DB, B, D, DB, B, z
time = 32

[Command]
name = "AegisReflector"
command = ~D, DB, B, D, DB, B, ~x
time = 32

[Command]
name = "AegisReflector"
command = ~D, DB, B, D, DB, B, ~y
time = 32

[Command]
name = "AegisReflector"
command = ~D, DB, B, D, DB, B, ~z
time = 32


[Command]
name = "MAXAegisReflector"
command = ~D, DB, B, D, DB, B, x+y
time = 32

[Command]
name = "MAXAegisReflector"
command = ~D, DB, B, D, DB, B, y+z
time = 32

[Command]
name = "MAXAegisReflector"
command = ~D, DB, B, D, DB, B, x+z
time = 32


[Command]
name = "VesuvianBurnout"
command = ~D, DF, F, D, DB, B, x+y
time = 32

[Command]
name = "VesuvianBurnout"
command = ~D, DF, F, D, DB, B, y+z
time = 32

[Command]
name = "VesuvianBurnout"
command = ~D, DF, F, D, DB, B, x+z
time = 32

;====================<SPECIAL MOTIONS>====================

[Command]
name = "MetallicSphere"
command = ~D, DF, F, x
time = 16

[Command]
name = "MetallicSphere"
command = ~D, DF, F, y
time = 16

[Command]
name = "MetallicSphere"
command = ~D, DF, F, z
time = 16

[Command]
name = "MetallicSphere"
command = ~D, DF, F, ~x
time = 16

[Command]
name = "MetallicSphere"
command = ~D, DF, F, ~y
time = 16

[Command]
name = "MetallicSphere"
command = ~D, DF, F, ~z
time = 16


[Command]
name = "EXMetallicSphere"
command = ~D, DF, F, x+y
time = 16

[Command]
name = "EXMetallicSphere"
command = ~D, DF, F,  y+z
time = 16

[Command]
name = "EXMetallicSphere"
command = ~D, DF, F,  z+x
time = 16


[Command]
name = "ChariotTackle"
command = ~35$B, F, a
time = 16

[Command]
name = "ChariotTackle"
command = ~35$B, F, b
time = 16

[Command]
name = "ChariotTackle"
command = ~35$B, F, c
time = 16

[Command]
name = "ChariotTackle"
command = ~35$B, F, ~a
time = 16

[Command]
name = "ChariotTackle"
command = ~35$B, F, ~b
time = 16

[Command]
name = "ChariotTackle"
command = ~35$B, F, ~c
time = 16


[Command]
name = "CustomComboChariotTackle"
command = ~$B, F, a
time = 16

[Command]
name = "CustomComboChariotTackle"
command = ~$B, F, b
time = 16

[Command]
name = "CustomComboChariotTackle"
command = ~$B, F, c
time = 16

[Command]
name = "CustomComboChariotTackle"
command = ~$B, F, ~a
time = 16

[Command]
name = "CustomComboChariotTackle"
command = ~$B, F, ~b
time = 16

[Command]
name = "CustomComboChariotTackle"
command = ~$B, F, ~c
time = 16


[Command]
name = "EXChariotTackle"
command = ~35$B, F, a+b
time = 16

[Command]
name = "EXChariotTackle"
command = ~35$B, F, b+c
time = 16

[Command]
name = "EXChariotTackle"
command = ~35$B, F, c+a
time = 16


[Command]
name = "ViolenceKneeDrop"
command = ~45$D, $U, a
time = 16

[Command]
name = "ViolenceKneeDrop"
command = ~45$D, $U, b
time = 16

[Command]
name = "ViolenceKneeDrop"
command = ~45$D, $U, c
time = 16

[Command]
name = "ViolenceKneeDrop"
command = ~45$D, $U, ~a
time = 16

[Command]
name = "ViolenceKneeDrop"
command = ~45$D, $U, ~b
time = 16

[Command]
name = "ViolenceKneeDrop"
command = ~45$D, $U, ~c
time = 16


[Command]
name = "CustomComboViolenceKneeDrop"
command = ~$D, $U, a
time = 16

[Command]
name = "CustomComboViolenceKneeDrop"
command = ~$D, $U, b
time = 16

[Command]
name = "CustomComboViolenceKneeDrop"
command = ~$D, $U, c
time = 16

[Command]
name = "CustomComboViolenceKneeDrop"
command = ~$D, $U, ~a
time = 16

[Command]
name = "CustomComboViolenceKneeDrop"
command = ~$D, $U, ~b
time = 16

[Command]
name = "CustomComboViolenceKneeDrop"
command = ~$D, $U, ~c
time = 16


[Command]
name = "EXViolenceKneeDrop"
command = ~45$D, $U, a+b
time = 16

[Command]
name = "EXViolenceKneeDrop"
command = ~45$D, $U, b+c
time = 16

[Command]
name = "EXViolenceKneeDrop"
command = ~45$D, $U, a+c
time = 16


[Command]
name = "DangerousHeadbutt"
command = ~45$D, $U, x
time = 16

[Command]
name = "DangerousHeadbutt"
command = ~45$D, $U, y
time = 16

[Command]
name = "DangerousHeadbutt"
command = ~45$D, $U, z
time = 16

[Command]
name = "DangerousHeadbutt"
command = ~45$D, $U, ~x
time = 16

[Command]
name = "DangerousHeadbutt"
command = ~45$D, $U, ~y
time = 16

[Command]
name = "DangerousHeadbutt"
command = ~45$D, $U, ~z
time = 16


[Command]
name = "CustomComboDangerousHeadbutt"
command = ~$D, $U, x
time = 16

[Command]
name = "CustomComboDangerousHeadbutt"
command = ~$D, $U, y
time = 16

[Command]
name = "CustomComboDangerousHeadbutt"
command = ~$D, $U, z
time = 16

[Command]
name = "CustomComboDangerousHeadbutt"
command = ~$D, $U, ~x
time = 16

[Command]
name = "CustomComboDangerousHeadbutt"
command = ~$D, $U, ~y
time = 16

[Command]
name = "CustomComboDangerousHeadbutt"
command = ~$D, $U, ~z
time = 16


[Command]
name = "EXDangerousHeadbutt"
command = ~45$D, $U, x+y
time = 16

[Command]
name = "EXDangerousHeadbutt"
command = ~45$D, $U, y+z
time = 16

[Command]
name = "EXDangerousHeadbutt"
command = ~45$D, $U, z+x
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
trigger4 = StateNo = 820 && !AnimTime
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

[State -1, Vesuvian Burnout]
type = ChangeState
value = 3300
triggerAll = !AILevel
triggerAll = command = "VesuvianBurnout"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Aegis Reflector]
type = ChangeState
value = 3250
triggerAll = !AILevel
triggerAll = command = "MAXAegisReflector"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)
trigger3 = StateNo = 1003 && AnimElemTime(5) >= 0
trigger4 = StateNo = 1100 && MoveContact && AnimElemTime(3) >= 0

[State -1, Aegis Reflector]
type = ChangeState
value = 3200
triggerAll = !AILevel
triggerAll = command = "AegisReflector"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3 = StateNo = 1003 && AnimElemTime(5) >= 0
trigger4 = StateNo = 1100 && MoveContact && AnimElemTime(3) >= 0

[State -1, MAX Tyrant Slaughter]
type = ChangeState
value = 3150
triggerAll = !AILevel
triggerAll = command = "MAXTyrantSlaughter"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Tyrant Slaughter]
type = ChangeState
value = 3100
triggerAll = !AILevel
triggerAll = command = "TyrantSlaughter"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Temporal Thunder]
type = ChangeState
value = 3050
triggerAll = !AILevel
triggerAll = command = "MAXTemporalThunder"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Temporal Thunder]
type = ChangeState
value = 3000
triggerAll = !AILevel
triggerAll = command = "TemporalThunder"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, EX Violence Knee Drop]
type = ChangeState
value = 1350
triggerAll = !AILevel
triggerAll = command = "EXViolenceKneeDrop"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Violence Knee Drop]
type = ChangeState
value = 1300
triggerAll = !AILevel
triggerAll = command = "ViolenceKneeDrop"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Custom Combo: Violence Knee Drop]
type = ChangeState
value = 1300
triggerAll = !AILevel
TriggerAll = Var(20)
triggerAll = command = "CustomComboViolenceKneeDrop"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Dangerous Headbutt]
type = ChangeState
value = 1250
triggerAll = !AILevel
triggerAll = command = "EXDangerousHeadbutt"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Dangerous Headbutt]
type = ChangeState
value = 1200
triggerAll = !AILevel
triggerAll = command = "DangerousHeadbutt"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Custom Combo: Dangerous Headbutt]
type = ChangeState
value = 1200
triggerAll = !AILevel
TriggerAll = Var(20)
triggerAll = command = "CustomComboDangerousHeadbutt"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Chariot Tackle]
type = ChangeState
value = 1150
triggerAll = !AILevel
triggerAll = command = "EXChariotTackle"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Chariot Tackle]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerAll = command = "ChariotTackle"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Custom Combo: Chariot Tackle]
type = ChangeState
value = 1100
triggerAll = !AILevel
TriggerAll = Var(20)
triggerAll = command = "CustomComboChariotTackle"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Metallic Sphere]
type = ChangeState
value = 1050
triggerAll = !AILevel
triggerAll = command = "EXMetallicSphere"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Metallic Sphere]
type = ChangeState
value = 1000
triggerAll = !AILevel
triggerAll = command = "MetallicSphere"
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) && !(StateNo = 1100 && AnimElemTime(3) >= 0 && MoveContact)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
trigger1 = command = "c+z"
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact
trigger3 = var(4)

[State -1, Standing Medium Punch]
type = ChangeState
value = 210 + (command = "holdfwd") * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact && (!command = "holdfwd")
trigger3 = var(4)

[State -1, FWD Standing Heavy Punch]
type = ChangeState
value = 225
triggerAll = !AILevel
triggerAll = (command = "z") && (command = "holdfwd" && command = "z")
triggerAll = command != "holddown"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 215 && AnimElemTime(5) <= 0  && MoveContact
trigger3 = var(4)

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220 + (command = "holdfwd") * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 230) && (MoveContact && AnimElemTime(6) >= 0)
trigger3 = var(4)

[State -1, Standing Medium Kick]
type = ChangeState
value = 240 + (command = "holdfwd") * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
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

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 5
trigger3 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "y"
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

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 5
trigger3 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b"
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
trigger2 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
triggerAll = command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = !AILevel
triggerAll = command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = !AILevel
triggerAll = command = "a"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = !AILevel
triggerAll = command = "b"
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

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = !AILevel
triggerAll = command = "start"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

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

;==============================================================================================
;===========================================< A.I >==============================================
;==============================================================================================



[State -1, Walk]
type=ChangeState
value=21
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist && anim!=5
triggerall= !((stateno=[10,12]) || stateno=21 || (stateno=[100,101]) || (stateno=[760,761]))
trigger1= ctrl && p2bodydist x>=75 && random<500*(AILevel**2/64.0)


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

[State -1, Guard]
type=ChangeState
value=120
triggerall= AILevel && numenemy
triggerall= roundstate=2 && inguarddist
triggerall= enemynear,p2dist x>=0 && !(stateno=[120,155]) && !var(20) && !var(26) && !var(28)
trigger1= (ctrl || stateno=0 || stateno=21 || (stateno=[100,101]))
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<=120)
trigger1= statetype!=A || enemynear,statetype=A
trigger1= ifelse(statetype=A,((var(3)!=[1,2]) || stateno=5210),1)
trigger1= random<((500+ifelse((enemynear,stateno=[200,699]),333,ifelse((enemynear,stateno=[1000,2999]),666,1000))))*(AILevel**2/64.0)

[State -1, Standing Parry]
type=HitOverRide
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl || stateno=0 || stateno=21) && random<(500+200*(stateno=5120 && !animtime || stateno=5201 && !animtime))*(AILevel**2/64.0)
trigger1= var(24):=1
trigger2= (stateno=[760,761]) && random<(700+250*((prevstateno=[760,761]) && !animtime))*(AILevel**2/64.0)
trigger2= var(24):=1
trigger3= ctrl && statetype=C && enemynear,hitdefattr=SA,AA,AP && random<500*(AILevel**2/64.0)
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
trigger1= (ctrl || (anim=[41,43])) && random<700*(AILevel**2/64.0)
trigger1= var(24):=3
trigger2= stateno=762 && random<(700+250*(prevstateno=762 && !animtime))*(AILevel**2/64.0)
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

;[State -1, Jump]
;type = ChangeState
;value = 40
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A && ctrl
;trigger1 = EnemyNear, MoveType = A && P2BodyDist x < 160 && EnemyNear, HitDefAttr = SC, AT

[State -1, Jump]
type = ChangeState
value = 40
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && (ctrl || stateno=21)
triggerall= enemynear,p2dist x>=0 || backedgebodydist<=80
trigger1= enemynear,movetype=A && enemynear,vel x>=-1 && p2bodydist x<=120
trigger1= enemynear,hitdefattr=SC,ST,HT && random<200*(AIlevel**2/64.0)
trigger2= enemynear,movetype=A && ((enemynear,stateno=[1000,1999]) || (enemynear,stateno=[3000,3999]))
trigger2= p2bodydist x>=120 && (((enemynear,numhelper) && !numhelper(9741)) || (enemynear,numproj))
trigger2= !(enemynear,statetype=A) && random<200*(AIlevel**2/64.0)
trigger3= enemynear,statetype=A && (p2bodydist x=[40,60]) && (p2dist y=[-110,-80])
trigger3= enemynear,vel x>=0 && !(enemynear,movetype=A) && random<50*(AIlevel**2/64.0)
trigger4= enemynear,name="God Akuma" || enemynear,name="Orochi Shin Akuma" || enemynear,name="Another God Akuma"
trigger4= enemynear,movetype=A && enemynear,stateno=9980 && p2bodydist x>=90 && random<500*(AIlevel**2/64.0)


[State -1, Roll Forward]
type=ChangeState
value=710
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A && !var(20) && !var(28)
triggerall= (facing=1 && (enemynear,facing=-1)) || (facing=-1 && (enemynear,facing=1))
triggerall= (ctrl || stateno=21 || (stateno=[100,101])) && p2bodydist x>=80 && !(enemynear,hitdefattr=SC,ST,HT,AT)
trigger1= enemynear,movetype=A && enemy,numproj>=0 && inguarddist && random<(850*(AILevel**2/64.0))

[State -1, Roll Backward]
type=ChangeState
value=715
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(20)<=150 && !var(26) && !var(28)
triggerall= (facing=1 && (enemynear,facing=-1)) || (facing=-1 && (enemynear,facing=1))
triggerall= (ctrl || stateno=21 || (stateno=[100,101])) && !(enemy,hitdefattr=SC,ST,HT,AT)
triggerall= (p2bodydist x=[25,50]) && backedgebodydist>=80 && random<150*(AILevel**2/64.0)
trigger1= enemynear,movetype=A || (enemynear,stateno=[5100,5120])

[State -1, Dodge]
type = ChangeState
value = 700
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A && !var(20) 
triggerall= (facing=1 && (enemynear,facing=-1)) || (facing=-1 && (enemynear,facing=1))
triggerall= (ctrl || stateno=21 || (stateno=[100,101])) && p2bodydist x>=0 && !(enemynear,hitdefattr=SC,ST,HT,AT)
trigger1= enemynear,movetype=A && enemy,numproj>=0 && inguarddist && random<(600*(AILevel**2/64.0))

;[State -1, Run]
;type = ChangeState
;value = 100
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType = S
;trigger1 = ctrl && (StateNo != [100,106])
;trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (25 * (AILevel ** 2 / 64.0))


[State -1, Run]
type = ChangeState
value = 100
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=S && (ctrl || stateno=21)
triggerall= !(stateno=[100,106]) && !(prevstateno=[100,106]) && !(stateno=[760,761]) && !(prevstateno=[760,761])
trigger1= !numhelper(1010) && !(enemynear,movetype=A) && p2bodydist x>=200 && random<100*(AILevel**2/64.0)
trigger2= numhelper(1010) && !(enemynear,movetype=A) && (enemynear,stateno=[120,140]) && p2bodydist x>=160 && random<200*(AILevel**2/64.0)



[State -1, Dash Backward]
type = ChangeState
value = 105
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=S && var(20)<=150 && !var(26)
triggerall= (ctrl || stateno=21) && !var(51) && !(enemy,hitdefattr=SC,ST,HT,AT)
triggerall= (p2bodydist x=[-10,80]) && backedgebodydist>=80 && !(stateno=[100,106]) && !(prevstateno=[100,106])
triggerall= !((prevstateno=[760,762]) || (stateno=[760,762]))
trigger1= enemynear,movetype=A && p2bodydist x>=40 && random<200*(AILevel**2/64.0)
trigger2= (enemynear,stateno=[5100,5120]) || (enemynear,stateno=[5200,5201])
trigger2= p2bodydist x<=25 && random<150*(AILevel**2/64.0)


[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel<=6 && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (250 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Zero Counter]
type=ChangeState
value=750
triggerall= AILevel>=7 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000 && !var(20)
trigger1= (P2BodyDist x = [0,50]) && (stateno=150 || stateno=152) && random<150*(AILevel**2/64.0)

;(p2bodydist x=[30,60])
;[State -1, Power Charge]
;type = ChangeState
;value = 730
;triggerAll = AILevel && NumEnemy
;trigger1 = RoundState = 2 && StateType != A
;trigger1 = Power < const(data.power) && !var(20)
;trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20)
;trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (95 * (AILevel ** 2 / 64.0))


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
triggerAll = (P2BodyDist x = [-20,40]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 3 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 3 / 64.0))

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && (StateType != A || (vel x > 0 && vel y >= 0))
trigger1 = Power >= 1000 && !var(20)
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100, 101]))
trigger1 = (EnemyNear, MoveType = A) && (P2BodyDist x = [0,40]) && (P2Dist y = [-60,60]) && (EnemyNear, vel y >= 0)
trigger1 = (EnemyNear, StateNo = [200,699]) && Random < (300 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,35]) && (P2Dist y = [-75,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl ||  stateno=21 ||  (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, SLP Target Combo 1]
type = ChangeState
value = 200
trigger1 = AILevel
trigger1 = StateNo = 230 && AnimElemTime(5) < 0 && MoveContact

[State -1, SLP Target Combo 2]
type = ChangeState
value = 210
trigger1 = AILevel
trigger1 = StateNo = 200 && AnimElemTime(5) < 0 && MoveContact

[State -1, SLP Target Combo 3]
type = ChangeState
value = 230
trigger1 = AILevel
trigger1 = StateNo = 230 && AnimElemTime(5) < 0 && MoveContact

[State -1, Quarrel Punch/Standing Normal Medium Punch]
type = ChangeState
value = ifElse(Random < 50, 215, 210)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-80,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl ||  stateno=21 ||  (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Normal Hard Punch]
type = changestate
value = 220
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (110 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -98 - enemynear,vel y, -98) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0) 
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger2 = p2bodydist x = [-8, (110 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -98 - enemynear,vel y, -98) * const(size.yscale), 8]
trigger2 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 2 || var(14) % 60 = 4 || var(14) % 60 = 5
trigger3 = p2bodydist x = [-8, (110 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -98 - enemynear,vel y, -98) * const(size.yscale), 8]
trigger3 = random < 32 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5
trigger4 = p2bodydist x = [-8, (110 - const(size.ground.front)) * const(size.xscale)]
trigger4 = p2dist y = [cond(enemynear,vel y > 0, -98 - enemynear,vel y, -98) * const(size.yscale), 8]
trigger4 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability


[state -1, AI Forward + Hard Punch]
type = changestate
value = 705
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (100 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -63 - enemynear,vel y, -63) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger2 = var(40) = 2 || var(40) = 4 || var(40) = 5
trigger2 = p2bodydist x = [-8, (100 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -63 - enemynear,vel y, -63) * const(size.yscale), 8]
trigger2 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
; Target Cancels
trigger3 = var(43) = 2
trigger3 = p2bodydist x = [-8, (100 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -63 - enemynear,vel y, -63) * const(size.yscale), 8]
trigger3 = random < 256 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger4 = ctrl
trigger4 = p2statetype = C && p2stateno < 1000
trigger4 = p2bodydist x = [-8, (100 - const(size.ground.front)) * const(size.xscale)]
trigger4 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability



[State -1, Terrible Smash]
type = ChangeState
value = 225
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-100,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl ||  stateno=21 ||  (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, QP < TS Target Combo]
type = ChangeState
value = 225
trigger1 = AILevel
trigger1 = StateNo = 215 && AnimElemTime(6) < 0 && MoveContact

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,53]) && (P2Dist y = [-17,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl ||  stateno=21 ||  (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, SLK Target Combo 1]
type = ChangeState
value = 200
trigger1 = AILevel
trigger1 = StateNo = 230 && AnimElemTime(5) < 0 && MoveContact

[State -1, SLK Target Combo 2]
type = ChangeState
value = 230
trigger1 = AILevel
trigger1 = StateNo = 230 && AnimElemTime(5) < 0 && MoveContact

[State -1, Standing FWD/Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-80,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl ||  stateno=21 ||  (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Hard Kick]
type = ChangeState
value = 250
triggerall = ailevel && numenemy && roundstate = 2 && !var(9) && !var(13)
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = statetype != A
; condition
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (79 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [cond(enemynear,vel y > 0, -138 - enemynear,vel y, -138) * const(size.yscale), 8]
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Punch Chains
trigger2 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger2 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger2 = p2bodydist x = [-8, (79 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [cond(enemynear,vel y > 0, -138 - enemynear,vel y, -138) * const(size.yscale), 8]
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Custom Kick Chains
trigger3 = cond(numhelper(4000), helper(4000),var(0), 0)
trigger3 = var(14) % 60 = 1 || var(14) % 60 = 2 || var(14) % 60 = 4 || var(14) % 60 = 5
trigger3 = p2bodydist x = [-8, (79 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [cond(enemynear,vel y > 0, -138 - enemynear,vel y, -138) * const(size.yscale), 8]
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; Misc Cancels
trigger4 = var(40) = 2 || var(40) = 4 || var(40) = 5
trigger4 = p2bodydist x = [-8, (79 - const(size.ground.front)) * const(size.xscale)]
trigger4 = p2dist y = [cond(enemynear,vel y > 0, -138 - enemynear,vel y, -138) * const(size.yscale), 8]
trigger4 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,53]) && (P2Dist y = [-30,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl ||  stateno=21 ||  (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,70]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl ||  stateno=21 ||  (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy && var(20) <= 60
triggerAll = RoundState = 2 && Statetype != A
triggerAll = (P2BodyDist x = [0,35]) && (P2Dist y = [-135,0])
triggerAll = (EnemyNear, StateType = S) || ((EnemyNear, const(size.head.pos.y) <= -80) && P2StateType = C) || (EnemyNear, StateType = A)
trigger1 = (ctrl ||   (StateNo = [100,101]) || StateNo = 21) && Random < (800 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(46)=0
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,statetype=A) && !(enemynear,hitfall) && !inguarddist
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && !numhelper(1005) && random<(50+25*(var(44)=0))*(AIlevel**2/64.0)
trigger2= (stateno=230 || stateno=245) && time>=5 && movecontact && random<100*(AIlevel**2/64.0)
trigger3= stateno=235 && !animtime && ctrl && movecontact && random<500*(AIlevel**2/64.0)
trigger4= stateno=1500 && movehit && animtime=0 && enemynear,movetype=H && random<300*(AIlevel**2/64.0)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (p2bodydist x=[0,60]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,hitfall) && !(enemynear,statetype=A)
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && random<100*(AILevel**2/64.0)
trigger2= (stateno=200 || stateno=400) && !animtime && ctrl && movecontact && random<250*(AILevel**2/64.0)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !var(16) && var(15)<1
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=A)
triggerall= !(enemynear,statetype=L) && !var(50)
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && !inguarddist && random<(100+50*(var(46)=0))*(AILevel**2/64.0)
trigger2= ctrl && (stateno=[760,761]) && p2bodydist x>=30 && !(enemynear,movetype=A) && random<200*(AILevel**2/64.0)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= !var(16) && var(15)<1
triggerall= (p2bodydist x=[0,40]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,hitfall) && !inguarddist
trigger1= ctrl && enemynear,statetype=A && vel y<=2 && random<50*(AILevel**2/64.0)

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= !var(16) && var(15)<1
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,hitfall)
trigger1= ctrl && enemynear,statetype=A && vel y<=2 && random<100*(AILevel**2/64.0)

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-80,80]) && !(enemynear,statetype=L) && !(enemynear,hitfall)
trigger1= ctrl && !(enemynear,statetype=A) && (sysvar(1)=1 || sysvar(1)=0) && vel y>=-2
trigger1= p2bodydist x>=10 && (p2dist y=[-60,70]) && random<(300+100*(var(44)=3))*(AIlevel**2/64.0)
trigger2= ctrl && enemynear,statetype=A && vel y<=2 && p2bodydist x<=60 && random<350*(AIlevel**2/64.0)

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= !var(16) && var(15)<1
triggerall= (p2bodydist x=[-15,30]) && (p2bodydist y=[-80,80]) && !(enemynear,statetype=L) && !(enemynear,hitfall) && !inguarddist
trigger1= ctrl && !(enemynear,statetype=A) && vel y>=-2 && (p2dist y=[-60,70]) && random<50*(AILevel**2/64.0)

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= !var(16) && var(15)<1
triggerall= (p2bodydist x=[0,60]) && (p2bodydist y=[-80,80]) && !(enemynear,statetype=L) && !(enemynear,hitfall)
trigger1= ctrl && !(enemynear,statetype=A) && vel y>=-2 && (p2dist y=[-60,70]) && random<200*(AILevel**2/64.0)
trigger2= ctrl && enemynear,statetype=A && vel y<=2 && random<150*(AILevel**2/64.0)

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

[State -1, Jumping Heavy Kick CC]
type = ChangeState
value = 650
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= !var(16) && var(15)<1
triggerall= (p2bodydist x=[0,80]) && (p2bodydist y=[-80,80]) && !(enemynear,statetype=L) && !(enemynear,hitfall)
trigger1= ctrl && !(enemynear,statetype=A) && (sysvar(1)=1 || sysvar(1)=0) && vel y>=-2
trigger1= p2bodydist x>=20 && (p2dist y=[-60,80]) && random<350*(AILevel**2/64.0)
trigger2= ctrl && enemynear,statetype=A && vel y<=2 && random<200*(AILevel**2/64.0)

[State -1, Metallic Sphere]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1050, 1000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (p2bodydist x >=50)&&(p2bodydist y=[-80,5]) && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101])) && Random < (150 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (200 * (AILevel ** 2 / 64.0))

[State -1, Chariot Tackle]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1150, 1100)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,115]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101])) && Random < (37 * (AILevel ** 2 / 64.0))
trigger2 = P2Dist x <= -146 && P2Dist Y >= -20
trigger3 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (200 * (AIlevel ** 2 / 64.0))
trigger4 = StateNo = 1205 && AnimElemTime(1)>= 0 && Random < (250 * (AIlevel ** 2 / 64.0))
trigger5 = StateNo = 2900 && AnimElemTime(4)>= 1 && MoveContact && Random < (333 * (AIlevel ** 2 / 64.0))

[State -1, Chariot Tackle (Custom Combo)]
type = ChangeState
value = 1100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && var(20) > 30
triggerAll = (P2BodyDist x = [0,115]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = P2Dist x <= -146 && P2Dist Y >= -20
trigger3 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (200 * (AIlevel ** 2 / 64.0))
trigger4 = StateNo = 1205 && AnimElemTime(1)>= 0 && Random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Dangerous HeadButt]
type = ChangeState
value = 1200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [0,70]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101])) && Random < (150 * (AILevel ** 2 / 64.0))
trigger1 = P2Dist x <= -70 && P2Dist Y >= -60
trigger2 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (333 * (AIlevel ** 2 / 64.0))
trigger3 = StateNo = 2900 && AnimElemTime(4)>= 1 && MoveContact && Random < (333 * (AIlevel ** 2 / 64.0))
trigger4 = StateNo = 1205 && var(20) <= 60 && AnimElemTime(1)>= 0 && Random < (333 * (AIlevel ** 2 / 64.0))

;triggerAll = AILevel && NumEnemy
;triggerAll = RoundState = 2 && StateType != A
;triggerAll = !var(16) && (var(15) < 1 || var(20))
;triggerAll = (P2BodyDist x = [0,70]) && P2StateType != L
;triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
;TriggerALL = Enemy,Name = "Urien" && Enemy, AuthorName = "Froz" && Enemy, NumHelper(44)
;trigger1 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101])) && Random < (150 * (AILevel ** 2 / 64.0))
;;trigger2 = P2Dist x <= -70 && P2Dist Y >= -60
;trigger2 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (300 * (AIlevel ** 2 / 64.0))
;trigger3 = StateNo = 1205 && PrevStateNo = 1250 && AnimElemTime(1)>= 0 && Random < (333 * (AIlevel ** 2 / 64.0))
;trigger4 = StateNo = 2900 && AnimElemTime(4)>= 1 && MoveContact && Random < (333 * (AIlevel ** 2 / 64.0))

[State -1, Dangerous HeadButt (Custom Combo)]
type = ChangeState
value = 1200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && var(20) > 30
triggerAll = (P2BodyDist x = [0,70]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101])) && Random < (150 * (AILevel ** 2 / 64.0))
trigger2 = P2Dist x <= -70 && P2Dist Y >= -60
trigger3 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (200 * (AIlevel ** 2 / 64.0))
trigger4 = StateNo = 1205 && PrevStateNo = 1250 && AnimElemTime(1)>= 0 && Random < (333 * (AIlevel ** 2 / 64.0))

[State -1, Dangerous HeadButt]
type = ChangeState
value = 1250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
triggerAll = (P2BodyDist x = [0,70]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101])) && Random < (150 * (AILevel ** 2 / 64.0))
trigger1 = P2Dist x <= -80 && P2Dist Y >= -70
trigger2 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (333 * (AIlevel ** 2 / 64.0))
trigger3 = StateNo = 2900 && AnimElemTime(4)>= 1 && MoveContact && Random < (333 * (AIlevel ** 2 / 64.0))
trigger4 = StateNo = 1205 && var(20) <= 60 && AnimElemTime(1)>= 0 && Random < (333 * (AIlevel ** 2 / 64.0))

[State -1, Violence Knee Drop]
type = ChangeState
value = ifElse(Power >= 500 && Random < 75, 1350, 1300)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,70]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101])) && Random < (350 * (AILevel ** 2 / 64.0))

[State -1, Temporal Thunder]
type = ChangeState
value = ifElse(Power >= 2000 && Random < 100, 3050, 3000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && !var(20)
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Tyrant Punish]
type = ChangeState
value = 3100
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A && !var(51)
triggerall= ifelse(var(20)<=0,power>=1000,power>=0)
triggerall= !var(16) && var(15)<1
triggerall= !(enemynear,ctrl) && (p2bodydist x=[0,100]) && !(enemynear,stateno=[120,155]) && !(enemynear,statetype=A) && !(enemynear,stateno=[5100,5120])
trigger1= ctrl || stateno=21 || stateno=40 || stateno=52 || (stateno=[100,101])
trigger1= enemynear,movetype=A && random<(500+250*(var(46)=[1,3])*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)
trigger2= (stateno=210 || stateno=221 || stateno=252 || stateno=410 || stateno=440) && movehit
trigger2= p2bodydist x<=50 && random<(150+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)
trigger3= (stateno=1000 || stateno=1100) && animelemtime(3)>=2 && !(enemynear,stateno=[700,740])
trigger3= !(enemynear,stateno=[0,40]) && random<(100+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)
trigger4= (stateno=[1300,1320]) && movehit && enemynear,movetype=H && random<(100+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)

[State -1, Tyrant Punish]
type = ChangeState
value = 3150
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A && !var(51)
triggerall= ifelse(var(20)<=0,power>=2000,power>=1000)
triggerall= !var(16) && var(15)<1
triggerall= !(enemynear,ctrl) && (p2bodydist x=[0,110]) && !(enemynear,stateno=[120,155]) && !(enemynear,statetype=A) && !(enemynear,stateno=[5100,5120])
trigger1= ctrl || stateno=21 || stateno=40 || stateno=52 || (stateno=[100,101])
trigger1= enemynear,movetype=A && random<(500+250*(var(46)=[1,3])*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)
trigger2= (stateno=210 || stateno=221 || stateno=250 || stateno=252 || stateno=410 || stateno=440) && movehit
trigger2= p2bodydist x<=50 && random<(150+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)
trigger3= (stateno=1000 || stateno=1100) && animelemtime(3)>=2 && !(enemynear,stateno=[700,740])
trigger3= !(enemynear,stateno=[0,40]) && p2bodydist x<=90 && random<(100+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)
trigger4= stateno=3200 && movehit && animelemtime(7)>=0 && var(7) && random<(100+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)
trigger5= stateno=3300 && movehit && animelemtime(11)>=0 && var(7) && random<(100+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)
trigger6= (stateno=[1300,1320]) && movehit && enemynear,movetype=H && random<(100+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)

[State -1, Tyrant Punish (Custom Combo)]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = (P2BodyDist x = [0,115]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101])) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = P2Dist x <= -146 && P2Dist Y >= -20
trigger3 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Aegis Reflector]
type = ChangeState
value = 3200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && !var(20)
triggerAll = P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
triggerAll = !NumHelper(var(44))
trigger1 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 2 / 64.0))
trigger3 = NumHelper(var(44)) && Random < (300 * (AILevel ** 2 / 64.0)) && !StateNo = 1000

[State -1, Aegis Reflector]
type = ChangeState
value = 3250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && !var(20)
triggerAll = !NumHelper(var(44))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
trigger1 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101])) && Random < (30 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101])) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = P2StateType = A

[State -1, Vesuvian Burnout]
type = ChangeState
value = 3300
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 3000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && P2StateNo != 5201
triggerAll = P2Dist x >= 0 && P2BodyDist x <= 35
triggerAll = (EnemyNear, HitOver || !(EnemyNear, MoveType = H) || var(21)) && !(EnemyNear, StateNo = [150,155]) && EnemyNear, Anim != 5040
triggerAll = !(EnemyNear, StateNo = 40 && EnemyNear, Time >= 1) && !(EnemyNear, StateNo = 52 && !(EnemyNear, ctrl) && EnemyNear, PrevStateNo = [5020,5040])
triggerAll = P2StateType != A && P2StateType != L && (P2Dist y = [-48,0])
trigger1 = (ctrl || StateNo = 52 ||  stateno=21 ||  (StateNo = [100,101])) && Random < (400 * (AILevel ** 2 / 64.0))

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2
triggerAll = StateType != A && Life >= 0.5 * LifeMax
triggerAll = (EnemyNear, Life) <= 0.5 * (EnemyNear, LifeMax)
triggerAll = ctrl
trigger1 = P2Dist x >= 160 && !(EnemyNear, ctrl)
trigger1 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = P2Dist x >= 0 && P2Dist x <= 50 && !(EnemyNear, ctrl)
trigger2 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (50 * (AILevel ** 2 / 64.0))
