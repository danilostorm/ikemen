; _________________________________________
;| Alex by varo_hades                      |
; ØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØØ
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;=====================<POWER BOMB>==========================
[StateDef 1000]
type = S
physics = S
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,0
channel = 0

[State 1000, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 6*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = 14*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = 1*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
trigger2 = animelemtime(7) = 0
x = -8*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -5*const(size.xscale)

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2) = 0
value = S1,1
channel = -1

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = prevstateno = 40
trigger1 = Time = 0
value = SC, AT
time = 2

[State 1000, 1]
type = HitDef
triggerall = var(18) = 0
triggerall = Animelem = 3
triggerall = P2BodyDist X = [-1,ifelse(!var(10),77,ifelse(var(10)=1,66,56))]
trigger1 = NumTarget
trigger1 = Target,StateNo = 1203
attr = S, ST
hitflag = M+
priority = 6, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 1050
hitSound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 1000

[State 1000, HitDef]
type = HitDef
trigger1 = var(18) = 0
trigger1 = Animelem = 3
trigger1 = P2BodyDist X = [-1,ifelse(!var(10),77,ifelse(var(10)=1,66,56))]
trigger1 = P2MoveType != H
trigger1 = P2StateNo != 40
trigger1 = P2StateNo != [150,155]
attr = S, ST
hitflag = M-
priority = 6, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 1050
hitSound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 1000

[State 1000, Ctrlset]
type = Ctrlset
trigger1 = AnimelemTime(9) >= 2
value = 1

[State 1000]
type = StateTypeSet
trigger1 = AnimelemTime(4) >= 0
movetype = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;PowerbombCapture
[Statedef 1050]
type    = S
movetype= A
physics = N
anim = 1050

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=5
value = S1000,0
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State -2, TargetState]
type = TargetState
Trigger1 = time = 0
value = 1055

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 1200, 9]
type = Width
trigger1 = 1
edge = ceil(60*const(size.xscale)),0

[State -2, posadd]
type = posadd
trigger1 = time = 0
x = -3*const(size.xscale)

[State 810, posadd]
type = posadd
trigger1 = AnimElem = 5
x = ceil(-25*const(size.xscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 1055
pos = ceil(90*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 1055
pos = ceil(90*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 1055
pos = ceil(70*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4 && P2StateNo = 1055
pos = ceil(40*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5 && P2StateNo = 1055
pos = ceil(60*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6 && P2StateNo = 1055
pos = ceil(39*const(size.xscale)), ceil(-51*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 7 && P2StateNo = 1055
pos = ceil(43*const(size.xscale)), ceil(-72*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8 && P2StateNo = 1055
pos = ceil(31*const(size.xscale)), ceil(-140*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 9 && P2StateNo = 1055
pos = ceil(13*const(size.xscale)), ceil(-148*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 10 && P2StateNo = 1055
pos = ceil(5*const(size.xscale)), ceil(-155*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = animelemtime(11) >= 0  && P2StateNo = 1055
pos = 0, ceil(-142*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 1065
pos = ceil(90*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 1065
pos = ceil(90*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 1065
pos = ceil(85*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4 && P2StateNo = 1065
pos = ceil(100*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5 && P2StateNo = 1065
pos = ceil(60*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6 && P2StateNo = 1065
pos = ceil(50*const(size.xscale)), ceil(-18*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 7 && P2StateNo = 1065
pos = ceil(60*const(size.xscale)), ceil(-30*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8 && P2StateNo = 1065
pos = ceil(40*const(size.xscale)), ceil(-118*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 9 && P2StateNo = 1065
pos = ceil(16*const(size.xscale)), ceil(-143*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 10 && P2StateNo = 1065
pos = ceil(-12*const(size.xscale)), ceil(-157*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = animelemtime(11) >= 0  && P2StateNo = 1065
pos = ceil(-4*const(size.xscale)), ceil(-70*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 1075
pos = ceil(90*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 1075
pos = ceil(90*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 1075
pos = ceil(80*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4 && P2StateNo = 1075
pos = ceil(50*const(size.xscale)), ceil(20*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5 && P2StateNo = 1075
pos = ceil(35*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6 && P2StateNo = 1075
pos = ceil(44*const(size.xscale)), ceil(12*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 7 && P2StateNo = 1075
pos = ceil(47*const(size.xscale)), ceil(-15*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8 && P2StateNo = 1075
pos = ceil(-8*const(size.xscale)), ceil(-227*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 9 && P2StateNo = 1075
pos = ceil(-9*const(size.xscale)), ceil(-66*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 10 && P2StateNo = 1075
pos = ceil(-12*const(size.xscale)), ceil(-75*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = animelemtime(11) >= 0  && P2StateNo = 1075
pos = ceil(-9*const(size.xscale)), ceil(-237*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && (P2StateNo = 1085||P2StateNo = 1095)
pos = ceil(120*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && (P2StateNo = 1085||P2StateNo = 1095)
pos = ceil(120*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && (P2StateNo = 1085||P2StateNo = 1095)
pos = ceil(110*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4 && (P2StateNo = 1085||P2StateNo = 1095)
pos = ceil(90*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5 && (P2StateNo = 1085||P2StateNo = 1095)
pos = ceil(90*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6 && (P2StateNo = 1085||P2StateNo = 1095)
pos = ceil(40*const(size.xscale)), ceil(-85*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 7 && (P2StateNo = 1085||P2StateNo = 1095)
pos = ceil(60*const(size.xscale)), ceil(-105*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8 && (P2StateNo = 1085||P2StateNo = 1095)
pos = ceil(55*const(size.xscale)), ceil(-195*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 9 && (P2StateNo = 1085||P2StateNo = 1095)
pos = ceil(20*const(size.xscale)), ceil(-140*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 10 && (P2StateNo = 1085||P2StateNo = 1095)
pos = ceil(-5*const(size.xscale)), ceil(-160*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = animelemtime(11) >= 0  && (P2StateNo = 1085||P2StateNo = 1095)
pos = 0, ceil(-100*const(size.yscale))

[State 1200, Velocity]
type = VelSet
trigger1 = var(10) = [0,2]
trigger1 = AnimElemtime(9) = 0
x = 3.0
y = -11.0-(2.0*var(10))

[State 1200, Velocity]
type = VelSet
trigger1 = var(10) = 3
trigger1 = AnimElemtime(9) = 0
x = 3.0
y = -15.0

[State 40, Dust Helper]
type = Helper
trigger1 = AnimElemtime(9) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1200, veladd]
type = veladd
trigger1 = animelemtime(9) >= 0
y = .75

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S41,0
volume = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S2,800
volume = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 1200, StateType]
type = StateTypeSet
trigger1 = AnimElem = 9
StateType = A
physics = N

[State 810, State End]
type = ChangeState
triggerall = animelemtime(9) > 0
trigger1 = vel Y > 0
trigger1 = pos Y >= 0
value = 1051

;
[Statedef 1051]
type    = S
movetype= A
physics = N
anim = 1051

[State 810, TargetState]
type = TargetState
Trigger1 = time = 0
value = 1056

[State 1200, 9]
type = Width
trigger1 = 1
edge = ceil(100*const(size.xscale)),0

[State 1200, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 1056
pos = ceil(80*const(size.xscale)), ceil(-125*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 1056
pos = ceil(80*const(size.xscale)), ceil(-50*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 1056
pos = ceil(80*const(size.xscale)), ceil(-25*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 1066
pos = ceil(76*const(size.xscale)), ceil(-120*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 1066
pos = ceil(75*const(size.xscale)), ceil(-20*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 1066
pos = ceil(57*const(size.xscale)), ceil(-5*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 1076
pos = ceil(65*const(size.xscale)), ceil(-220*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 1076
pos = ceil(105*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 1076
pos = ceil(105*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && (P2StateNo = 1086||P2StateNo = 1096)
pos = ceil(60*const(size.xscale)), ceil(-80*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && (P2StateNo = 1086||P2StateNo = 1096)
pos = ceil(85*const(size.xscale)), ceil(-50*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && (P2StateNo = 1086||P2StateNo = 1096)
pos = ceil(70*const(size.xscale)), 0

[State -2, HitAdd]
type = HitAdd
trigger1 = animelemtime(3) = 0
value = 1

[State -2, PowerAdd]
type = PowerAdd
trigger1 = var(10) = [0,2]
trigger1 = animelemtime(3) = 0
value = 200

[State 811, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 0
trigger1 = animelemtime(3) = 0
value = -134

[State 811, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 1
trigger1 = animelemtime(3) = 0
value = -154

[State 811, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 2
trigger1 = animelemtime(3) = 0
value = -174

[State -2, TargetPoweradd]
type = TargetPoweradd
trigger1 = var(10) = [0,2]
trigger1 = animelemtime(3) = 0
value = 40

[State 811, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 3
trigger1 = animelemtime(3) = 0
value = -194

[State -2, VarAdd]
type = VarAdd
trigger1 = animelemtime(3) = 0
fvar(15) = 1

[State -2, VarAdd]
type = VarAdd
trigger1 = fvar(23) > 1.0
trigger1 = animelemtime(3) = 0
fvar(23) = -0.0625

[State -2, VarAdd]
type = VarAdd
trigger1 = fvar(24) > 1.0
trigger1 = animelemtime(3) = 0
fvar(24) = -0.0625

[State 0, Impact Dust]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = 75,0
ownPal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S820,2
volume = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State -2, Envshake]
type = Envshake
trigger1 = var(10) = [0,2]
trigger1 = animelemtime(3) = 2
time = 16
freq = 120
ampl = -8-var(10)

[State -2, Envshake]
type = Envshake
trigger1 = var(10) = 3
trigger1 = animelemtime(3) = 2
time = 20
freq = 140
ampl = -10

[State 810, State End]
type = ChangeState
trigger1 = animtime = 0
value = 1052

;
[Statedef 1052]
type    = A
movetype= A
physics = N
anim = 42

[State 1200, Velocity]
type = VelSet
trigger1 = var(10) = [0,2]
trigger1 = time = 0
x = -3.0
y = -8.8-var(10)*1.0

[State 1200, Velocity]
type = VelSet
trigger1 = var(10) = 3
trigger1 = time = 0
x = -3.0
y = -10.8

[State 1200, veladd]
type = veladd
trigger1 = 1
y = .60

[State 810, State End]
type = ChangeState
trigger1 = vel Y > 0
trigger1 = pos Y >= 0
value = 52

;
[Statedef 1055]
type    = S
movetype= H
physics = N
ctrl = 0

[State 810, 0]
type = changeanim2
trigger1 = time = 0
value = 1055

[State 810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 1200, StateType]
type = StateTypeSet
trigger1 = AnimElem = 4
StateType = A
physics = N

;
[Statedef 1056]
type    = A
movetype= H
physics = N
ctrl = 0

[State 810, 0]
type = changeanim2
trigger1 = time = 0
value = 1056

[State 810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 1200, Velocity]
type = VelSet
trigger1 = AnimElemtime(4) = 0
x = -3.0
y = -10.0

[State 1200, veladd]
type = veladd
trigger1 = animelemtime(4) >= 0
y = .60

[State 811, Changestate]
type = selfstate
trigger1 = animelemtime(4) > 0
trigger1 = vel Y > 0
trigger1 = pos Y >= -15
value = 5100

;========================<EX POWER BOMB>=============================
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 84

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,0
channel = 0

[State 1000, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 6*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = 14*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = 1*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
trigger2 = animelemtime(7) = 0
x = -8*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -5*const(size.xscale)

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2) = 0
value = S1,1
channel = -1

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = prevstateno = 40
trigger1 = Time = 0
value = SC, AT
time = 2

[State 1000, 1]
type = HitDef
triggerall = var(18) = 0
triggerall = Animelem = 3
triggerall = P2BodyDist X = [-1,ifelse(!var(10),77,ifelse(var(10)=3,80,56))]
trigger1 = NumTarget
trigger1 = Target,StateNo = 1203
attr = S, ST
hitflag = M+
priority = 6, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 1050
hitSound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 1000

[State 1000, HitDef]
type = HitDef
trigger1 = var(18) = 0
trigger1 = Animelem = 3
trigger1 = P2BodyDist X = [-1,ifelse(!var(10),77,ifelse(var(10)=2,80,56))]
trigger1 = P2MoveType != H
trigger1 = P2StateNo != 40
trigger1 = P2StateNo != [150,155]
attr = S, ST
hitflag = M-
priority = 6, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 1050
hitSound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 1000

[State 1000, Ctrlset]
type = Ctrlset
trigger1 = AnimelemTime(9) >= 2
value = 1

[State 1000]
type = StateTypeSet
trigger1 = AnimelemTime(4) >= 0
movetype = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;========================<SPIRAL D.D.T.>=============================
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = time = 5
statetype = A
movetype = A
physics = N

[State 40, Dust Helper]
type = Helper
trigger1 = time = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 5
x = 2
y = -6

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 5
x = 3
y = -6

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 5
x = 4
y = -6

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 8
y = -5

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 10
y = -4

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 12
y = -2

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 14
y = -1

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 17
y = 1

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 20
y = 2

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 23
y = 4

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 26
y = 5

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 29
y = 7

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 50,3

[State 1100, throw]
type = HitDef
Trigger1 = p2stateno=130
attr = A, ST
hitflag = M
guardflag = -1
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
sprpriority = 1
p2facing = 1
p1stateno = 1120
p2stateno = 1125
fall = 1
fall.recover = 1

[State 1100, throw]
type = HitDef
Triggerall = Time = 0
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2stateno != [150,152]
attr = A, ST
hitflag = M
guardflag = -1
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
sprpriority = 1
p2facing = 1
p1stateno = 1120
p2stateno = 1125
fall = 1
fall.recover = 1

[State 1100, throw]
type = HitDef
trigger1 = p2stateno != [150,152]
Trigger1 = Time = 0
attr = A, ST
hitflag = MAFD
guardflag = -1
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
sprpriority = 1
p2facing = 1
p1stateno = 1120
p2stateno = 1125
fall = 1
fall.recover = 1

[State 1100,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1110
ctrl = 0

;
[Statedef 1110]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 1110
juggle = 0
poweradd = 0

;52 add landing smoke
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 52,0

[State 52, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0,ChangeState]
type = Posset
trigger1 = time >= 0
y = 0

[State 0,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;
[Statedef 1120]
type = A
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1120

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem = 3
value = -2

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem = 7
value = 2

[State 0, PosAdd]
type = PosAdd
trigger1 =frontedgebodydist < 70
trigger1 = time = 0
x = -70

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 40

[State 0, posset]
type = posset
trigger1 = animelem = 1
y = target,const(size.head.pos.y)

[State 0, TargetBind]
type = TargetBind
trigger1 = time= 0
time = 1
pos = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 111
value = 2,800

[State 0, VelSet]
type = VelSet
trigger1 = time >= 36
x = 0
y = 3

[State 0, VelSet]
type = VelSet
trigger1 = time >= 40
y = 4

[State 0, VelSet]
type = VelSet
trigger1 = time >= 44
y = 5

[State 0, VelSet]
type = VelSet
trigger1 = time >= 48
y = 6

[State 0, VelSet]
type = VelSet
trigger1 = time >= 52
y = 7

[State 0, VelSet]
type = VelSet
trigger1 = time >= 56
y = 8

[State 0,ChangeState]
type = ChangeState
trigger1 = time >= 40
trigger1 = Pos Y >= -40
trigger1 = Vel Y > 0
value = 1140
ctrl = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 4
x = 30

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = 30

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 8
x = -60

;
[Statedef 1140]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1130

[State -2, PowerAdd]
type = PowerAdd
trigger1 = var(10) = [0,2]
trigger1 = time = 0
value = 200

[State 0, LifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 0
trigger1 = time = 0
value = -130

[State 0, LifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 1
trigger1 = time = 0
value = -150

[State 0, LifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 2
trigger1 = time = 0
value = -170

[State 0, LifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 3
trigger1 = time = 0
value = -190

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 4,1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 15
freq = 100
ampl = -10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 820,2

[State 0, Impact Dust]
type = Helper
trigger1 = time = 0
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = 0,50
ownPal = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;
[Statedef 1125]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1125

[State 0, VelSet]
type = VelSet
trigger1 = time >= 36
x = 0
y = 3

[State 0, VelSet]
type = VelSet
trigger1 = time >= 40
y = 4

[State 0, VelSet]
type = VelSet
trigger1 = time >= 44
y = 5

[State 0, VelSet]
type = VelSet
trigger1 = time >= 48
y = 6

[State 0, VelSet]
type = VelSet
trigger1 = time >= 52
y = 7

[State 0, VelSet]
type = VelSet
trigger1 = time >= 56
y = 8

[State 0, changestate]
type = changestate
trigger1 = p2stateno = 1140
value = 1135

;
[Statedef 1135]
type = A
movetype = I
physics = N
velset = 0, 0
ctrl = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time > 5
statetype = A
movetype = H
physics = N

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 5
x = -30

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1135

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0,selfState]
type = selfState
trigger1 = animtime = 0
value = 5110
ctrl = 0

;========================<EX SPIRAL D.D.T.>=============================
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 71

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = time = 5
statetype = A
movetype = A
physics = N

[State 40, Dust Helper]
type = Helper
trigger1 = time = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 5
x = 6
y = -6

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 8
y = -5

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 10
y = -4

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 12
y = -2

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 14
y = -1

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 17
y = 1

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 20
y = 2

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 23
y = 4

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 26
y = 5

[State 1100, VelSet]
type = VelSet
trigger1 = time >= 29
y = 7

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 50,3

[State 1100, throw]
type = HitDef
Trigger1 = p2stateno=130
attr = A, ST
hitflag = M
guardflag = -1
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
sprpriority = 1
p2facing = 1
p1stateno = 1120
p2stateno = 1125
fall = 1
fall.recover = 1

[State 1100, throw]
type = HitDef
Triggerall = Time = 0
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2stateno != [150,152]
attr = A, ST
hitflag = M
guardflag = -1
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
sprpriority = 1
p2facing = 1
p1stateno = 1120
p2stateno = 1125
fall = 1
fall.recover = 1

[State 1100, throw]
type = HitDef
trigger1 = p2stateno != [150,152]
Trigger1 = Time = 0
attr = A, ST
hitflag = MAFD
guardflag = -1
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
sprpriority = 1
p2facing = 1
p1stateno = 1120
p2stateno = 1125
fall = 1
fall.recover = 1

[State 1100,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1110
ctrl = 0

;=====================<FLASH CHOP>==========================
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=2
value = S1200,0
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = prevstateno = 40 && var(3) = 1
trigger1 = Time = 0
value = SC, AT
time = 2

;[State 0,Explod]
;type = Explod
;trigger1 = var(10) = 0
;trigger1 = animelem = 3
;anim = 7100
;sprpriority = 2
;postype = p1
;pos = 41,-70
;bindtime = 1
;pausemovetime = 0
;removetime = -2
;ignorehitpause = 1
;scale = 0.5,0.8
;vel = 0,0
;ownpal = 1
;supermove = 0
;persistent = 0
;
;[State 0,Explod]
;type = Explod
;trigger1 = var(10) = 1
;trigger1 = animelem = 3
;anim = 7100
;sprpriority = 2
;postype = p1
;pos = 51,-70
;bindtime = 1
;pausemovetime = 0
;removetime = -2
;ignorehitpause = 1
;scale = 0.5,0.8
;vel = 0,0
;ownpal = 1
;supermove = 0
;persistent = 0
;
;[State 0,Explod]
;type = Explod
;trigger1 = var(10) = 2
;trigger1 = animelem = 3
;anim = 7100
;sprpriority = 2
;postype = p1
;pos = 61,-70
;bindtime = 1
;pausemovetime = 0
;removetime = -2
;ignorehitpause = 1
;scale = 0.5,0.8
;vel = 0,0
;ownpal = 1
;supermove = 0
;persistent = 0

[state -2, helper]
type = helper
trigger1 = animelemtime(6) = 0
pos = 0,0
postype = p1
stateno = 1240
ID = 1240
helpertype = normal
keyctrl = 0
name = "îÚÇ—ìπãÔîjâÛÉwÉãÉpÅ["
ignorehitpause = 1
persistent = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 350, 3]
type = posadd
trigger1 = time = 0
x = -8*const(size.xscale)

[State 350, 3]
type = posadd
trigger1 = animelemtime(4) = 0
x = 8*const(size.xscale)

[State 350, 3]
type = posadd
trigger1 = animelemtime(5) = 0
x = 16*const(size.xscale)

[State 350, 3]
type = posadd
trigger1 = var(10) = 0
trigger1 = animelemtime(6) = 0
x = 4*const(size.xscale)
persistent = 0

[State 350, 3]
type = posadd
trigger1 = var(10) = 0
trigger1 = animelemtime(7) = 0
x = 4*const(size.xscale)
persistent = 0

[State 350, 3]
type = posadd
trigger1 = var(10) = 1
trigger1 = animelemtime(6) = 0
x = 12*const(size.xscale)
persistent = 0

[State 350, 3]
type = posadd
trigger1 = var(10) = 1
trigger1 = animelemtime(7) = 0
x = 12*const(size.xscale)
persistent = 0

[State 350, 3]
type = posadd
trigger1 = var(10) = 2
trigger1 = animelemtime(6) = 0
x = 20*const(size.xscale)
persistent = 0

[State 350, 3]
type = posadd
trigger1 = var(10) = 2
trigger1 = animelemtime(7) = 0
x = 20*const(size.xscale)
persistent = 0

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 10, ifElse(var(10), 10, 10)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 122, ifElse(var(10), 116, 104)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Up
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.5*const(size.xscale),0
ground.cornerPush.velOff = 0
guard.velocity = -15.5*const(size.xscale)
guard.cornerPush.velOff = 0
air.velocity = -5.5*const(size.xscale),-8.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.60*const(size.yscale)
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
P2facing = 1
id = 1200

[State 350, 3]
type = posadd
trigger1 = animelemtime(8) = 0
x = 4*const(size.xscale)
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S1,2
volume = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 200, Ctrlset]
type = Ctrlset
trigger1 = AnimelemTime(15) >= 0
value = 1

[State 920]
type = StateTypeSet
trigger1 = AnimelemTime(8) >= 0
movetype = I

[State 350, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;FlashProj
[Statedef 1240]
type = S
movetype = A
ctrl = 0
anim = 1240

[State -2, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0,0

[State -2, HitDef]
type = HitDef
trigger1 = 1
attr = S, SP
hitflag = P
priority = 6,Hit
getpower = 0
givepower = 0
pausetime = 0,0
sparkno = -1
numhits = 0
guard.dist = 0
p1stateno = 1245

[state -2, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AP

[state -2, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA,AP,AT
stateno = 1245

[State -2, DestroySelf]
type = DestroySelf
triggerall = root,var(27) = 0
trigger1 = Ishelper(1240)
trigger1 = root,stateno = 1200
trigger1 = root,animelemtime(8) = 0
trigger2 = Ishelper(1241)
trigger2 = root,stateno = 1210
trigger2 = root,animelemtime(8) = 0
trigger3 = Ishelper(1242)
trigger3 = root,stateno = 1220
trigger3 = root,animelemtime(8) = 0
trigger4 = Ishelper(1243)
trigger4 = root,stateno = 1230
trigger4 = root,animelemtime(7) = 0
trigger5 = Ishelper(1244)
trigger5 = root,stateno = 1230
trigger5 = root,animelemtime(8) = 0

[State -2, DestroySelf]
type = DestroySelf
trigger1 = root,stateno != [1200,1230]
trigger2 = root,movetype = H

;
[Statedef 1245]
type = S
movetype = I
ctrl = 0
anim = 9999

[State -2, DestroySelf]
type = DestroySelf
trigger1 = time = 0

;=====================<EX FLASH CHOP>==========================
[StateDef 1230]
type = S
physics = N
moveType = A
anim = 1230
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 84

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=2
value = S1200,0
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
time = 1
value = SCA

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = prevstateno = 40 && var(3) = 1
trigger1 = Time = 0
value = SC, AT
time = 2

;[State 0,Explod]
;type = Explod
;trigger1 = animelem = 3
;anim = 7101
;sprpriority = 2
;postype = p1
;pos = 61,-70
;bindtime = 1
;pausemovetime = 0
;removetime = -2
;ignorehitpause = 1
;scale = 0.5,0.8
;vel = 0,0
;ownpal = 1
;supermove = 0
;persistent = 0

[state -2, helper]
type = helper
trigger1 = animelemtime(6) = 0
pos = 0,0
postype = p1
stateno = 1240
ID = 1243
helpertype = normal
keyctrl = 0
name = "îÚÇ—ìπãÔîjâÛÉwÉãÉpÅ["
ignorehitpause = 1
persistent = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 350, 3]
type = posadd
trigger1 = time = 0
x = -8*const(size.xscale)

[State 350, 3]
type = posadd
trigger1 = animelemtime(4) = 0
x = 8*const(size.xscale)

[State 350, 3]
type = posadd
trigger1 = animelemtime(6) = 0
x = 8*const(size.xscale)
persistent = 0

[State 350, 3]
type = posadd
trigger1 = animelemtime(6) = 1
x = 8*const(size.xscale)
persistent = 0

[State 350, 3]
type = posadd
trigger1 = animelemtime(7) = 0
x = 8*const(size.xscale)
persistent = 0

[State 350, 3]
type = posadd
trigger1 = animelemtime(7) = 1
x = 8*const(size.xscale)
persistent = 0

[State 350, 3]
type = posadd
trigger1 = animelemtime(5) = 0
x = 16*const(size.xscale)

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Animelem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 45 < 7, 7, fvar(11) * 45)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
animType = Hard
air.animType = Up
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.5*const(size.xscale),0
ground.cornerPush.velOff = 0
guard.velocity = -15.5*const(size.xscale)
guard.cornerPush.velOff = 0
air.velocity = -6.5*const(size.xscale),-8.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.60*const(size.yscale)
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
P2facing = 1
id = 1230

[state -2, helper]
type = helper
trigger1 = animelemtime(7) = 0
pos = 0,0
postype = p1
stateno = 1240
ID = 1244
helpertype = normal
keyctrl = 0
name = "îÚÇ—ìπãÔîjâÛÉwÉãÉpÅ["
ignorehitpause = 1
persistent = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Animelem = 7
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
animType = diagup
air.animType = diagup
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.5*const(size.xscale),-8.0*const(size.yscale)
ground.cornerPush.velOff = 0
guard.velocity = -15.5*const(size.xscale)
guard.cornerPush.velOff = 0
air.velocity = -6.5*const(size.xscale),-8.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.60*const(size.yscale)
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
P2facing = 1
id = 1231

[State 350, 3]
type = posadd
trigger1 = animelemtime(8) = 0
x = 8*const(size.xscale)

[State 200, Ctrlset]
type = Ctrlset
trigger1 = AnimelemTime(15) >= 0
value = 1

[State 920]
type = StateTypeSet
trigger1 = AnimelemTime(8) >= 0
movetype = I

[State 350, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=====================<AIR STAMPEDE>==========================
[StateDef 1300]
type = S
physics = S
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=2
value = S4,2
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 0, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = animelemtime(2) = 0
x = 2.75*const(size.xscale)
y = -10.0*const(size.yscale)

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = animelemtime(2) = 0
x = 4.75*const(size.xscale)
y = -11.0*const(size.yscale)

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = animelemtime(2) = 0
x = 6.95*const(size.xscale)
y = -11.5*const(size.yscale)

[State 1200, veladd]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 1.0*const(size.yscale)

[State 1200, StateType]
type = StateTypeSet
trigger1 = animelemtime(2) >= 0
StateType = A
physics = N

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(2) < 0
value = SCA, AT

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(2) < 0
value2 = C, AA

[State 350, 3]
type = posadd
trigger1 = animelemtime(2) = 0
x = ceil(25*const(size.xscale))
y = ceil(-40*const(size.yscale))

[State 350, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = AnimElem = 2
value = s41, 0
channel = -1

[State 1000, ChangeState]
type = ChangeState
trigger1 = animelemtime(2) > 0
trigger1 = vel Y > 0
trigger1 = pos Y >= 0
value = 1350

;StompLand1
[Statedef 1350]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1350

[State -2, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S820,2

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State -2, playerpush]
type = playerpush
trigger1 = AnimElemTime (2) < 0
value = 0

[State -2, ï®óùìIÇ»ÉLÉÉÉâÇÃïù]
type = Width
trigger1 = AnimElemTime (13) < 0
value = ceil(-10*const(size.xscale)),ceil(-10*const(size.xscale))
ignorehitpause = 1

[State 350, 3]
type = posadd
trigger1 = animelemtime(2) = 0
x = ceil(13*const(size.xscale))

[State 52, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = , NT,ST,HT
time = 1

[State 1100, HitDef 1]
type = HitDef
triggerall = prevstateno = 1300
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 160, ifElse(var(10), 140, 120)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 160, ifElse(var(10), 140, 120)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0,10.0*const(size.yscale)
ground.cornerPush.velOff = 0
guard.velocity = -12.5*const(size.xscale)*ifelse(p2dist X>0,1,-1)
guard.cornerPush.velOff = 0
air.velocity = 0,10.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.50*const(size.yscale)
fall = 1
down.bounce = 1
air.fall = 1
air.recover = 0
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -47
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
P2facing = ifelse(p2dist X>0,1,-1)
id = 1350

[State 1100, HitDef 1]
type = HitDef
triggerall = prevstateno = 1330
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 180 < 7, 7, fvar(11) * 180)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0,10.0*const(size.yscale)
ground.cornerPush.velOff = 0
guard.velocity = -12.5*const(size.xscale)*ifelse(p2dist X>0,1,-1)
guard.cornerPush.velOff = 0
air.velocity = 0,10.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.50*const(size.yscale)
fall = 1
down.bounce = 1
air.fall = 1
air.recover = 0
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -47
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
P2facing = ifelse(p2dist X>0,1,-1)
id = 1350

[State 1600, ChangeState]
type = ChangeState
trigger1 = numtarget(1350)
trigger1 = target(1350),stateno = [1360,1371]
value = 1355

[State 1500, CtrlSet]
type = CtrlSet
trigger1 = animelemtime(9) = 1
value = 1

[State 52, 4]
type = ChangeState
trigger1 = P2dist X < 0
trigger1 = AnimElemTime(9) >= 1
value = 0
ctrl = 1

[State 920]
type = StateTypeSet
trigger1 = AnimelemTime(2) >= 0
movetype = I

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Target
[Statedef 1355]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1355

[State 350, 3]
type = posadd
trigger1 = animelemtime(2) = 0
x = ceil(13*const(size.xscale))

[State 52, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State -2, ï®óùìIÇ»ÉLÉÉÉâÇÃïù]
type = Width
trigger1 = AnimElemTime (13) < 0
value = ceil(-10*const(size.xscale)),ceil(-10*const(size.xscale))
ignorehitpause = 1

[State -2, VarAdd]
type = VarAdd
triggerall = numtarget
trigger1 = target,stateno = [1360,1361]
trigger1 = target,time = 0
trigger2 = target,stateno = [1370,1371]
trigger2 = target,time = 5
fvar(15) = 1

[State -2, VarAdd]
type = VarAdd
triggerall = numtarget
triggerall = fvar(23) > 1.0
trigger1 = target,stateno = [1360,1361]
trigger1 = target,time = 0
trigger2 = target,stateno = [1370,1371]
trigger2 = target,time = 5
fvar(23) = -0.0625

[State -2, VarAdd]
type = VarAdd
triggerall = numtarget
triggerall = fvar(24) > 1.0
trigger1 = target,stateno = [1360,1361]
trigger1 = target,time = 0
trigger2 = target,stateno = [1370,1371]
trigger2 = target,time = 5
fvar(24) = -0.0625

[State -2, Envshake]
type = Envshake
triggerall = numtarget
trigger1 = target,stateno = [1360,1361]
trigger1 = target,time = 2
trigger2 = target,stateno = [1370,1371]
trigger2 = target,time = 7
time = 14
freq = 120
ampl = -8

[State 1500, CtrlSet]
type = CtrlSet
trigger1 = animelemtime(9) = 1
value = 1

[State 52, 4]
type = ChangeState
trigger1 = P2dist X < 0
trigger1 = AnimElemTime(9) >= 1
value = 0
ctrl = 1

[State 920]
type = StateTypeSet
trigger1 = AnimelemTime(3) >= 0
movetype = I

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Target 2
[Statedef 1360]
type    = L
movetype= H
physics = N
ctrl = 0
velset = 0,0
SprPriority = -1

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 5080, 3]
type = ChangeAnim2
trigger1 = time = 0
value = 1360

[State 810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1200, Velocity]
type = VelSet
trigger1 = animtime = 0
x = -3.0

[State 5080, 4]
type = SelfState
trigger1 = animtime = 0
value = 5100

;Target 3
[Statedef 1361]
type    = L
movetype= H
physics = N
ctrl = 0
velset = 0,0
SprPriority = -1

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 5080, 3]
type = ChangeAnim2
trigger1 = time = 0
value = 1361

[State 810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1200, Velocity]
type = VelSet
trigger1 = AnimElemtime(4) = 0
x = -4.0

[State 1200, Velocity]
type = VelMul
trigger1 = 1
x = .90

[State 811, Changestate]
type = selfstate
trigger1 = animtime = 0
value = 5110

;Target 4
[Statedef 1370]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0
SprPriority = -1

[State 5080, 3]
type = ChangeAnim
trigger1 = Time < 5
value = 5012

[State 52, 2]
type = PosSet
trigger1 = Time = 5
y = 0

[State 1200, StateType]
type = StateTypeSet
trigger1 = time = 5
StateType = L

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 5080, 3]
type = ChangeAnim2
trigger1 = time = 5
value = 1370

[State 810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1200, Velocity]
type = VelSet
trigger1 = anim != 5012
trigger1 = animtime = 0
x = -3.0

[State 5080, 4]
type = SelfState
trigger1 = anim != 5012
trigger1 = animtime = 0
value = 5100

;Target 5
[Statedef 1371]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0
SprPriority = -1

[State 5080, 3]
type = ChangeAnim
trigger1 = Time < 5
value = 5012

[State 52, 2]
type = PosSet
trigger1 = Time = 5
y = 0

[State 1200, StateType]
type = StateTypeSet
trigger1 = time = 5
StateType = L

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 5080, 3]
type = ChangeAnim2
trigger1 = time = 5
value = 1371

[State 810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1200, Velocity]
type = VelSet
trigger1 = anim != 5012
trigger1 = AnimElemtime(4) = 0
x = -4.0

[State 1200, Velocity]
type = VelMul
trigger1 = 1
x = .90

[State 811, Changestate]
type = selfstate
trigger1 = anim != 5012
trigger1 = animtime = 0
value = 5110

;========================<EX AIR STAMPEDE>=============================
[StateDef 1330]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 84

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=2
value = S4,2
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 0, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 350, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = AnimElem = 2
value = s41, 0
channel = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(2) >= 0
trigger1 = vel y < 0
x = floor((p2dist X)/15)

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(2) = 0
y = -11.5*const(size.yscale)

[State 1200, veladd]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 1.0*const(size.yscale)

[State 1200, StateType]
type = StateTypeSet
trigger1 = animelemtime(2) >= 0
StateType = A
physics = N

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(2) < 0
value = SCA, AT

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(2) < 0
value2 = C, AA

[State 350, 3]
type = posadd
trigger1 = animelemtime(2) = 0
x = ceil(25*const(size.xscale))
y = ceil(-40*const(size.yscale))

[State -2, ï®óùìIÇ»ÉLÉÉÉâÇÃïù]
type = Width
trigger1 = AnimElemTime(3) >= 0
value = 0,ceil(-15*const(size.xscale))

[State 1000, ChangeState]
type = ChangeState
trigger1 = animelemtime(2) > 0
trigger1 = vel Y > 0
trigger1 = pos Y >= 0
value = 1350

;=====================<SLASH ELBOW>==========================
[StateDef 1400]
type = S
physics = S
moveType = A
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1420, ifElse(var(10) = 1, 1410, 1400))

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=2
value = S4,0
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0
[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = prevstateno = 40 && var(3) = 1
trigger1 = Time = 0
value = SC, AT
time = 2

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 10, ifElse(var(10), 10, 10)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 123, ifElse(var(10), 114, 101)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Up
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -13.5*const(size.xscale)
ground.cornerPush.velOff = 0
guard.velocity = -13.5*const(size.xscale)
guard.cornerPush.velOff = 0
air.velocity = -5.5*const(size.xscale),-8.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.60*const(size.yscale)
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -87
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
P2facing = 1
id = 1400

[State 350, 4]
type = VelSet
trigger1 = var(10) = 0
trigger1 = animelemtime(2) = 0
x = 13.2*const(size.xscale)

[State 350, 4]
type = VelSet
trigger1 = var(10) = 1
trigger1 = animelemtime(2) = 0
x = 22*const(size.xscale)

[State 350, 4]
type = VelSet
trigger1 = var(10) = 2
trigger1 = animelemtime(2) = 0
x = 30.8*const(size.xscale)

[State 350, 4]
type = VelSet
trigger1 = animelemtime(14) = 0
x = 0

[State 350, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = AnimElem = 3
value = s40, 0

[State 350, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = AnimElem = 7
value = s1, 2

[State 200, Ctrlset]
type = Ctrlset
trigger1 = AnimelemTime(18) >= 0
value = 1

[State 920]
type = StateTypeSet
trigger1 = AnimelemTime(11) >= 0
movetype = I

[State 350, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=====================<EX SLASH ELBOW>==========================
[StateDef 1430]
type = S
physics = S
moveType = A
anim = 1430
ctrl = 0
juggle = 5
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 84

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(0 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(11) < 0
time = 1
value = SCA

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Animelem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Up
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = Ifelse(p2statetype = C, 18, 16)
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -13.5*const(size.xscale)
ground.cornerPush.velOff = 0
guard.velocity = -13.5*const(size.xscale)
guard.cornerPush.velOff = 0
air.velocity = -5.5*const(size.xscale),-8.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.60*const(size.yscale)
fall = 0
fall.recover = 0
air.fall = 1
air.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
P2facing = 1
id = 1430

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Animelem = 11
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Up
air.animType = Up
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = Ifelse(p2statetype = C, 24, 22)
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.5*const(size.xscale),-10.0*const(size.yscale)
ground.cornerPush.velOff = 0
guard.velocity = -13.5*const(size.xscale)
guard.cornerPush.velOff = 0
air.velocity = -4.5*const(size.xscale),-10.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.60*const(size.yscale)
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -87
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
P2facing = 1
id = 1431

[State 350, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = AnimElem = 3
value = s40, 0

[State 350, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = AnimElem = 7
value = s1, 2

[State 350, 4]
type = VelSet
trigger1 = animelemtime(2) = 0
x = 33*const(size.xscale)

[State 1200, veladd]
type = veladd
trigger1 = animelemtime(2) >= 0
x = 1.0*const(size.yscale)

[State 350, 4]
type = VelSet
trigger1 = animelemtime(15) = 0
x = 0

[State 200, Ctrlset]
type = Ctrlset
trigger1 = AnimelemTime(19) >= 2
value = 1

[State 920]
type = StateTypeSet
trigger1 = AnimelemTime(12) >= 0
movetype = I

[State 350, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=====================<POWER BACKDROP>==========================
[StateDef 1500]
type = S
physics = S
moveType = A
anim = 1500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,0
channel = 0

[State 1000, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 6*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = 14*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = 1*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
trigger2 = animelemtime(7) = 0
x = -8*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -5*const(size.xscale)

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2) = 0
value = S1,1
channel = -1

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = prevstateno = 40
trigger1 = Time = 0
value = SC, AT
time = 2

[State 1000, 1]
type = HitDef
triggerall = var(18) = 0
triggerall = Animelem = 3
triggerall = P2BodyDist X = [-1,ifelse(!var(10),77,ifelse(var(10)=1,66,56))]
trigger1 = NumTarget
trigger1 = Target,StateNo = 1203
attr = S, ST
hitflag = M+
priority = 6, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 1550
hitSound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 1500

[State 1000, HitDef]
type = HitDef
trigger1 = var(18) = 0
trigger1 = Animelem = 3
trigger1 = P2BodyDist X = [-1,ifelse(!var(10),77,ifelse(var(10)=1,66,56))]
trigger1 = P2MoveType != H
trigger1 = P2StateNo != 40
trigger1 = P2StateNo != [150,155]
attr = S, ST
hitflag = M-
priority = 6, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 1550
hitSound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 1500

[State 1000, Ctrlset]
type = Ctrlset
trigger1 = AnimelemTime(9) >= 2
value = 1

[State 1000]
type = StateTypeSet
trigger1 = AnimelemTime(4) >= 0
movetype = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;PowerbackdropCapture
[Statedef 1550]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1510
juggle = 0
poweradd = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 820,2

[State 610, 0]
type = width
trigger1 = animelem = 1
edge = 0,60

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 0,0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 8
time = 15
freq = 120
ampl = -10

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
trigger2 = animelem = 4
trigger3 = animelem = 5
trigger3 = animelem = 6
x = -15
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 12
trigger2 = animelem = 13
trigger3 = animelem = 14
trigger4 = animelem = 15
x = -20

[State 810, TargetState]
type = TargetState
Trigger1 = time = 0
value = 1565

[State 0, Impact Dust]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = -75,0
ownPal = 1

[State 0, LifeAdd]
type = targetLifeAdd
trigger1 = var(10) = 0
trigger1 = animelem = 8
value = -130

[State 0, LifeAdd]
type = targetLifeAdd
trigger1 = var(10) = 1
trigger1 = animelem = 8
value = -150

[State 0, LifeAdd]
type = targetLifeAdd
trigger1 = var(10) = 2
trigger1 = animelem = 8
value = -170

[State 0, LifeAdd]
type = targetLifeAdd
trigger1 = var(10) = 3
trigger1 = animelem = 8
value = -190

[State -2, PowerAdd]
type = PowerAdd
trigger1 = var(10) = [0,2]
trigger1 = animelem = 8
value = 200

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value =0
ctrl = 1

;Powerbackdrop target
[Statedef 1565]
type = S
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 =time = 0
value = 1520

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
trigger2 = animelem = 4
trigger3 = animelem = 5
trigger3 = animelem = 6
x = 15
[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 12
trigger2 = animelem = 13
trigger3 = animelem = 14
trigger4 = animelem = 15
x = 20

[State 0, PosAdd]
type = PosAdd
trigger1 = time =47
x = 100

[State 0,selfState]
type = selfState
trigger1 = time =47
value = 5110
ctrl = 0

;========================<EX BACKDROP>=============================
[StateDef 1530]
type = S
physics = N
moveType = A
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 84

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,0
channel = 0

[State 1000, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 6*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = 14*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = 1*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
trigger2 = animelemtime(7) = 0
x = -8*const(size.xscale)

[State 1000, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -5*const(size.xscale)

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2) = 0
value = S1,1
channel = -1

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = prevstateno = 40
trigger1 = Time = 0
value = SC, AT
time = 2

[State 1000, 1]
type = HitDef
triggerall = var(18) = 0
triggerall = Animelem = 3
triggerall = P2BodyDist X = [-1,ifelse(!var(10),77,ifelse(var(10)=3,80,56))]
trigger1 = NumTarget
trigger1 = Target,StateNo = 1203
attr = S, ST
hitflag = M+
priority = 6, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 1550
hitSound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 1500

[State 1000, HitDef]
type = HitDef
trigger1 = var(18) = 0
trigger1 = Animelem = 3
trigger1 = P2BodyDist X = [-1,ifelse(!var(10),77,ifelse(var(10)=2,80,56))]
trigger1 = P2MoveType != H
trigger1 = P2StateNo != 40
trigger1 = P2StateNo != [150,155]
attr = S, ST
hitflag = M-
priority = 6, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 1550
hitSound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 1500

[State 1000, Ctrlset]
type = Ctrlset
trigger1 = AnimelemTime(9) >= 2
value = 1

[State 1000]
type = StateTypeSet
trigger1 = AnimelemTime(4) >= 0
movetype = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=====================<AIR KNEE SMASH>==========================
[StateDef 1600]
type = S
physics = S
moveType = A
anim = 1600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=1
value = S4,0
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 1200, 9]
type = Width
trigger1 = animelem = 2
value = ceil(10*const(size.xscale)),0

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 810, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = ceil(20*const(size.xscale))

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = animelemtime(3) = 0
x = 2.75*const(size.xscale)
y = -11.0*const(size.yscale)

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = animelemtime(3) = 0
x = 7.8*const(size.xscale)
y = -11.0*const(size.yscale)

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = animelemtime(3) = 0
x = 10.8*const(size.xscale)
y = -11.0*const(size.yscale)

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(5) = 0
x = 0
y = 0

[State 1200, veladd]
type = veladd
trigger1 = animelemtime(5) >= 0
y = .50*const(size.yscale)

[State 1200, StateType]
type = StateTypeSet
trigger1 = animelemtime(3) >= 0
StateType = A
physics = N

[State 1200, StateType]
type = StateTypeSet
trigger1 = AnimelemTime(5) >= 0
movetype = I

[State -2, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S41,0
channel = -1

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = prevstateno = 40 && var(3) = 1
trigger1 = Time = 0
value = SC, AT
time = 2

[State 40, Dust]
type = helper
trigger1 = Animelem = 2
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1000, 1]
type = HitDef
triggerall = var(24) = 0
triggerall = fvar(30) = 0
trigger1 = Animelem = 4,>=0
trigger1 = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(70*const(size.xscale))]
attr = A, SA
hitflag = AF
pausetime = 0,0
priority = 6, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p2facing = 1
p1stateno = 1650
p2stateno = 1660
persistent = 0
numhits = 0
hitsound = -1 + 0 * (var(31) := 800)
getpower = 0
givepower = 0
ID = 1600

[State 1600, ChangeState]
type = ChangeState
trigger1 = numtarget(1600)
trigger1 = target(1600),movetype = H
trigger1 = target(1600),stateno = [1660,1670]
value = 1650

[State 1000, ChangeState]
type = ChangeState
trigger1 = animelemtime(3) > 0
trigger1 = vel Y > 0
trigger1 = pos Y >= 0
value = 1640

;Land
[Statedef 1640]
type    = S
physics = S
ctrl = 0
anim = 1640

[State -2, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 52, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = , NT,ST,HT
time = 1

[State 1500, CtrlSet]
type = CtrlSet
trigger1 = animelemtime(6) = 1
value = 1

[State 52, 4]
type = ChangeState
trigger1 = P2dist X < 0
trigger1 = AnimElemTime(6) >= 1
value = 0
ctrl = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Connect
[Statedef 1650]
type    = A
movetype= A
physics = N
anim = 1650
velocity = 0,0
SprPriority = 0

[State 52, 1]
type = posfreeze
trigger1 = Time < 2

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = [0,1]
trigger1 = time = 2
x = (2.2+1.1*var(10))*const(size.xscale)
y = (-8.0-1.0*var(10))*const(size.yscale)

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = [2,3]
trigger1 = time = 2
x = 4.4*const(size.xscale)
y = -10.0*const(size.yscale)

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 1200, 9]
type = Width
trigger1 = 1
edge = ceil(40*const(size.xscale)),0

[State 810, TargetBind]
type = TargetBind
trigger1 = P2StateNo = 1660
pos = ceil(45*const(size.xscale)), ceil(-60*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = P2StateNo = 1670
pos = ceil(60*const(size.xscale)), ceil(10*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = P2StateNo = 1680
pos = ceil(60*const(size.xscale)), ceil(10*const(size.yscale))

[State 1200, veladd]
type = veladd
trigger1 = animelemtime(10) >= 0
y = .60*const(size.yscale)

[State 810, State End]
type = ChangeState
trigger1 = vel Y > 0
trigger1 = pos Y >= 0
value = 1651

;Finish
[Statedef 1651]
type    = S
movetype= A
physics = N
anim = 1651
SprPriority = 1

[State 810, TargetState]
type = TargetState
Trigger1 = time = 0
value = 1661

[State 1200, 9]
type = Width
trigger1 = 1
edge = ceil(40*const(size.xscale)),0

[State 1200, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(3) = 0
x = 0

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 1661
pos = 0, ceil(-25*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 1661
pos = 0, ceil(-25*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 1661
pos = 0, 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 1671
pos = 0, 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 1671
pos = 0, 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 1671
pos = 0, 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 1681
pos = 0, 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 1681
pos = 0, 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 1681
pos = 0, 0

[State -2, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(3) = 0
value = S820,2

[State -2, HitAdd]
type = HitAdd
trigger1 = animelemtime(3) = 0
value = 1

[State -2, PowerAdd]
type = PowerAdd
trigger1 = var(10) = [0,2]
trigger1 = animelemtime(3) = 0
value = 180

[State 811, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 0
trigger1 = animelemtime(3) = 0
value = -120

[State 811, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 1
trigger1 = animelemtime(3) = 0
value = -130

[State 811, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 2
trigger1 = animelemtime(3) = 0
value = -140

[State 811, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(10) = 3
trigger1 = animelemtime(3) = 0
value = ceil(ifelse(150 * fvar(11) < 7, -7, -150 * fvar(11)))

[State -2, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = var(10) = [0,2]
trigger1 = animelemtime(3) = 0
value = 30

[State -2, VarAdd]
type = VarAdd
trigger1 = animelemtime(3) = 0
fvar(15) = 1
ignorehitpause = 1

[State -2, VarAdd]
type = VarAdd
trigger1 = fvar(23) > 1.0
trigger1 = animelemtime(3) = 0
fvar(23) = -0.0625

[State -2, VarAdd]
type = VarAdd
trigger1 = fvar(24) > 1.0
trigger1 = animelemtime(3) = 0
fvar(24) = -0.0625

[State 0, Impact Dust]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = 0,0
ownPal = 1

[State -2, Envshake]
type = Envshake
trigger1 = animelemtime(3) = 2
time = 16
freq = 120
ampl = -8-var(10)

[State 810, State End]
type = ChangeState
trigger1 = animtime = 0
value = 1652

;Land
[Statedef 1652]
type    = A
movetype= A
physics = N
anim = 1652
SprPriority = 1

[State 810, posadd]
type = posadd
trigger1 = time = 0
x = ceil(-20*const(size.xscale))

[State 1200, Velocity]
type = VelSet
trigger1 = time = 0
x = -4.4*const(size.xscale)
y = -4.5*const(size.yscale)

[State 1200, veladd]
type = veladd
trigger1 = 1
y = .60*const(size.yscale)

[State 810, State End]
type = ChangeState
trigger1 = vel Y > 0
trigger1 = pos Y >= 15
value = 52

;Target
[Statedef 1660]
type    = A
movetype= H
physics = N
ctrl = 0
SprPriority = 1

[State 810, 0]
type = changeanim2
trigger1 = time = 0
value = 1660

[State 810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

;Target 2
[Statedef 1661]
type    = S
movetype= H
physics = N
ctrl = 0
SprPriority = 0

[State 810, 0]
type = changeanim2
trigger1 = time = 0
value = 1661

[State 810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 1200, Velocity]
type = VelSet
trigger1 = animtime = 0
x = -3.0

[State 811, Changestate]
type = selfstate
trigger1 = animtime = 0
value = 5100

;Target 3
[Statedef 1662]
type    = L
movetype= H
physics = N

[State 5101, 1]
type = ChangeAnim
trigger1 = time = 0
value = 5160

[State 5101, VelSet]
type = VelSet
trigger1 = Time = 0
x = (-3.0+(prevstateno=1558)*3.0)*const(size.xscale)
y = 0

[State 5101, 6] ;Hit ground
type = SelfState
trigger1 = animelemtime(3) >= 3
value = 5110

;Target 4
[Statedef 1663]
type    = L
movetype= H
physics = N

[State 5101, 1]
type = ChangeAnim
trigger1 = time = 0
value = 5160

[State 5101, VelSet]
type = VelSet
trigger1 = Time = 0
x = (-3.0+(prevstateno=1558)*3.0)*const(size.xscale)
y = 0

[State 5101, 6] ;Hit ground
type = SelfState
trigger1 = animelemtime(4) >= 1
value = 5110

;Target 5
[Statedef 1670]
type    = A
movetype= H
physics = N
ctrl = 0
SprPriority = 1

[State 810, 0]
type = changeanim2
trigger1 = time = 0
value = 1670

[State 810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

;Target 6
[Statedef 1671]
type    = S
movetype= H
physics = N
ctrl = 0
SprPriority = 0

[State 810, 0]
type = changeanim2
trigger1 = time = 0
value = 1671

[State 810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 1200, Velocity]
type = VelSet
trigger1 = AnimElemtime(6) = 0
x = -4.0

[State 1200, Velocity]
type = VelMul
trigger1 = 1
x = .90

[State 811, Changestate]
type = selfstate
trigger1 = animtime = 0
value = 5110

;Target 7
[Statedef 1680]
type    = A
movetype= H
physics = N
ctrl = 0
SprPriority = 1

[State 810, 0]
type = changeanim2
trigger1 = time = 0
value = 1680

[State 810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

;Target 8
[Statedef 1681]
type    = S
movetype= H
physics = N
ctrl = 0
SprPriority = 0

[State 810, 0]
type = changeanim2
trigger1 = time = 0
value = 1681

[State 810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 811, Changestate]
type = changestate
trigger1 = animtime = 0
value = 1682

;Target 9
[Statedef 1682]
type    = L
movetype= H
physics = N

[State 5101, 1]
type = ChangeAnim
trigger1 = time = 0
value = 5160

[State 5101, VelSet]
type = VelSet
trigger1 = Time = 0
x = (-3.0+(prevstateno=1557)*3.0)*const(size.xscale)
y = 0

[State 5101, 6] ;Hit ground
type = SelfState
trigger1 = animelemtime(3) >= 2
value = 5110

;========================<EX AIR KNEE SMASH>=============================
[StateDef 1630]
type = S
physics = S
moveType = A
anim = 1630
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 84

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=1
value = S4,0
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State -2, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S41,0
channel = -1

[State 1200, 9]
type = Width
trigger1 = animelem = 2
value = ceil(10*const(size.xscale)),0

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 810, posadd]
type = posadd
trigger1 = animelemtime(3) = 0
x = ceil(20*const(size.xscale))

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(3) = 0
x = 8.8*const(size.xscale)
y = -11.0*const(size.yscale)

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(5) = 0
x = 0
y = 0

[State 1200, veladd]
type = veladd
trigger1 = animelemtime(3) >= 0
y = .50*const(size.yscale)

[State 1200, StateType]
type = StateTypeSet
trigger1 = animelemtime(3) >= 0
StateType = A
physics = N

[State 1200, StateType]
type = StateTypeSet
trigger1 = AnimelemTime(5) >= 0
movetype = I

[State 0, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 40, Dust]
type = helper
trigger1 = Animelem = 2
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1000, 1]
type = HitDef
triggerall = var(24) = 0
triggerall = fvar(30) = 0
trigger1 = (Animelemtime(3) >= 0) && (Animelemtime(5) < 0)
trigger1 = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(70*const(size.xscale))]
attr = A, SA
hitflag = MAF
guardflag = M
pausetime = 0,0
guard.pausetime = 10,10
priority = 6, Miss
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -15 + 0 * (var(35) := 155), var(36):= -80
guardSound = -1 + 0 * (var(32) := 0)
guard.hittime = 16
guard.slidetime = 16
guard.ctrltime = 16
guard.velocity = -10.0
p1facing = 1
p2facing = 1
p1stateno = 1650
p2stateno = 1660
persistent = 0
numhits = 0
hitSound = -1 + 0 * (var(31) := 800)
getpower = 0
givepower = 0
ID = 1630

[State 1600, ChangeState]
type = ChangeState
trigger1 = numtarget(1630)
trigger1 = target(1630),movetype = H
trigger1 = target(1630),stateno = [1660,1670]
value = 1650

[State 1000, ChangeState]
type = ChangeState
trigger1 = animelemtime(3) > 0
trigger1 = vel Y > 0
trigger1 = pos Y >= 0
value = 1640

;========================<PUNCH ZERO COUNTER>=============================
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 2900, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getpower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 2900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<KICK ZERO COUNTER>=============================
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 3
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getpower = 0,0
givepower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(4) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
