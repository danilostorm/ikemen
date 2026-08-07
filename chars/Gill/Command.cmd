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
name = "MeteorStrike"
command = ~D, DF, F, D, DF, F, x
time = 32

[Command]
name = "MeteorStrike"
command = ~D, DF, F, D, DF, F, y
time = 32

[Command]
name = "MeteorStrike"
command = ~D, DF, F, D, DF, F, z
time = 32

[Command]
name = "MeteorStrike"
command = ~D, DF, F, D, DF, F, ~x
time = 32

[Command]
name = "MeteorStrike"
command = ~D, DF, F, D, DF, F, ~y
time = 32

[Command]
name = "MeteorStrike"
command = ~D, DF, F, D, DF, F, ~z
time = 32


[Command]
name = "MAXMeteorStrike"
command = ~D, DF, F, D, DF, F, x+y
time = 32

[Command]
name = "MAXMeteorStrike"
command = ~D, DF, F, D, DF, F, y+z
time = 32

[Command]
name = "MAXMeteorStrike"
command = ~D, DF, F, D, DF, F, x+z
time = 32


[Command]
name = "GenesisImpact"
command = ~D, DB, B, D, DB, B, a
time = 32

[Command]
name = "GenesisImpact"
command = ~D, DB, B, D, DB, B, b
time = 32

[Command]
name = "GenesisImpact"
command = ~D, DB, B, D, DB, B, c
time = 32

[Command]
name = "GenesisImpact"
command = ~D, DB, B, D, DB, B, ~a
time = 32

[Command]
name = "GenesisImpact"
command = ~D, DB, B, D, DB, B, ~b
time = 32

[Command]
name = "GenesisImpact"
command = ~D, DB, B, D, DB, B, ~c
time = 32


[Command]
name = "MAXGenesisImpact"
command = ~D, DB, B, D, DB, B, a+b
time = 32

[Command]
name = "MAXGenesisImpact"
command = ~D, DB, B, D, DB, B, b+c
time = 32

[Command]
name = "MAXGenesisImpact"
command = ~D, DB, B, D, DB, B, a+c
time = 32


[Command]
name = "HadesOrbit"
command = ~D, DB, B, D, DF, F, x
time = 32

[Command]
name = "HadesOrbit"
command = ~D, DB, B, D, DF, F, y
time = 32

[Command]
name = "HadesOrbit"
command = ~D, DB, B, D, DF, F, z
time = 32

[Command]
name = "HadesOrbit"
command = ~D, DB, B, D, DF, F, ~x
time = 32

[Command]
name = "HadesOrbit"
command = ~D, DB, B, D, DF, F, ~y
time = 32

[Command]
name = "HadesOrbit"
command = ~D, DB, B, D, DF, F, ~z
time = 32


[Command]
name = "Jupiter'sDeal"
command = ~D, DB, B, D, DB, B, x
time = 32

[Command]
name = "Jupiter'sDeal"
command = ~D, DB, B, D, DB, B, y
time = 32

[Command]
name = "Jupiter'sDeal"
command = ~D, DB, B, D, DB, B, z
time = 32

[Command]
name = "Jupiter'sDeal"
command = ~D, DB, B, D, DB, B, ~x
time = 32

[Command]
name = "Jupiter'sDeal"
command = ~D, DB, B, D, DB, B, ~y
time = 32

[Command]
name = "Jupiter'sDeal"
command = ~D, DB, B, D, DB, B, ~z
time = 32


[Command]
name = "MAXJupiter'sDeal"
command = ~D, DB, B, D, DB, B, x+y
time = 32

[Command]
name = "MAXJupiter'sDeal"
command = ~D, DB, B, D, DB, B, y+z
time = 32

[Command]
name = "MAXJupiter'sDeal"
command = ~D, DB, B, D, DB, B, x+z
time = 32


[Command]
name = "SeraphicWing"
command = ~D, DF, F, D, DF, F, a+b
time = 32

[Command]
name = "SeraphicWing"
command = ~D, DF, F, D, DF, F, b+c
time = 32

[Command]
name = "SeraphicWing"
command = ~D, DF, F, D, DF, F, a+c
time = 32


;====================<SPECIAL MOTIONS>====================

[Command]
name = "Kinesis"
command = ~D, DF, F, x
time = 16

[Command]
name = "Kinesis"
command = ~D, DF, F, y
time = 16

[Command]
name = "Kinesis"
command = ~D, DF, F, z
time = 16

[Command]
name = "Kinesis"
command = ~D, DF, F, ~x
time = 16

[Command]
name = "Kinesis"
command = ~D, DF, F, ~y
time = 16

[Command]
name = "Kinesis"
command = ~D, DF, F, ~z
time = 16

[Command]
name = "CyberLariat"
command = ~F, D, DF, x
time = 16

[Command]
name = "CyberLariat"
command = ~F, D, DF, y
time = 16

[Command]
name = "CyberLariat"
command = ~F, D, DF, z
time = 16

[Command]
name = "CyberLariat"
command = ~F, D, DF, ~x
time = 16

[Command]
name = "CyberLariat"
command = ~F, D, DF, ~y
time = 16

[Command]
name = "CyberLariat"
command = ~F, D, DF, ~z
time = 16


[Command]
name = "PsychoHeadbutt"
command = ~D, DB, B, x
time = 16

[Command]
name = "PsychoHeadbutt"
command = ~D, DB, B, y
time = 16

[Command]
name = "PsychoHeadbutt"
command = ~D, DB, B, z
time = 16

[Command]
name = "PsychoHeadbutt"
command = ~D, DB, B, ~x
time = 16

[Command]
name = "PsychoHeadbutt"
command = ~D, DB, B, ~y
time = 16

[Command]
name = "PsychoHeadbutt"
command = ~D, DB, B, ~z
time = 16


[Command]
name = "MoonsaultKneeDrop"
command = ~F, DF, D, DB, B, a
time = 18

[Command]
name = "MoonsaultKneeDrop"
command = ~F, DF, D, DB, B, b
time = 18

[Command]
name = "MoonsaultKneeDrop"
command = ~F, DF, D, DB, B, c
time = 18

[Command]
name = "MoonsaultKneeDrop"
command = ~F, DF, D, DB, B, ~a
time = 18

[Command]
name = "MoonsaultKneeDrop"
command = ~F, DF, D, DB, B, ~b
time = 18

[Command]
name = "MoonsaultKneeDrop"
command = ~F, DF, D, DB, B, ~c
time = 18


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

[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = StateNo = 820 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, Seraphic Wing]
type = ChangeState
value = 3300
triggerAll = !AILevel
triggerAll = command = "SeraphicWing"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Hades Comet]
type = ChangeState
value = 3550
triggerAll = !AILevel
TriggerAll = NumHelper(3505) || NumHelper(3515)
triggerAll = command = "HadesOrbit"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Hades Orbit]
type = ChangeState
value = 3500
triggerAll = !AILevel
TriggerAll = !NumHelper(3505) || !NumHelper(3515)
triggerAll = command = "HadesOrbit"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Jupiter's Deal]
type = ChangeState
value = 3150
triggerAll = !AILevel
triggerAll = command = "MAXJupiter'sDeal"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Jupiter's Deal]
type = ChangeState
value = 3100
triggerAll = !AILevel
triggerAll = command = "Jupiter'sDeal"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Meteor Strike]
type = ChangeState
value = 3050
triggerAll = !AILevel
triggerAll = command = "MAXMeteorStrike"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Meteor Strike]
type = ChangeState
value = 3000
triggerAll = !AILevel
triggerAll = command = "MeteorStrike"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Moonsault Knee Drop]
type = ChangeState
value = 1300
triggerAll = !AILevel
triggerAll = command = "MoonsaultKneeDrop"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Psycho Headbutt]
type = ChangeState
value = 1200
triggerAll = !AILevel
triggerAll = command = "PsychoHeadbutt"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Cyber Lariat]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerAll = command = "CyberLariat"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Kinesis]
type = ChangeState
value = 1000
triggerAll = !AILevel
triggerAll = command = "Kinesis"
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

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
TriggerAll = !NumHelper(3505) || !NumHelper(3515)
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
trigger2 = (StateNo = 200 || StateNo = 230) && AnimElemTime(6) >= 0
trigger3 = var(4)

[State -1, Standing Medium Punch]
type = ChangeState
value = 210 + (command = "holdback") * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && (!command = "holdback")
trigger3 = var(4)

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220
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
trigger2 = StateNo = 400 && AnimElemTime(8) < 0
trigger3 = var(4)

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


[State -1, Standing Parry]
type=HitOverRide
triggerall= AILevel  && numenemy
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
TriggerAll = !var(45)
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
TriggerAll = !var(45)
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
trigger1= enemynear,hitdefattr=SC,ST,HT && random<200*(AIlevel**2/64.0)
trigger2= enemynear,movetype=A && ((enemynear,stateno=[1000,1999]) || (enemynear,stateno=[3000,3999]))
trigger2= p2bodydist x>=120 && (((enemynear,numhelper) && !numhelper(9741)) || (enemynear,numproj))
trigger2= !(enemynear,statetype=A) && random<200*(AIlevel**2/64.0)
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
trigger1= random<(ifelse((var(44)=[1,2]),enemy,numproj>=0,250))*(AIlevel**2/64.0)


[State -1, roll backward]
type=changestate
value=715
triggerall= AIlevel && numenemy
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
trigger1= random<(ifelse((var(44)=[1,2]),enemy,numproj>=0,200))*(AIlevel**2/64.0)

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

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (AILevel ** 2 / 64.0))


[State -1, Guard]
type=changestate
value=120
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
trigger1 = Random < (250 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
triggerAll = !var(45)
trigger1 = RoundState = 2 && StateType != A && (ctrl || stateno=21)
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20)
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (95 * (AILevel ** 2 / 64.0))

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
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101]))
trigger1 = (EnemyNear, MoveType = A) && (P2BodyDist x = [0,40]) && (P2Dist y = [-60,60]) && (EnemyNear, vel y >= 0)
trigger1 = (EnemyNear, StateNo = [200,699]) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,35]) && (P2Dist y = [-75,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
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
value = 210
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-80,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Quarrel Punch/Standing Normal Medium Punch]
type = ChangeState
value = 215
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,40]) && (P2Dist y = [-80,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Normal Hard Punch]
type = ChangeState
value = 220
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-100,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,53]) && (P2Dist y = [-17,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
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
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Hard Kick]
type = ChangeState
value = 250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,60]) && (P2Dist y = [-120,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,53]) && (P2Dist y = [-30,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
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
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,60]) && (P2Dist y = [-90,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || stateno=21 || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (300 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(46)=0
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,statetype=A) && !(enemynear,hitfall) && !inguarddist
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && !numhelper(1005) && random<(50+25*(var(44)=0))*(AIlevel**2/64.0)
trigger2= (stateno=230 || stateno=245) && time>=5 && movecontact && random<200*(AIlevel**2/64.0)
trigger3= stateno=235 && !animtime && ctrl && movecontact && random<500*(AIlevel**2/64.0)
trigger4= stateno=1500 && movehit && animtime=0 && enemynear,movetype=H && random<200*(AIlevel**2/64.0)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (p2bodydist x=[0,60]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,hitfall) && !(enemynear,statetype=A)
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && random<100*(AILevel**2/64.0)
trigger2= (stateno=200 || stateno=400) && !animtime && ctrl && movecontact && random<150*(AILevel**2/64.0)

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
trigger2= ctrl && enemynear,statetype=A && vel y<=2 && p2bodydist x<=60 && random<200*(AIlevel**2/64.0)


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
trigger2= ctrl && enemynear,statetype=A && vel y<=2 && random<250*(AILevel**2/64.0)

[State -1, Kinesis]
type = ChangeState
value = 1000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = !Numhelper(1005)
triggerAll = (p2bodydist x >=50)&&(p2bodydist y=[-80,5]) && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Cyber Lariat]
type = ChangeState
value = 1100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,115]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = StateNo = 1205 && AnimElemTime(1)>= 0 && Random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Psycho HeadButt]
type = ChangeState
value = 1200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,70]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (150 * (AILevel ** 2 / 64.0))
trigger3 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (250 * (AIlevel ** 2 / 64.0))
trigger4 = StateNo = 1205 && PrevStateNo = 1250 && AnimElemTime(1)>= 0 && Random < (333 * (AIlevel ** 2 / 64.0))
trigger5 = StateNo = 2900 && AnimElemTime(4)>= 1 && MoveContact && Random < (333 * (AIlevel ** 2 / 64.0))


[State -1, Moonsault Knee Drop]
type = ChangeState
value = 1300
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,70]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 || stateno=21 || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))


[State -1, Hades Orbit]
type = ChangeState
value = 3500
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && !Numhelper(3505) && !Numhelper(3515) &&var(20)<=60 && power >= 1000 && random < (250 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])
triggerall=(p2bodydist x =[70,120])&&(p2bodydist y=[-110,5])&&(enemynear,statetype!=C)
triggerall=p2movetype != A && life > 500
trigger1=ctrl || StateNo=40 || StateNo=52 || stateno=21 || (StateNo=[100,101])
trigger2=var(6)&&movehit&&random<100

[State -1, Jupiter's Deal]
type=ChangeState
value=Ifelse(power>=2000&&random<=350,3150,3100)
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && var(20)<=0 && power >= 1000 && random < (250 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) && (enemynear,statetype != C)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])
triggerall=(p2bodydist x =[0,50])&&(p2bodydist y=[-50,5])
triggerall=life > 500
trigger1=ctrl || StateNo=40 || StateNo=52 || stateno=21 || (StateNo=[100,101])
trigger2=var(6)&&movehit&&random<200

[State -1, Seraphic Wing]
type=ChangeState
value=Ifelse(power>=3000&&random<=400,3300,3300)
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && var(20)<=0 && power >= 3000 && random < (350 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(p2bodydist x =[70,400])&&(p2bodydist y=[-50,5])
triggerall=life > 500
trigger1=ctrl || StateNo=40 || StateNo=52 || stateno=21 || (StateNo=[100,101])
trigger2=var(6)&&movehit&&random<250
