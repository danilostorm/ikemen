; _________________________________________
;| Alex by varo_hades                      |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<STUN GUN HEADBUTT>=============================
[StateDef 3000]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(23) < 0
time = 1
value = SCA

[state 3700]
type = NotHitby
trigger1 = vel Y < 0
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-35 * const(size.xScale)), ceil(-45 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3200,1
channel = 0

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(7) >= 0
trigger1 = vel y < 0
x = floor((p2dist X)/15)

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(7) = 0
y = -14.5*const(size.yscale)

[State 1200, veladd]
type = veladd
trigger1 = animelemtime(7) >= 0
y = 1.0*const(size.yscale)

[State 1200, StateType]
type = StateTypeSet
trigger1 = animelemtime(7) >= 0
StateType = A
physics = N

[State -2, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(7) = 0
value = 52,0

[State 1000, 1]
type = HitDef
trigger1 = (animelemtime(22) >= 0) && (animelemtime(22) < 4)
trigger1 = Enemynear,pos Y >= -30
trigger1 = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(70*const(size.xscale))]
trigger1 = P2MoveType != H
trigger1 = P2StateNo != [150,155]
attr = A, HT
hitflag = MA-
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p2facing = 1
p1stateno = 3040
;p2stateno = ifelse(var(16)=0,3260,3280)
hitsound = -1 + 0 * (var(31) := 800)
Persistent = 0
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 3000

[State 1000, 1]
type = HitDef
triggerall = (animelemtime(22) >= 0) && (animelemtime(22) < 4)
triggerall = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(70*const(size.xscale))]
trigger1 = NumTarget
trigger1 = Target,StateNo = [5600,5630]
attr = A, HT
hitflag = M
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p2facing = 1
p1stateno = 3040
;p2stateno = ifelse(var(16)=0,3260,3280)
hitsound = -1 + 0 * (var(31) := 800)
Persistent = 0
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 3000

[State 1000, ChangeState]
type = ChangeState
trigger1 = animelemtime(7) > 0
trigger1 = vel Y > 0
trigger1 = pos Y >= -15
value = 3010

;Land
[Statedef 3010]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 3010

[State -2, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S52,0

[State 52, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1500, CtrlSet]
type = CtrlSet
trigger1 = animelemtime(5) = 1
value = 1

[State 52, 4]
type = ChangeState
trigger1 = P2dist X < 0
trigger1 = AnimElemTime(5) = 1
value = 0
ctrl = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Start
[Statedef 3040]
type    = S
movetype= A
physics = N
anim = 3050
SprPriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=4
trigger2 = animelem = 9
trigger3 = animelem = 14
trigger4 = animelem = 21
value = S820,0
volume = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State -2, TargetState]
type = TargetState
Trigger1 = time = 0
value = 3060

[State 810, posadd]
type = posadd
trigger1 = time = 0
x = ceil(20*const(size.xscale))

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State -2, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
trigger4 = animelemtime(21) = 0
value = S2,2
channel = 0

[State 1200, 9]
type = Width
trigger1 = 1
edge = ceil(60*const(size.xscale)),0

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 810, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(6) = 0
trigger3 = animelemtime(10) = 0
trigger4 = animelemtime(11) = 0
trigger5 = animelemtime(15) = 0
trigger6 = animelemtime(16) = 0
x = ceil(5*const(size.xscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && ((P2StateNo = 3060)||(P2StateNo = 3080))
pos = ceil(80*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3060 || P2StateNo = 3080
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 12
trigger4 = AnimElem = 17
pos = ceil(50*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3060 || P2StateNo = 3080
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
trigger4 = AnimElem = 18
trigger5 = AnimElem = 19
pos = ceil(20*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3060 || P2StateNo = 3080
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
trigger3 = AnimElem = 14
trigger4 = AnimElem = 20
pos = ceil(30*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3060 || P2StateNo = 3080
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
trigger4 = AnimElem = 11
trigger5 = AnimElem = 15
trigger6 = AnimElem = 16
trigger7 = AnimElem = 21
pos = ceil(65*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && ((P2StateNo = 3061)||(P2StateNo = 3081))
pos = ceil(80*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3061 || P2StateNo = 3081
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 12
trigger4 = AnimElem = 17
pos = ceil(40*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3061 || P2StateNo = 3081
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
trigger4 = AnimElem = 18
trigger5 = AnimElem = 19
pos = ceil(30*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3061 || P2StateNo = 3081
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
trigger3 = AnimElem = 14
trigger4 = AnimElem = 20
pos = ceil(40*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3061 || P2StateNo = 3081
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
trigger4 = AnimElem = 11
trigger5 = AnimElem = 15
trigger6 = AnimElem = 16
trigger7 = AnimElem = 21
pos = ceil(77*const(size.xscale)), 0

[State 811, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
value = -30
kill = 0

[State 811, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(21) = 0
value = -50

[State -2, HitAdd]
type = HitAdd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
trigger4 = animelemtime(21) = 0
value = 1

[State 0, Hit Spark]
type = Helper
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(45 * const(size.xscale)), ceil(-70* const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, Hit Spark]
type = Helper
trigger1 = animelemtime(21) = 0
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(45 * const(size.xscale)), ceil(-70* const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Envshake]
type = Envshake
trigger1 = animelemtime(12) = 0
time = 6
freq = 80
ampl = -4

[State -2, Velocity]
type = VelSet
triggerall = animelemtime(22) >= 0
triggerall = P2Dist X > 0
trigger1 = numtarget(3000)
trigger1 = target(3000),movetype = H
trigger1 = target(3000),stateno = [3060,3081]
trigger1 = target(3000),BackEdgeBodyDist = 0
x = floor(ifelse((-12+(p2dist X)/10)>-4,-4,-12+(p2dist X)/10))
persistent = 0

[State -2, Velocity]
type = VelSet
triggerall = vel X < 0
trigger1 = AnimTime = 0
trigger2 = abs(enemynear,Pos X - Pos X) >= ceil(133*const(size.xscale))
x = 0

[State 810, State End]
type = ChangeState
trigger1 = var(50) = 1
trigger1 = AnimTime = 0
trigger1 = p2life > 0
value = 100

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Connect 2
[Statedef 3051]
type    = S
movetype= A
physics = N
anim = 3051
SprPriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=4
trigger2 = animelem = 9
trigger3 = animelem = 14
trigger4 = animelem = 19
trigger5 = animelem = 24
trigger6 = animelem = 29
trigger7 = animelem = 34
trigger8 = animelem = 41
value = S820,0
volume = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State -2, TargetState]
type = TargetState
Trigger1 = time = 0
value = 3070

[State 810, posadd]
type = posadd
trigger1 = time = 0
x = ceil(20*const(size.xscale))

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State -2, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
trigger4 = animelemtime(21) = 0
trigger5 = animelemtime(26) = 0
trigger6 = animelemtime(31) = 0
trigger7 = animelemtime(36) = 0
trigger8 = animelemtime(41) = 0
value = S2,2
channel = 0

[State 1200, 9]
type = Width
trigger1 = 1
edge = ceil(60*const(size.xscale)),0

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 810, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(6) = 0
trigger3 = animelemtime(10) = 0
trigger4 = animelemtime(11) = 0
trigger5 = animelemtime(15) = 0
trigger6 = animelemtime(16) = 0
trigger7 = animelemtime(21) = 0
trigger8 = animelemtime(22) = 0
trigger9 = animelemtime(26) = 0
trigger10 = animelemtime(27) = 0
trigger11 = animelemtime(31) = 0
trigger12 = animelemtime(32) = 0
trigger13 = animelemtime(36) = 0
trigger14 = animelemtime(37) = 0
x = ceil(5*const(size.xscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && ((P2StateNo = 3070)||(P2StateNo = 3080))
pos = ceil(80*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3070 || P2StateNo = 3080
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 12
trigger4 = AnimElem = 17
trigger5 = AnimElem = 22
trigger6 = AnimElem = 27
trigger7 = AnimElem = 32
trigger8 = AnimElem = 37
pos = ceil(50*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3070 || P2StateNo = 3080
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
trigger4 = AnimElem = 18
trigger5 = AnimElem = 23
trigger6 = AnimElem = 28
trigger7 = AnimElem = 33
trigger8 = AnimElem = 38
trigger9 = AnimElem = 39
pos = ceil(20*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3070 || P2StateNo = 3080
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
trigger3 = AnimElem = 14
trigger4 = AnimElem = 19
trigger5 = AnimElem = 24
trigger6 = AnimElem = 29
trigger7 = AnimElem = 34
trigger8 = AnimElem = 40
pos = ceil(30*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3070 || P2StateNo = 3080
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
trigger4 = AnimElem = 11
trigger5 = AnimElem = 15
trigger6 = AnimElem = 16
trigger7 = AnimElem = 21
trigger8 = AnimElem = 22
trigger9 = AnimElem = 26
trigger10 = AnimElem = 27
trigger11 = AnimElem = 31
trigger12 = AnimElem = 32
trigger13 = AnimElem = 36
trigger14 = AnimElem = 37
pos = ceil(65*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && ((P2StateNo = 3061)||(P2StateNo = 3081))
pos = ceil(80*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3061 || P2StateNo = 3081
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 12
trigger4 = AnimElem = 17
trigger5 = AnimElem = 22
trigger6 = AnimElem = 27
trigger7 = AnimElem = 32
trigger8 = AnimElem = 37
pos = ceil(40*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3061 || P2StateNo = 3081
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
trigger4 = AnimElem = 18
trigger5 = AnimElem = 23
trigger6 = AnimElem = 28
trigger7 = AnimElem = 33
trigger8 = AnimElem = 38
trigger9 = AnimElem = 39
pos = ceil(30*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3061 || P2StateNo = 3081
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
trigger3 = AnimElem = 14
trigger4 = AnimElem = 19
trigger5 = AnimElem = 24
trigger6 = AnimElem = 29
trigger7 = AnimElem = 34
trigger8 = AnimElem = 40
pos = ceil(40*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
triggerall = P2StateNo = 3061 || P2StateNo = 3081
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
trigger4 = AnimElem = 11
trigger5 = AnimElem = 15
trigger6 = AnimElem = 16
trigger7 = AnimElem = 21
trigger8 = AnimElem = 22
trigger9 = AnimElem = 26
trigger10 = AnimElem = 27
trigger11 = AnimElem = 31
trigger12 = AnimElem = 32
trigger13 = AnimElem = 36
trigger14 = AnimElem = 37
pos = ceil(77*const(size.xscale)), 0

[State 811, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
trigger4 = animelemtime(21) = 0
trigger5 = animelemtime(26) = 0
trigger6 = animelemtime(31) = 0
trigger7 = animelemtime(36) = 0
value = -26
kill = 0

[State 811, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(41) = 0
value = -30

[State -2, HitAdd]
type = HitAdd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
trigger4 = animelemtime(21) = 0
trigger5 = animelemtime(26) = 0
trigger6 = animelemtime(31) = 0
trigger7 = animelemtime(36) = 0
trigger8 = animelemtime(41) = 0
value = 1

[State 0, Hit Spark]
type = Helper
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(10) = 0
trigger3 = animelemtime(15) = 0
trigger4 = animelemtime(21) = 0
trigger5 = animelemtime(26) = 0
trigger6 = animelemtime(31) = 0
trigger7 = animelemtime(36) = 0
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(45 * const(size.xscale)), ceil(-70* const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, Hit Spark]
type = Helper
trigger1 = animelemtime(41) = 0
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(45 * const(size.xscale)), ceil(-70* const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Envshake]
type = Envshake
trigger1 = animelemtime(12) = 0
time = 6
freq = 80
ampl = -4

[State -2, Velocity]
type = VelSet
triggerall = animelemtime(42) >= 0
triggerall = P2Dist X > 0
trigger1 = numtarget(3000)
trigger1 = target(3000),movetype = H
trigger1 = target(3000),stateno = [3060,3081]
trigger1 = target(3000),BackEdgeBodyDist = 0
x = floor(ifelse((-12+(p2dist X)/10)>-4,-4,-12+(p2dist X)/10))
persistent = 0

[State -2, Velocity]
type = VelSet
triggerall = vel X < 0
trigger1 = AnimTime = 0
trigger2 = abs(enemynear,Pos X - Pos X) >= ceil(133*const(size.xscale))
x = 0

[State 810, State End]
type = ChangeState
trigger1 = var(50) = 1
trigger1 = AnimTime = 0
trigger1 = p2life > 0
value = 100

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Target
[Statedef 3060]
type    = S
movetype= H
physics = N
ctrl = 0
;facep2 = 1
SprPriority = 1

[State 811, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
value = 3060

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(18) = 0
x = -12.0

[State 1200, VelSet]
type = VelMul
trigger1 = 1
x = .85

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(19) = 0
x = 0

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 811, SelfState]
type = changestate
trigger1 = !alive
value = 7600

[State 811, ChangeState]
type = changestate
trigger1 = alive
trigger1 = animtime = 0
value = 7500

;Dizzy
[Statedef 7500]
type    = S
movetype = I
physics = N
ctrl    = 0
sprpriority = 0
velset  = 0,0

[State 3280, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5300

[State 3280, SelfState]
type = SelfState
trigger1 = Time = 120
value = 0
ctrl = 1

;Dizzy 2
[Statedef 7600]
type    = S
movetype= H
physics = N
velset = 0,0

[State 5190, 1]
type = posset
trigger1 = time = 0
y = 0

[State 5190, 1]
type = VelSet
trigger1 = time = 15
x = -1.5
persistent = 0

[State 5190, 1]
type = VelSet
trigger1 = time = 35
x = 0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim2
trigger1 = anim != 5950
trigger1 = Time < 35
value = 7600

[State 5030, SelfState]
type = SelfState
trigger1 = Anim = 5950
trigger1 = AnimElemTime(AnimElemNo(0)+1)=0
value = 5150

[State 5050, SelfState]
type = SelfState
trigger1 = anim != 5950
trigger1 = animtime = 0
value = 5110

;Target 2
[Statedef 3061]
type    = S
movetype= H
physics = N
ctrl = 0
;facep2 = 1
SprPriority = 1

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State -2, VarAdd]
type = VarAdd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(9) = 0
trigger3 = animelemtime(13) = 0
fvar(2) = 15

[State -2, VarAdd]
type = VarAdd
trigger1 = animelemtime(17) = 0
fvar(2) = 99999

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(19) = 0
x = -12.0

[State 1200, VelSet]
type = VelMul
trigger1 = 1
x = .85

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 811, changestate]
type = selfstate
trigger1 = !alive
trigger1 = animelemtime(18) = 0
value = 5190

[State 811, SelfState]
type = selfstate
trigger1 = alive
trigger1 = fvar(2) < 72
trigger1 = animtime = 0
value = 0
ctrl = 1

;Target
[Statedef 3070]
type    = S
movetype= H
physics = N
ctrl = 0
;facep2 = 1
SprPriority = 1

[State 811, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
value = 3070

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(34) = 0
x = -12.0

[State 1200, VelSet]
type = VelMul
trigger1 = 1
x = .85

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(35) = 0
x = 0

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 811, SelfState]
type = changestate
trigger1 = !alive
value = 7600

[State 811, ChangeState]
type = changestate
trigger1 = alive
trigger1 = animtime = 0
value = 7500

;Target 3
[Statedef 3080]
type    = S
movetype= H
physics = N
ctrl = 0
;facep2 = 1
SprPriority = 1

[State 811, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
value = 3060

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(18) = 0
x = -12.0

[State 1200, VelSet]
type = VelMul
trigger1 = 1
x = .85

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(19) = 0
x = 0

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 811, SelfState]
type = changestate
trigger1 = !alive
value = 7600

[State 811, ChangeState]
type = selfstate
trigger1 = alive
trigger1 = animtime = 0
value = 0
ctrl = 1

;Target 4
[Statedef 3281]
type    = S
movetype= H
physics = N
ctrl = 0
;facep2 = 1
SprPriority = 1

[State 811, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
trigger1 = authorname = "GM"
trigger1 = name = "Alex"
value = 3261

[State 811, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
trigger1 = authorname = "GM"
trigger1 = name = "Hugo"
value = 3262

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State -2, VarAdd]
type = VarAdd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(9) = 0
trigger3 = animelemtime(13) = 0
trigger4 = animelemtime(17) = 0
fvar(2) = 10

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(19) = 0
x = -12.0

[State 1200, VelSet]
type = VelMul
trigger1 = 1
x = .85

[State 1200, VelSet]
type = VelSet
triggerall = authorname = "GM"
trigger1 = name = "Alex"
trigger1 = animelemtime(21) = 0
trigger2 = name = "Hugo"
trigger2 = animelemtime(22) = 0
x = 0

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 811, changestate]
type = selfstate
trigger1 = !alive
trigger1 = animelemtime(18) = 0
value = 5190

[State 811, SelfState]
type = selfstate
triggerall = alive
triggerall = fvar(2) = 72
trigger1 = name = "Alex"
trigger1 = animtime = 0
trigger2 = name = "Hugo"
trigger2 = animelemtime(23) = 1
value = 5300

[State 811, SelfState]
type = selfstate
trigger1 = alive
trigger1 = fvar(2) < 72
trigger1 = animtime = 0
value = 0
ctrl = 1

;========================<MAX STUN GUN HEADBUTT>=============================
[StateDef 3050]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(23) < 0
time = 1
value = SCA

[state 3700]
type = NotHitby
trigger1 = vel Y < 0
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-35 * const(size.xScale)), ceil(-45 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3200,1
channel = 0

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(7) >= 0
trigger1 = vel y < 0
x = floor((p2dist X)/15)

[State 1200, VelSet]
type = VelSet
trigger1 = animelemtime(7) = 0
y = -14.5*const(size.yscale)

[State 1200, veladd]
type = veladd
trigger1 = animelemtime(7) >= 0
y = 1.0*const(size.yscale)

[State 1200, StateType]
type = StateTypeSet
trigger1 = animelemtime(7) >= 0
StateType = A
physics = N

[State -2, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(7) = 0
value = 52,0

[State 1000, 1]
type = HitDef
trigger1 = (animelemtime(22) >= 0) && (animelemtime(22) < 4)
trigger1 = Enemynear,pos Y >= -30
trigger1 = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(70*const(size.xscale))]
trigger1 = P2MoveType != H
trigger1 = P2StateNo != [150,155]
attr = A, HT
hitflag = MA-
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p2facing = 1
p1stateno = 3051
;p2stateno = ifelse(var(16)=0,3260,3280)
hitsound = -1 + 0 * (var(31) := 800)
Persistent = 0
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 3000

[State 1000, 1]
type = HitDef
triggerall = (animelemtime(22) >= 0) && (animelemtime(22) < 4)
triggerall = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(70*const(size.xscale))]
trigger1 = NumTarget
trigger1 = Target,StateNo = [5600,5630]
attr = A, HT
hitflag = M
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p2facing = 1
p1stateno = 3051
;p2stateno = ifelse(var(16)=0,3260,3280)
hitsound = -1 + 0 * (var(31) := 800)
Persistent = 0
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 3000

[State 1000, ChangeState]
type = ChangeState
trigger1 = animelemtime(7) > 0
trigger1 = vel Y > 0
trigger1 = pos Y >= -15
value = 3010

;========================<BOOMERANG RAID>=============================
[StateDef 3100]
type = S
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3100, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(-80 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3200,1
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 36
value = 4,0
channel = 0

[State 220, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = animelem = 7
trigger2 = animelem = 13
trigger3 = animelem = 22
trigger4 = animelem = 28
trigger5 = animelem = 36
value = s1,1

[State 1100, ‰¹‚ð–Â‚ç‚·]
type = playsnd
trigger1 = animelemtime(36) = 0
value = s1,3
channel = -1

[State 1120, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 7
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 6, 6
guard.pausetime = 6, 6
animType = Hard
air.animType = Up
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = Ifelse(p2statetype = C, 20, 18)
air.hitTime = 120
ground.velocity = -3.5*const(size.xscale)
ground.cornerPush.velOff = 0
guard.velocity = -21.0*const(size.xscale)
guard.cornerPush.velOff = -25
air.velocity = -2.2*const(size.xscale),-11.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.60*const(size.yscale)
fall = 0
fall.xvelocity = -2.2*const(size.xscale)
air.fall = 1
fall.recover =0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
id = 3100

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 =  AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 6, 6
guard.pausetime = 6, 6
animType = Hard
air.animType = Up
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = Ifelse(p2statetype = C, 20, 18)
air.hitTime = 120
ground.velocity = -3.5*const(size.xscale)
ground.cornerPush.velOff = 0
guard.velocity = -21.0*const(size.xscale)
guard.cornerPush.velOff = -25
air.velocity = -2.2*const(size.xscale),-11.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.60*const(size.yscale)
fall = 0
fall.xvelocity = -2.2*const(size.xscale)
air.fall = 1
fall.recover =0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -86
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
id = 3101

[State 3100, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 =  AnimElem = 22
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 6, 6
guard.pausetime = 6, 6
animType = Hard
air.animType = Up
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = Ifelse(p2statetype = C, 20, 18)
air.hitTime = 120
ground.velocity = -3.5*const(size.xscale)
ground.cornerPush.velOff = 0
guard.velocity = -21.0*const(size.xscale)
guard.cornerPush.velOff = -25
air.velocity = -2.2*const(size.xscale),-11.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.60*const(size.yscale)
fall = 0
fall.xvelocity = -2.2*const(size.xscale)
air.fall = 1
fall.recover =0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -86
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
id = 3102

[State 3100, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 =  AnimElem = 28
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 6, 6
guard.pausetime = 6, 6
animType = Hard
air.animType = Up
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 40
ground.slideTime = 30
guard.hitTime = Ifelse(p2statetype = C, 20, 18)
air.hitTime = 120
ground.velocity = -3.5*const(size.xscale)
ground.cornerPush.velOff = 0
guard.velocity = -21.0*const(size.xscale)
guard.cornerPush.velOff = -25
air.velocity = -2.2*const(size.xscale),-11.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.60*const(size.yscale)
fall = 0
fall.xvelocity = -2.2*const(size.xscale)
air.fall = 1
fall.recover =0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -86
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
id = 3103

[State -2, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(19) = 0
x = 16*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(20) = 0
x = 8*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
trigger2 = animelemtime(22) = 0
x = 6*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(13) = 0
trigger2 = animelemtime(28) = 0
x = 10*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(14) = 0
trigger2 = animelemtime(15) = 0
trigger3 = animelemtime(16) = 0
trigger4 = animelemtime(29) = 0
trigger5 = animelemtime(30) = 0
trigger6 = animelemtime(31) = 0
x = 4*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(36) = 0
x = 6*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(38) = 0
x = 14*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(39) = 0
x = 1*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(40) = 0
trigger2 = animelemtime(41) = 0
x = -8*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(42) = 0
x = -5*const(size.xscale)

[State 1000, HitDef]
type = HitDef
trigger1 = Animelem = 37
trigger1 = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(68*const(size.xscale))]
trigger1 = P2StateNo != 40
trigger1 = P2StateNo != [150,155]
attr = S, HT
hitflag = M-
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 3140
p2stateno = 3160
hitsound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 3105

[State 1000, HitDef]
type = HitDef
triggerall = Animelem = 37
triggerall = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(68*const(size.xscale))]
trigger1 = NumTarget
attr = S, HT
hitflag = M
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 3140
p2stateno = 3160
hitsound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 3105

[State 1000, Ctrlset]
type = Ctrlset
trigger1 = AnimelemTime(43) >= 1
value = 1

[State 920]
type = StateTypeSet
trigger1 = AnimelemTime(38) >= 0
movetype = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Connect
[Statedef 3140]
type    = S
movetype= A
physics = N
anim = 3140
SprPriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=6
value = S4,1
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State -2, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(6) = 0
value = S1,5

[State 1200, 9]
type = Width
trigger1 = animelemtime(10) < 0
edge = ceil(30*const(size.xscale)),ceil(40*const(size.xscale))

[State 1200, 9]
type = Width
trigger1 = animelemtime(10) >= 0
edge = ceil(30*const(size.xscale)),ceil(80*const(size.xscale))

[State 810, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 810, posadd]
type = posadd
trigger1 = time = 0
x = -3*const(size.xscale)

[State 810, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = ceil(-20*const(size.xscale))

[State 810, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = ceil(-20*const(size.xscale))

[State 810, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = ceil(-20*const(size.xscale))

[State 810, posadd]
type = posadd
trigger1 = animelemtime(11) = 0
x = ceil(-28*const(size.xscale))

[State 810, posadd]
type = posadd
trigger1 = animelemtime(16) = 0
x = ceil(-35*const(size.xscale))

[State 810, posadd]
type = posadd
trigger1 = animelemtime(17) = 0
x = ceil(-48*const(size.xscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 3160
pos = ceil(100*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 3160
pos = ceil(100*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 3160
pos = ceil(100*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4 && P2StateNo = 3160
pos = ceil(60*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5 && P2StateNo = 3160
pos = ceil(30*const(size.xscale)), ceil(-60*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6 && P2StateNo = 3160
pos = ceil(35*const(size.xscale)), ceil(-55*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 7 && P2StateNo = 3160
pos = ceil(30*const(size.xscale)), ceil(-65*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8 && P2StateNo = 3160
pos = ceil(40*const(size.xscale)), ceil(-70*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 9 && P2StateNo = 3160
pos = ceil(25*const(size.xscale)), ceil(-75*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 10 && P2StateNo = 3160
pos = ceil(5*const(size.xscale)), ceil(-95*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 11 && P2StateNo = 3160
pos = ceil(-40*const(size.xscale)), ceil(-90*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 3162
pos = ceil(70*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 3162
pos = ceil(70*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 3162
pos = ceil(70*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4 && P2StateNo = 3162
pos = ceil(85*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5 && P2StateNo = 3162
pos = ceil(51*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6 && P2StateNo = 3162
pos = ceil(85*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 7 && P2StateNo = 3162
pos = ceil(50*const(size.xscale)), 0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8 && P2StateNo = 3162
pos = ceil(55*const(size.xscale)), ceil(-2*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 9 && P2StateNo = 3162
pos = ceil(26*const(size.xscale)), ceil(-3*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 10 && P2StateNo = 3162
pos = ceil(3*const(size.xscale)), ceil(-21*const(size.yscale))

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 11 && P2StateNo = 3162
pos = ceil(-22*const(size.xscale)), ceil(-53*const(size.yscale))

[State -2, HitAdd]
type = HitAdd
trigger1 = P2stateno = 3161
trigger2 = P2stateno = 3163
value = 1
persistent = 0

[State -2, TargetLifeadd]
type = TargetLifeadd
trigger1 = P2stateno = 3161
trigger2 = P2stateno = 3163
value = -74
persistent = 0

[State -2, VarAdd]
type = VarAdd
trigger1 = P2stateno = 3161
trigger2 = P2stateno = 3163
fvar(15) = 1
persistent = 0

[State -2, VarAdd]
type = VarAdd
triggerall = fvar(23) > 1.0
trigger1 = P2stateno = 5100
trigger2 = P2stateno = 3162
fvar(23) = -0.0625
persistent = 0

[State -2, VarAdd]
type = VarAdd
triggerall = fvar(24) > 1.0
trigger1 = P2stateno = 3161
trigger2 = P2stateno = 3163
fvar(24) = -0.0625
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = P2stateno = 3161
value = S820,2
volume = 255
channel = 1
freqmul = 1.0
loop = 0
pan = 0
persistent = 0

[State 3011, Impact Dust]
type = Helper
trigger1 = AnimElem = 21
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = -75,0
ownPal = 1

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Target
[Statedef 3160]
type    = A
movetype= H
physics = N
ctrl = 0
SprPriority = 1

[State 876, Turn]
type = Turn
trigger1 = !Time

[State 811, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
value = 3160

[State 810, 0]
type = ScreenBound
trigger1 = 1
value = ifelse(animelemtime(11)<0,0,1)
movecamera = 1,0

[State 810, velset]
type = velset
trigger1 = animelemtime(11) = 4
x = -8.0
y = 3.0

[State 810, velset]
type = veladd
trigger1 = animelemtime(11) >= 4
y = .60

[State 5110, 8]
type = VelSet
trigger1 = animelemtime(11) > 4
trigger1 = vel Y > 0
trigger1 = pos Y >= -15
x = -2.0

[State 811, Changestate]
type = Changestate
trigger1 = animelemtime(11) > 5
trigger1 = vel Y > 0
trigger1 = pos Y >= -15
value = 3161

;Target 2
[Statedef 3161]
type    = L
movetype= H
physics = N

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2]
type = ChangeAnim
trigger1 = time = 0
value = 5100

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 810, Envshake]
type = Envshake
trigger1 = Time = 3
time = 16
freq = 120
ampl = -8

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = SelfState
trigger1 = AnimTime = 0
value = 5101

;========================<MAX BOOMERANG RAID>=============================
[StateDef 3150]
type = S
physics = N
moveType = A
anim = 3150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3150, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3150, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3150, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
time = 1
value = SCA

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(-80 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3200,1
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 65
value = 4,0
channel = 0

[State 220, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = animelem = 7
trigger2 = animelem = 13
trigger3 = animelem = 22
trigger4 = animelem = 28
trigger5 = animelem = 37
trigger6 = animelem = 43
trigger7 = animelem = 52
trigger8 = animelem = 58
value = s1,1

[State 1100, ‰¹‚ð–Â‚ç‚·]
type = playsnd
trigger1 = animelemtime(66) = 0
value = s1,3
channel = -1

[State 1120, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 =  AnimElem = 7 || animelem = 37
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 29 < 7, 7, fvar(11) * 29)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 6, 6
guard.pausetime = 6, 6
animType = Hard
air.animType = Up
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = Ifelse(p2statetype = C, 20, 18)
air.hitTime = 120
ground.velocity = -3.5*const(size.xscale)
ground.cornerPush.velOff = 0
guard.velocity = -21.0*const(size.xscale)
guard.cornerPush.velOff = -25
air.velocity = -2.2*const(size.xscale),-11.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.60*const(size.yscale)
fall = 0
fall.xvelocity = -2.2*const(size.xscale)
air.fall = 1
fall.recover =0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
id = 3100

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 =  AnimElem = 13 || animelem = 43
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 29 < 7, 7, fvar(11) * 29)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 6, 6
guard.pausetime = 6, 6
animType = Hard
air.animType = Up
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = Ifelse(p2statetype = C, 20, 18)
air.hitTime = 120
ground.velocity = -3.5*const(size.xscale)
ground.cornerPush.velOff = 0
guard.velocity = -21.0*const(size.xscale)
guard.cornerPush.velOff = -25
air.velocity = -2.2*const(size.xscale),-11.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.60*const(size.yscale)
fall = 0
fall.xvelocity = -2.2*const(size.xscale)
air.fall = 1
fall.recover =0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -86
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
id = 3101

[State 3100, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 =  AnimElem = 22 || animelem = 52
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 29 < 7, 7, fvar(11) * 29)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 6, 6
guard.pausetime = 6, 6
animType = Hard
air.animType = Up
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = Ifelse(p2statetype = C, 20, 18)
air.hitTime = 120
ground.velocity = -3.5*const(size.xscale)
ground.cornerPush.velOff = 0
guard.velocity = -21.0*const(size.xscale)
guard.cornerPush.velOff = -25
air.velocity = -2.2*const(size.xscale),-11.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.60*const(size.yscale)
fall = 0
fall.xvelocity = -2.2*const(size.xscale)
air.fall = 1
fall.recover =0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -86
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
id = 3102

[State 3100, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 =  AnimElem = 28 || animelem = 58
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 29 < 7, 7, fvar(11) * 29)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 6, 6
guard.pausetime = 6, 6
animType = Hard
air.animType = Up
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = Ifelse(p2statetype = C, 20, 18)
air.hitTime = 120
ground.velocity = -3.5*const(size.xscale)
ground.cornerPush.velOff = 0
guard.velocity = -21.0*const(size.xscale)
guard.cornerPush.velOff = -25
air.velocity = -2.2*const(size.xscale),-11.0*const(size.yscale)
air.cornerPush.velOff = 0
yAccel = 0.60*const(size.yscale)
fall = 0
fall.xvelocity = -2.2*const(size.xscale)
air.fall = 1
fall.recover =0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -86
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
id = 3103

[State -2, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(19) = 0
x = 16*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(20) = 0
trigger3 = animelemtime(37) = 0
x = 8*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(7) = 0
trigger2 = animelemtime(22) = 0
trigger3 = animelemtime(52) = 0
x = 6*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(13) = 0
trigger2 = animelemtime(28) = 0
trigger3 = animelemtime(43) = 0
trigger4 = animelemtime(58) = 0
x = 10*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(14) = 0
trigger2 = animelemtime(15) = 0
trigger3 = animelemtime(16) = 0
trigger4 = animelemtime(29) = 0
trigger5 = animelemtime(30) = 0
trigger6 = animelemtime(31) = 0
trigger7 = animelemtime(32) = 0
trigger8 = animelemtime(33) = 0
trigger9 = animelemtime(34) = 0
trigger10 = animelemtime(35) = 0
trigger11 = animelemtime(36) = 0
trigger12 = animelemtime(39) = 0
trigger13 = animelemtime(41) = 0
trigger14 = animelemtime(42) = 0
trigger15 = animelemtime(44) = 0
trigger16 = animelemtime(45) = 0
trigger17 = animelemtime(46) = 0
trigger18 = animelemtime(47) = 0
trigger19 = animelemtime(48) = 0
trigger20 = animelemtime(49) = 0
trigger21 = animelemtime(50) = 0
trigger22 = animelemtime(51) = 0
x = 4*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(66) = 0
x = 6*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(68) = 0
x = 14*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(69) = 0
x = 1*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(70) = 0
trigger2 = animelemtime(71) = 0
x = -8*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(72) = 0
x = -5*const(size.xscale)

[State 1000, HitDef]
type = HitDef
trigger1 = Animelem = 67
trigger1 = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(68*const(size.xscale))]
trigger1 = P2StateNo != 40
trigger1 = P2StateNo != [150,155]
attr = S, HT
hitflag = M-
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 3140
p2stateno = 3160
hitsound = -1 + 0 * (var(31) :=800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 3105

[State 1000, HitDef]
type = HitDef
triggerall = Animelem = 67
triggerall = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(68*const(size.xscale))]
trigger1 = NumTarget
attr = S, HT
hitflag = M
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 3140
p2stateno = 3160
hitsound = -1 + 0 * (var(31) :=800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 3105

[State 920]
type = StateTypeSet
trigger1 = AnimelemTime(68) >= 0
movetype = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;========================<HYPER BOMB>=============================
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(4 * const(size.xScale)), ceil(-80 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = !Time
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=1
value = S3200,1
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State -2, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2) = 0
value = S1,2

[State 1120, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State -2, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 6*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = 14*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = 1*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
trigger2 = animelemtime(7) = 0
x = -8*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -5*const(size.xscale)

[State 1000, HitDef]
type = HitDef
triggerall = Animelem = 3
triggerall = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(68*const(size.xscale))]
trigger1 = NumTarget
trigger1 = Target,StateNo = 1203
attr = S, HT
hitflag = M
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 3210
p2stateno = 3220
hitsound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 3200

[State 1000, HitDef]
type = HitDef
trigger1 = Animelem = 3
trigger1 = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(68*const(size.xscale))]
trigger1 = P2MoveType != H
trigger1 = P2StateNo != 40
trigger1 = P2StateNo != [150,155]
attr = S, HT
hitflag = M-
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 3210
p2stateno = 3220
hitsound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 3200

[State 1000, Ctrlset]
type = Ctrlset
trigger1 = AnimelemTime(9) >= 2
value = 1

[State 920]
type = StateTypeSet
trigger1 = AnimelemTime(4) >= 0
movetype = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Start
[Statedef 3210]
type    = S
movetype= A
physics = N
anim = 3210
SprPriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 36
value = S41,0
volume = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=21
value = S4,2
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=8
value = S4,1
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=36
value = S3200,0
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 3011, Impact Dust]
type = Helper
trigger1 = AnimElem = 12 || AnimElem = 26
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = -75,0
ownPal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 20
trigger3 = animelem = 38
value = S1,5
volume = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 12
trigger2 = animelem = 26
value = S820,2
volume = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1200, 9]
type = Width
trigger1 = animelemtime(10) < 0
trigger2 = animelemtime(15) >= 0
trigger2 = animelemtime(24) < 0
trigger3 = animelemtime(29) >= 0
trigger3 = animelemtime(33) < 0
edge = ceil(30*const(size.xscale)),ceil(40*const(size.xscale))

[State 1200, 9]
type = Width
trigger1 = animelemtime(10) >= 0
trigger1 = animelemtime(15) < 0
trigger2 = animelemtime(24) >= 0
trigger2 = animelemtime(29) < 0
edge = ceil(30*const(size.xscale)),ceil(80*const(size.xscale))

[State 1200, 9]
type = Width
trigger1 = animelemtime(33) >= 0
edge = ceil(100*const(size.xscale)),0

[State -2, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State -2, posadd]
type = posadd
trigger1 = time = 0
x = -3*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = ceil(-20*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = ceil(-20*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = ceil(-20*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(11) = 0
x = ceil(-28*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(15) = 0
x = ceil(-35*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(16) = 0
x = ceil(-48*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(20) = 0
x = ceil(-30*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(22) = 0
x = ceil(-20*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(25) = 0
x = ceil(-28*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(29) = 0
x = ceil(-35*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(30) = 0
x = ceil(-48*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(34) = 0
x = ceil(-30*const(size.xscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 3220
pos = ceil(100*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 3220
pos = ceil(100*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 3220
pos = ceil(100*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4 && P2StateNo = 3220
pos = ceil(60*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5 && P2StateNo = 3220
pos = ceil(30*const(size.xscale)), ceil(-60*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6 && P2StateNo = 3220
pos = ceil(35*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 7 && P2StateNo = 3220
pos = ceil(30*const(size.xscale)), ceil(-65*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8 && P2StateNo = 3220
pos = ceil(40*const(size.xscale)), ceil(-70*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 9 && P2StateNo = 3220
pos = ceil(25*const(size.xscale)), ceil(-75*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 10 && P2StateNo = 3220
pos = ceil(5*const(size.xscale)), ceil(-95*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 11 && P2StateNo = 3220
pos = ceil(-40*const(size.xscale)), ceil(-90*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 12 && P2StateNo = 3220
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 13 && P2StateNo = 3220
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 14 && P2StateNo = 3220
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 15 && P2StateNo = 3220
pos = ceil(-20*const(size.xscale)), ceil(-50*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 16 && P2StateNo = 3220
pos = ceil(15*const(size.xscale)), ceil(-45*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 17 && P2StateNo = 3220
pos = ceil(10*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 18 && P2StateNo = 3220
pos = ceil(30*const(size.xscale)), ceil(-50*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 19 && P2StateNo = 3220
pos = ceil(30*const(size.xscale)), ceil(-60*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 20 && P2StateNo = 3220
pos = ceil(35*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 21 && P2StateNo = 3220
pos = ceil(30*const(size.xscale)), ceil(-65*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 22 && P2StateNo = 3220
pos = ceil(40*const(size.xscale)), ceil(-70*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 23 && P2StateNo = 3220
pos = ceil(25*const(size.xscale)), ceil(-75*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 24 && P2StateNo = 3220
pos = ceil(5*const(size.xscale)), ceil(-95*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 25 && P2StateNo = 3220
pos = ceil(-40*const(size.xscale)), ceil(-90*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 26 && P2StateNo = 3220
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 27 && P2StateNo = 3220
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 28 && P2StateNo = 3220
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 29 && P2StateNo = 3220
pos = ceil(-40*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 30 && P2StateNo = 3220
pos = ceil(10*const(size.xscale)), ceil(-30*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 31 && P2StateNo = 3220
pos = ceil(15*const(size.xscale)), ceil(-45*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 32 && P2StateNo = 3220
pos = ceil(15*const(size.xscale)), ceil(-50*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 33 && P2StateNo = 3220
pos = ceil(15*const(size.xscale)), ceil(-65*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 34 && P2StateNo = 3220
pos = ceil(45*const(size.xscale)), ceil(-70*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = animelem = 35 && P2StateNo = 3220
pos = ceil(31*const(size.xscale)), ceil(-140*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = animelem = 36 && P2StateNo = 3220
pos = ceil(13*const(size.xscale)), ceil(-148*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = animelem = 37 && P2StateNo = 3220
pos = ceil(5*const(size.xscale)), ceil(-155*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = animelemtime(38) >= 0  && P2StateNo = 3220
pos = 0, ceil(-142*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 3221
pos = ceil(70*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 3221
pos = ceil(70*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 3221
pos = ceil(70*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4 && P2StateNo = 3221
pos = ceil(85*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5 && P2StateNo = 3221
pos = ceil(51*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6 && P2StateNo = 3221
pos = ceil(85*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 7 && P2StateNo = 3221
pos = ceil(50*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8 && P2StateNo = 3221
pos = ceil(55*const(size.xscale)), ceil(-2*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 9 && P2StateNo = 3221
pos = ceil(26*const(size.xscale)), ceil(-3*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 10 && P2StateNo = 3221
pos = ceil(3*const(size.xscale)), ceil(-21*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 11 && P2StateNo = 3221
pos = ceil(-22*const(size.xscale)), ceil(-53*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 12 && P2StateNo = 3221
pos = ceil(-80*const(size.xscale)), ceil(-5*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 13 && P2StateNo = 3221
pos = ceil(-80*const(size.xscale)), ceil(-5*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 14 && P2StateNo = 3221
pos = ceil(-80*const(size.xscale)), ceil(-5*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 15 && P2StateNo = 3221
pos = ceil(26*const(size.xscale)), ceil(-123*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 16 && P2StateNo = 3221
pos = ceil(26*const(size.xscale)), ceil(-128*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 17 && P2StateNo = 3221
pos = ceil(1*const(size.xscale)), ceil(-113*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 18 && P2StateNo = 3221
pos = ceil(23*const(size.xscale)), ceil(-100*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 19 && P2StateNo = 3221
pos = ceil(51*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 20 && P2StateNo = 3221
pos = ceil(85*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 21 && P2StateNo = 3221
pos = ceil(50*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 22 && P2StateNo = 3221
pos = ceil(55*const(size.xscale)), ceil(-2*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 23 && P2StateNo = 3221
pos = ceil(26*const(size.xscale)), ceil(-3*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 24 && P2StateNo = 3221
pos = ceil(3*const(size.xscale)), ceil(-21*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 25 && P2StateNo = 3221
pos = ceil(-22*const(size.xscale)), ceil(-53*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 26 && P2StateNo = 3221
pos = ceil(-80*const(size.xscale)), ceil(-5*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 27 && P2StateNo = 3221
pos = ceil(-80*const(size.xscale)), ceil(-5*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 28 && P2StateNo = 3221
pos = ceil(-80*const(size.xscale)), ceil(-5*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 29 && P2StateNo = 3221
pos = ceil(-63*const(size.xscale)), ceil(-5*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 30 && P2StateNo = 3221
pos = ceil(33*const(size.xscale)), ceil(-53*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 31 && P2StateNo = 3221
pos = ceil(25*const(size.xscale)), ceil(-100*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 32 && P2StateNo = 3221
pos = ceil(24*const(size.xscale)), ceil(-105*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 33 && P2StateNo = 3221
pos = ceil(51*const(size.xscale)), ceil(-71*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 34 && P2StateNo = 3221
pos = ceil(60*const(size.xscale)), ceil(-30*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = animelem = 35 && P2StateNo = 3221
pos = ceil(40*const(size.xscale)), ceil(-118*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = animelem = 36 && P2StateNo = 3221
pos = ceil(14*const(size.xscale)), ceil(-150*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = animelem = 37 && P2StateNo = 3221
pos = ceil(-6*const(size.xscale)), ceil(-157*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = animelemtime(38) >= 0  && P2StateNo = 3221
pos = ceil(-4*const(size.xscale)), ceil(-70*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 3222
pos = ceil(95*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 3222
pos = ceil(95*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 3222
pos = ceil(80*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4 && P2StateNo = 3222
pos = ceil(32*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5 && P2StateNo = 3222
pos = ceil(10*const(size.xscale)), ceil(-5*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6 && P2StateNo = 3222
pos = ceil(26*const(size.xscale)), ceil(-8*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 7 && P2StateNo = 3222
pos = ceil(38*const(size.xscale)), ceil(-1*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8 && P2StateNo = 3222
pos = ceil(46*const(size.xscale)), ceil(-14*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 9 && P2StateNo = 3222
pos = ceil(42*const(size.xscale)), ceil(-23*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 10 && P2StateNo = 3222
pos = ceil(16*const(size.xscale)), ceil(-36*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 11 && P2StateNo = 3222
pos = ceil(-26*const(size.xscale)), ceil(-128*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 12 && P2StateNo = 3222
pos = ceil(-70*const(size.xscale)), ceil(-118*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 13 && P2StateNo = 3222
pos = ceil(-70*const(size.xscale)), ceil(-118*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 14 && P2StateNo = 3222
pos = ceil(-70*const(size.xscale)), ceil(-118*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 15 && P2StateNo = 3222
pos = ceil(-35*const(size.xscale)), ceil(-118*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 16 && P2StateNo = 3222
pos = ceil(12*const(size.xscale)), ceil(-118*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 17 && P2StateNo = 3222
pos = ceil(9*const(size.xscale)), ceil(-110*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 18 && P2StateNo = 3222
pos = ceil(37*const(size.xscale)), ceil(-28*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 19 && P2StateNo = 3222
pos = ceil(10*const(size.xscale)), ceil(-5*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 20 && P2StateNo = 3222
pos = ceil(26*const(size.xscale)), ceil(-8*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 21 && P2StateNo = 3222
pos = ceil(38*const(size.xscale)), ceil(-1*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 22 && P2StateNo = 3222
pos = ceil(46*const(size.xscale)), ceil(-14*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 23 && P2StateNo = 3222
pos = ceil(42*const(size.xscale)), ceil(-23*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 24 && P2StateNo = 3222
pos = ceil(16*const(size.xscale)), ceil(-36*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 25 && P2StateNo = 3222
pos = ceil(-26*const(size.xscale)), ceil(-128*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 26 && P2StateNo = 3222
pos = ceil(-70*const(size.xscale)), ceil(-118*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 27 && P2StateNo = 3222
pos = ceil(-70*const(size.xscale)), ceil(-118*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 28 && P2StateNo = 3222
pos = ceil(-70*const(size.xscale)), ceil(-118*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 29 && P2StateNo = 3222
pos = ceil(-20*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 30 && P2StateNo = 3222
pos = ceil(35*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 31 && P2StateNo = 3222
pos = ceil(30*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 32 && P2StateNo = 3222
pos = ceil(30*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 33 && P2StateNo = 3222
pos = ceil(11*const(size.xscale)), ceil(2*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 34 && P2StateNo = 3222
pos = ceil(47*const(size.xscale)), ceil(-15*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 35 && P2StateNo = 3222
pos = ceil(-8*const(size.xscale)), ceil(-227*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 36 && P2StateNo = 3222
pos = ceil(-9*const(size.xscale)), ceil(-66*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 37 && P2StateNo = 3222
pos = ceil(-12*const(size.xscale)), ceil(-75*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = animelemtime(38) >= 0  && P2StateNo = 3222
pos = ceil(-9*const(size.xscale)), ceil(-237*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = [3223,3224]
pos = ceil(60*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = [3223,3224]
pos = ceil(60*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = [3223,3224]
pos = ceil(50*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4 && P2StateNo = [3223,3224]
pos = ceil(80*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5 && P2StateNo = [3223,3224]
pos = ceil(60*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6 && P2StateNo = [3223,3224]
pos = ceil(40*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 7 && P2StateNo = [3223,3224]
pos = ceil(60*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8 && P2StateNo = [3223,3224]
pos = ceil(65*const(size.xscale)), ceil(-15*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 9 && P2StateNo = [3223,3224]
pos = ceil(60*const(size.xscale)), ceil(-20*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 10 && P2StateNo = [3223,3224]
pos = ceil(40*const(size.xscale)), ceil(-40*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 11 && P2StateNo = [3223,3224]
pos = ceil(-30*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 12 && P2StateNo = [3223,3224]
pos = ceil(-70*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 13 && P2StateNo = [3223,3224]
pos = ceil(-70*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 14 && P2StateNo = [3223,3224]
pos = ceil(-70*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 15 && P2StateNo = [3223,3224]
pos = ceil(-50*const(size.xscale)), ceil(-100*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 16 && P2StateNo = [3223,3224]
pos = ceil(5*const(size.xscale)), ceil(-90*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 17 && P2StateNo = [3223,3224]
pos = ceil(20*const(size.xscale)), ceil(-85*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 18 && P2StateNo = [3223,3224]
pos = ceil(25*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 19 && P2StateNo = [3223,3224]
pos = ceil(60*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 20 && P2StateNo = [3223,3224]
pos = ceil(40*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 21 && P2StateNo = [3223,3224]
pos = ceil(60*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 22 && P2StateNo = [3223,3224]
pos = ceil(65*const(size.xscale)), ceil(-15*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 23 && P2StateNo = [3223,3224]
pos = ceil(60*const(size.xscale)), ceil(-20*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 24 && P2StateNo = [3223,3224]
pos = ceil(40*const(size.xscale)), ceil(-40*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 25 && P2StateNo = [3223,3224]
pos = ceil(-30*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 26 && P2StateNo = [3223,3224]
pos = ceil(-70*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 27 && P2StateNo = [3223,3224]
pos = ceil(-70*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 28 && P2StateNo = [3223,3224]
pos = ceil(-70*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 29 && P2StateNo = [3223,3224]
pos = ceil(-15*const(size.xscale)), ceil(-10*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 30 && P2StateNo = [3223,3224]
pos = ceil(35*const(size.xscale)), ceil(-85*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 31 && P2StateNo = [3223,3224]
pos = ceil(20*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 32 && P2StateNo = [3223,3224]
pos = ceil(20*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 33 && P2StateNo = [3223,3224]
pos = ceil(40*const(size.xscale)), ceil(-85*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 34 && P2StateNo = [3223,3224]
pos = ceil(60*const(size.xscale)), ceil(-105*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = animelem = 35 && P2StateNo = [3223,3224]
pos = ceil(55*const(size.xscale)), ceil(-195*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = animelem = 36 && P2StateNo = [3223,3224]
pos = ceil(20*const(size.xscale)), ceil(-140*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = animelem = 37 && P2StateNo = [3223,3224]
pos = ceil(-5*const(size.xscale)), ceil(-160*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = animelemtime(38) >= 0  && P2StateNo = [3223,3224]
pos = 0, ceil(-100*const(size.yscale))

[State -2, HitAdd]
type = HitAdd
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
value = 1

[State -2, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
value = -135
kill = 0

[State -2, VarAdd]
type = VarAdd
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
fvar(15) = 1

[State -2, VarAdd]
type = VarAdd
triggerall = fvar(23) > 1.0
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
fvar(23) = -0.0625

[State -2, VarAdd]
type = VarAdd
triggerall = fvar(24) > 1.0
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
fvar(24) = -0.0625

[State 5110, 6]
type = PlaySnd
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
value = S5100,1

[State -2, Envshake]
type = Envshake
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
time = 16
freq = 120
ampl = -8

[State 1200, Velocity]
type = VelSet
trigger1 = AnimElemtime(36) = 0
x = 3.0
y = -18.0

[State 1200, veladd]
type = veladd
trigger1 = animelemtime(36) >= 0
y = .75

[State 1200, StateType]
type = StateTypeSet
trigger1 = AnimElem = 36
StateType = A
physics = N

[State -2, State End]
type = ChangeState
triggerall = animelemtime(36) > 0
trigger1 = vel Y > 0
trigger1 = pos Y >= 0
value = 3251

;Target
[Statedef 3220]
type    = A
movetype= H
physics = N
ctrl = 0
SprPriority = 1

[State -2, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
value = 3220

[State -2, 0]
type = ScreenBound
trigger1 = 1
value = ifelse(animelemtime(11)<0,0,1)
movecamera = 1,0

;Target 2
[Statedef 3221]
type    = A
movetype= H
physics = N
ctrl = 0
SprPriority = 1

[State -2, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
value = 3221

[State -2, 0]
type = ScreenBound
trigger1 = 1
value = ifelse(animelemtime(11)<0,0,1)
movecamera = 1,0

;Finish
[Statedef 3251]
type    = S
movetype= A
physics = N
anim = 3251

[State 0, Explod]
type = Explod
triggerall = prevstateno = 3210
trigger1 = animelem = 3
anim = 7000
ID = 7000
pos = 94,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

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

[State 811, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(3) = 0
value = -174

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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3200,2
volume = 255
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
trigger1 = var(10) = [3,4]
trigger1 = animelemtime(3) = 2
time = 20
freq = 140
ampl = -10

[State 810, State End]
type = ChangeState
trigger1 = animtime = 0
value = 1052

;========================<BACKDROP BOMB>=============================
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(4 * const(size.xScale)), ceil(-80 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=1
value = S3200,1
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State -2, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2) = 0
value = S1,2

[State 1120, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State -2, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 6*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = 14*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = 1*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
trigger2 = animelemtime(7) = 0
x = -8*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -5*const(size.xscale)

[State 1000, HitDef]
type = HitDef
triggerall = Animelem = 3
triggerall = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(68*const(size.xscale))]
trigger1 = NumTarget
trigger1 = Target,StateNo = 1203
attr = S, HT
hitflag = M
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 3310
p2stateno = 3320
hitsound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 3300

[State 1000, HitDef]
type = HitDef
trigger1 = Animelem = 3
trigger1 = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(68*const(size.xscale))]
trigger1 = P2MoveType != H
trigger1 = P2StateNo != 40
trigger1 = P2StateNo != [150,155]
attr = S, HT
hitflag = M-
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 3310
p2stateno = 3320
hitsound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 3300

[State 1000, Ctrlset]
type = Ctrlset
trigger1 = AnimelemTime(9) >= 2
value = 1

[State 920]
type = StateTypeSet
trigger1 = AnimelemTime(4) >= 0
movetype = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Start
[Statedef 3310]
type    = S
movetype= A
physics = N
anim = 3340
SprPriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=8
value = S4,2
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=21
value = S4,1
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=36
value = S1000,0
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 3011, Impact Dust]
type = Helper
trigger1 = AnimElem = 12 || AnimElem = 26  || AnimElem = 40
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = -75,0
ownPal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 20
trigger3 = animelem = 34
value = S1,5
volume = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 12
trigger2 = animelem = 26
trigger3 = animelem = 40
value = S820,2
volume = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1200, 9]
type = Width
trigger1 = animelemtime(10) < 0
trigger2 = animelemtime(15) >= 0
trigger2 = animelemtime(24) < 0
trigger3 = animelemtime(29) >= 0
trigger3 = animelemtime(33) < 0
edge = ceil(30*const(size.xscale)),ceil(40*const(size.xscale))

[State 1200, 9]
type = Width
trigger1 = animelemtime(10) >= 0
trigger1 = animelemtime(15) < 0
trigger2 = animelemtime(24) >= 0
trigger2 = animelemtime(29) < 0
edge = ceil(30*const(size.xscale)),ceil(80*const(size.xscale))

[State 1200, 9]
type = Width
trigger1 = animelemtime(33) >= 0
edge = ceil(100*const(size.xscale)),0

[State -2, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State -2, posadd]
type = posadd
trigger1 = time = 0
x = -3*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = ceil(-20*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = ceil(-20*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = ceil(-20*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(11) = 0
x = ceil(-28*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(15) = 0
x = ceil(-35*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(16) = 0
x = ceil(-48*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(20) = 0
x = ceil(-30*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(22) = 0
x = ceil(-20*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(25) = 0
x = ceil(-28*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(29) = 0
x = ceil(-35*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(30) = 0
x = ceil(-48*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(34) = 0
x = ceil(-30*const(size.xscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 3320
pos = ceil(100*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 3320
pos = ceil(100*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 3320
pos = ceil(100*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4 && P2StateNo = 3320
pos = ceil(60*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5 && P2StateNo = 3320
pos = ceil(30*const(size.xscale)), ceil(-60*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6 && P2StateNo = 3320
pos = ceil(35*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 7 && P2StateNo = 3320
pos = ceil(30*const(size.xscale)), ceil(-65*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8 && P2StateNo = 3320
pos = ceil(40*const(size.xscale)), ceil(-70*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 9 && P2StateNo = 3320
pos = ceil(25*const(size.xscale)), ceil(-75*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 10 && P2StateNo = 3320
pos = ceil(5*const(size.xscale)), ceil(-95*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 11 && P2StateNo = 3320
pos = ceil(-40*const(size.xscale)), ceil(-90*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 12 && P2StateNo = 3320
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 13 && P2StateNo = 3320
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 14 && P2StateNo = 3320
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 15 && P2StateNo = 3320
pos = ceil(-20*const(size.xscale)), ceil(-50*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 16 && P2StateNo = 3320
pos = ceil(15*const(size.xscale)), ceil(-45*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 17 && P2StateNo = 3320
pos = ceil(10*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 18 && P2StateNo = 3320
pos = ceil(30*const(size.xscale)), ceil(-50*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 19 && P2StateNo = 3320
pos = ceil(30*const(size.xscale)), ceil(-60*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 20 && P2StateNo = 3320
pos = ceil(35*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 21 && P2StateNo = 3320
pos = ceil(30*const(size.xscale)), ceil(-65*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 22 && P2StateNo = 3320
pos = ceil(40*const(size.xscale)), ceil(-70*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 23 && P2StateNo = 3320
pos = ceil(25*const(size.xscale)), ceil(-75*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 24 && P2StateNo = 3320
pos = ceil(5*const(size.xscale)), ceil(-95*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 25 && P2StateNo = 3320
pos = ceil(-40*const(size.xscale)), ceil(-90*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 26 && P2StateNo = 3320
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 27 && P2StateNo = 3320
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 28 && P2StateNo = 3320
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 29 && P2StateNo = 3320
pos = ceil(-40*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 30 && P2StateNo = 3320
pos = ceil(10*const(size.xscale)), ceil(-30*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 31 && P2StateNo = 3320
pos = ceil(15*const(size.xscale)), ceil(-45*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 32 && P2StateNo = 3320
pos = ceil(15*const(size.xscale)), ceil(-50*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 33 && P2StateNo = 3320
pos = ceil(30*const(size.xscale)), ceil(-60*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 34 && P2StateNo = 3320
pos = ceil(35*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 35 && P2StateNo = 3320
pos = ceil(30*const(size.xscale)), ceil(-65*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 36 && P2StateNo = 3320
pos = ceil(40*const(size.xscale)), ceil(-70*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 37 && P2StateNo = 3320
pos = ceil(25*const(size.xscale)), ceil(-75*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 38 && P2StateNo = 3320
pos = ceil(5*const(size.xscale)), ceil(-95*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 39 && P2StateNo = 3320
pos = ceil(-40*const(size.xscale)), ceil(-90*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 40 && P2StateNo = 3320
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 41 && P2StateNo = 3320
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 42 && P2StateNo = 3320
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 43 && P2StateNo = 3320
pos = ceil(-40*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 44 && P2StateNo = 3320
pos = ceil(10*const(size.xscale)), ceil(-30*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 45 && P2StateNo = 3320
pos = ceil(15*const(size.xscale)), ceil(-45*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 46 && P2StateNo = 3320
pos = ceil(15*const(size.xscale)), ceil(-50*const(size.yscale))

[State -2, HitAdd]
type = HitAdd
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
trigger3 = animelemtime(40) = 0
value = 1

[State -2, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
value = -74
kill = 0

[State -2, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(40) = 0
value = -74
kill = 1

[State -2, VarAdd]
type = VarAdd
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
trigger3 = animelemtime(40) = 0
fvar(15) = 1

[State -2, VarAdd]
type = VarAdd
triggerall = fvar(23) > 1.0
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
trigger3 = animelemtime(40) = 0
fvar(23) = -0.0625

[State -2, VarAdd]
type = VarAdd
triggerall = fvar(24) > 1.0
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
trigger3 = animelemtime(40) = 0
fvar(24) = -0.0625

[State 5110, 6]
type = PlaySnd
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
trigger3 = animelemtime(40) = 0
value = S5100,1

[State -2, Envshake]
type = Envshake
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
trigger3 = animelemtime(40) = 0
time = 16
freq = 120
ampl = -8

[State -2, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Target
[Statedef 3320]
type    = A
movetype= H
physics = N
ctrl = 0
SprPriority = 1

[State -2, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
value = 3320

[State -2, 0]
type = ScreenBound
trigger1 = 1
value = ifelse(animelemtime(11)<0,0,1)
movecamera = 1,0

[State 810, velset]
type = velset
trigger1 = animelemtime(36) = 4
x = 8.0
y = 3.0

[State 810, velset]
type = veladd
trigger1 = animelemtime(36) >= 4
y = .60

[State 5110, 8]
type = VelSet
trigger1 = animelemtime(36) > 4
trigger1 = vel Y > 0
trigger1 = pos Y >= -15
x = 2.0

[State 811, Changestate]
type = Changestate
trigger1 = animelemtime(36) > 5
value = 3161

;========================<MAX BACKDROP BOMB>=============================
[StateDef 3350]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3350, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3350, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3350, Corner Push]
type = VarSet
trigger1 = time = 3
fvar(5) = 0

[State 3350, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3350, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3350, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(4 * const(size.xScale)), ceil(-80 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=1
value = S3200,1
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State -2, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(2) = 0
value = S1,2

[State 1120, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State -2, posadd]
type = posadd
trigger1 = animelemtime(2) = 0
x = 6*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(4) = 0
x = 14*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = 1*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
trigger2 = animelemtime(7) = 0
x = -8*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = -5*const(size.xscale)

[State 1000, HitDef]
type = HitDef
triggerall = Animelem = 3
triggerall = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(68*const(size.xscale))]
trigger1 = NumTarget
trigger1 = Target,StateNo = 1203
attr = S, HT
hitflag = M
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 3360
p2stateno = 3370
hitsound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 3300

[State 1000, HitDef]
type = HitDef
trigger1 = Animelem = 3
trigger1 = P2BodyDist X = [ceil(-20*const(size.xscale)),ceil(68*const(size.xscale))]
trigger1 = P2MoveType != H
trigger1 = P2StateNo != 40
trigger1 = P2StateNo != [150,155]
attr = S, HT
hitflag = M-
priority = 7, Miss
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p1stateno = 3360
p2stateno = 3370
hitsound = -1 + 0 * (var(31) := 800)
numhits = 0
guard.dist = 0
getpower = 0
givepower = 0
ID = 3300

[State 1000, Ctrlset]
type = Ctrlset
trigger1 = AnimelemTime(9) >= 2
value = 1

[State 920]
type = StateTypeSet
trigger1 = AnimelemTime(4) >= 0
movetype = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Start
[Statedef 3360]
type    = S
movetype= A
physics = N
anim = 3350
SprPriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=8
trigger2 = animelem=36
value = S4,2
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=21
trigger2 = animelem=50
value = S4,1
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=64
value = S1000,0
volume = 255
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 3011, Impact Dust]
type = Helper
trigger1 = AnimElem = 12 || AnimElem = 26  || AnimElem = 40 || AnimElem = 54  || AnimElem = 68
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = -75,0
ownPal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 20
trigger3 = animelem = 34
trigger4 = animelem = 48
trigger5 = animelem = 62
value = S1,5
volume = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 12
trigger2 = animelem = 26
trigger3 = animelem = 40
trigger4 = animelem = 54
trigger5 = animelem = 68
value = S820,2
volume = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1200, 9]
type = Width
trigger1 = animelemtime(10) < 0
trigger2 = animelemtime(15) >= 0
trigger2 = animelemtime(24) < 0
trigger3 = animelemtime(29) >= 0
trigger4 = animelemtime(38) < 0
trigger4 = animelemtime(43) >= 0
trigger5 = animelemtime(52) < 0
trigger5 = animelemtime(57) >= 0
trigger6 = animelemtime(61) < 0
edge = ceil(30*const(size.xscale)),ceil(40*const(size.xscale))

[State 1200, 9]
type = Width
trigger1 = animelemtime(10) >= 0
trigger1 = animelemtime(15) < 0
trigger2 = animelemtime(24) >= 0
trigger2 = animelemtime(29) < 0
trigger3 = animelemtime(38) < 0
trigger3 = animelemtime(43) >= 0
trigger4 = animelemtime(52) < 0
trigger4 = animelemtime(57) >= 0
edge = ceil(30*const(size.xscale)),ceil(80*const(size.xscale))

[State 1200, 9]
type = Width
trigger1 = animelemtime(61) >= 0
edge = ceil(100*const(size.xscale)),0

[State -2, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State -2, posadd]
type = posadd
trigger1 = time = 0
x = -3*const(size.xscale)

[State -2, posadd]
type = posadd
trigger1 = animelemtime(5) = 0
x = ceil(-20*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(6) = 0
x = ceil(-20*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(8) = 0
x = ceil(-20*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(11) = 0
x = ceil(-28*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(15) = 0
x = ceil(-35*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(16) = 0
x = ceil(-48*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(20) = 0
x = ceil(-30*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(22) = 0
x = ceil(-20*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(25) = 0
x = ceil(-28*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(29) = 0
x = ceil(-35*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(30) = 0
x = ceil(-48*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(34) = 0
x = ceil(-30*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(36) = 0
x = ceil(-20*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(39) = 0
x = ceil(-28*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(43) = 0
x = ceil(-35*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(44) = 0
x = ceil(-48*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(48) = 0
x = ceil(-30*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(50) = 0
x = ceil(-20*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(53) = 0
x = ceil(-28*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(57) = 0
x = ceil(-35*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(58) = 0
x = ceil(-48*const(size.xscale))

[State -2, posadd]
type = posadd
trigger1 = animelemtime(62) = 0
x = ceil(-30*const(size.xscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1 && P2StateNo = 3370
pos = ceil(100*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2 && P2StateNo = 3370
pos = ceil(100*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3 && P2StateNo = 3370
pos = ceil(100*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4 && P2StateNo = 3370
pos = ceil(60*const(size.xscale)), 0

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5 && P2StateNo = 3370
pos = ceil(30*const(size.xscale)), ceil(-60*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6 && P2StateNo = 3370
pos = ceil(35*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 7 && P2StateNo = 3370
pos = ceil(30*const(size.xscale)), ceil(-65*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8 && P2StateNo = 3370
pos = ceil(40*const(size.xscale)), ceil(-70*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 9 && P2StateNo = 3370
pos = ceil(25*const(size.xscale)), ceil(-75*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 10 && P2StateNo = 3370
pos = ceil(5*const(size.xscale)), ceil(-95*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 11 && P2StateNo = 3370
pos = ceil(-40*const(size.xscale)), ceil(-90*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 12 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 13 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 14 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 15 && P2StateNo = 3370
pos = ceil(-20*const(size.xscale)), ceil(-50*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 16 && P2StateNo = 3370
pos = ceil(15*const(size.xscale)), ceil(-45*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 17 && P2StateNo = 3370
pos = ceil(10*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 18 && P2StateNo = 3370
pos = ceil(30*const(size.xscale)), ceil(-50*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 19 && P2StateNo = 3370
pos = ceil(30*const(size.xscale)), ceil(-60*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 20 && P2StateNo = 3370
pos = ceil(35*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 21 && P2StateNo = 3370
pos = ceil(30*const(size.xscale)), ceil(-65*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 22 && P2StateNo = 3370
pos = ceil(40*const(size.xscale)), ceil(-70*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 23 && P2StateNo = 3370
pos = ceil(25*const(size.xscale)), ceil(-75*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 24 && P2StateNo = 3370
pos = ceil(5*const(size.xscale)), ceil(-95*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 25 && P2StateNo = 3370
pos = ceil(-40*const(size.xscale)), ceil(-90*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 26 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 27 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 28 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 29 && P2StateNo = 3370
pos = ceil(-40*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 30 && P2StateNo = 3370
pos = ceil(10*const(size.xscale)), ceil(-30*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 31 && P2StateNo = 3370
pos = ceil(15*const(size.xscale)), ceil(-45*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 32 && P2StateNo = 3370
pos = ceil(15*const(size.xscale)), ceil(-50*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 33 && P2StateNo = 3370
pos = ceil(30*const(size.xscale)), ceil(-60*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 34 && P2StateNo = 3370
pos = ceil(35*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 35 && P2StateNo = 3370
pos = ceil(30*const(size.xscale)), ceil(-65*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 36 && P2StateNo = 3370
pos = ceil(40*const(size.xscale)), ceil(-70*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 37 && P2StateNo = 3370
pos = ceil(25*const(size.xscale)), ceil(-75*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 38 && P2StateNo = 3370
pos = ceil(5*const(size.xscale)), ceil(-95*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 39 && P2StateNo = 3370
pos = ceil(-40*const(size.xscale)), ceil(-90*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 40 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 41 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 42 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 43 && P2StateNo = 3370
pos = ceil(-40*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 44 && P2StateNo = 3370
pos = ceil(10*const(size.xscale)), ceil(-30*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 45 && P2StateNo = 3370
pos = ceil(15*const(size.xscale)), ceil(-45*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 46 && P2StateNo = 3370
pos = ceil(15*const(size.xscale)), ceil(-50*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 47 && P2StateNo = 3370
pos = ceil(30*const(size.xscale)), ceil(-60*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 48 && P2StateNo = 3370
pos = ceil(35*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 49 && P2StateNo = 3370
pos = ceil(30*const(size.xscale)), ceil(-65*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 50 && P2StateNo = 3370
pos = ceil(40*const(size.xscale)), ceil(-70*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 51 && P2StateNo = 3370
pos = ceil(25*const(size.xscale)), ceil(-75*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 52 && P2StateNo = 3370
pos = ceil(5*const(size.xscale)), ceil(-95*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 53 && P2StateNo = 3370
pos = ceil(-40*const(size.xscale)), ceil(-90*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 54 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 55 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 56 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 57 && P2StateNo = 3370
pos = ceil(-40*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 58 && P2StateNo = 3370
pos = ceil(10*const(size.xscale)), ceil(-30*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 59 && P2StateNo = 3370
pos = ceil(15*const(size.xscale)), ceil(-45*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 60 && P2StateNo = 3370
pos = ceil(15*const(size.xscale)), ceil(-50*const(size.yscale))
[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 61 && P2StateNo = 3370
pos = ceil(30*const(size.xscale)), ceil(-60*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 62 && P2StateNo = 3370
pos = ceil(35*const(size.xscale)), ceil(-55*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 63 && P2StateNo = 3370
pos = ceil(30*const(size.xscale)), ceil(-65*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 64 && P2StateNo = 3370
pos = ceil(40*const(size.xscale)), ceil(-70*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 65 && P2StateNo = 3370
pos = ceil(25*const(size.xscale)), ceil(-75*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 66 && P2StateNo = 3370
pos = ceil(5*const(size.xscale)), ceil(-95*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 67 && P2StateNo = 3370
pos = ceil(-40*const(size.xscale)), ceil(-90*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 68 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 69 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 70 && P2StateNo = 3370
pos = ceil(-80*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 71 && P2StateNo = 3370
pos = ceil(-40*const(size.xscale)), ceil(-25*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 72 && P2StateNo = 3370
pos = ceil(10*const(size.xscale)), ceil(-30*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 73 && P2StateNo = 3370
pos = ceil(15*const(size.xscale)), ceil(-45*const(size.yscale))

[State -2, TargetBind]
type = TargetBind
trigger1 = AnimElem = 74 && P2StateNo = 3370
pos = ceil(15*const(size.xscale)), ceil(-50*const(size.yscale))

[State -2, HitAdd]
type = HitAdd
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
trigger3 = animelemtime(40) = 0
trigger4 = animelemtime(54) = 0
trigger5 = animelemtime(68) = 0
value = 1

[State -2, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
trigger3 = animelemtime(40) = 0
trigger4 = animelemtime(54) = 0
value = -64
kill = 0

[State -2, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(68) = 0
value = -65
kill = 1

[State -2, VarAdd]
type = VarAdd
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
trigger3 = animelemtime(40) = 0
trigger4 = animelemtime(54) = 0
trigger5 = animelemtime(68) = 0
fvar(15) = 1

[State -2, VarAdd]
type = VarAdd
triggerall = fvar(23) > 1.0
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
trigger3 = animelemtime(40) = 0
trigger4 = animelemtime(54) = 0
trigger5 = animelemtime(68) = 0
fvar(23) = -0.0625

[State -2, VarAdd]
type = VarAdd
triggerall = fvar(24) > 1.0
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
trigger3 = animelemtime(40) = 0
trigger4 = animelemtime(54) = 0
trigger5 = animelemtime(68) = 0
fvar(24) = -0.0625

[State 5110, 6]
type = PlaySnd
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
trigger3 = animelemtime(40) = 0
trigger4 = animelemtime(54) = 0
trigger5 = animelemtime(68) = 0
value = S5100,1

[State -2, Envshake]
type = Envshake
trigger1 = animelemtime(12) = 0
trigger2 = animelemtime(26) = 0
trigger3 = animelemtime(40) = 0
trigger4 = animelemtime(54) = 0
trigger5 = animelemtime(68) = 0
time = 16
freq = 120
ampl = -8

[State -2, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Target
[Statedef 3370]
type    = A
movetype= H
physics = N
ctrl = 0
SprPriority = 1

[State -2, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
value = 3330

[State -2, 0]
type = ScreenBound
trigger1 = 1
value = ifelse(animelemtime(11)<0,0,1)
movecamera = 1,0

[State 810, velset]
type = velset
trigger1 = animelemtime(60) = 4
x = 8.0
y = 3.0

[State 810, velset]
type = veladd
trigger1 = animelemtime(60) >= 4
y = .60

[State 5110, 8]
type = VelSet
trigger1 = animelemtime(60) > 4
trigger1 = vel Y > 0
trigger1 = pos Y >= -15
x = 2.0

[State 811, Changestate]
type = Changestate
trigger1 = animelemtime(60) > 5
value = 3161
