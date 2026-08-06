;=====================================================================
;  CMD File For "Ken"                                   Made By M.M.R.
;                                       Ver. 1.0           2002.Oct.19
;=====================================================================
;-| AI section |------------------------------------------------------
;---------------------------------------------------------------------
[Command]
name = "AI_1"
command = a,a,a,a
time = 0
[Command]
name = "AI_2"
command = a,a,a,b
time = 0
[Command]
name = "AI_3"
command = a,a,a,c
time = 0
[Command]
name = "AI_4"
command = a,a,b,a
time = 0
[Command]
name = "AI_5"
command = a,a,b,b
time = 0
[Command]
name = "AI_6"
command = a,a,b,c
time = 0
[Command]
name = "AI_7"
command = a,a,c,a
time = 0
[Command]
name = "AI_8"
command = a,a,c,b
time = 0
[Command]
name = "AI_9"
command = a,a,c,c
time = 0
[Command]
name = "AI_10"
command = a,b,a,a
time = 0
[Command]
name = "AI_11"
command = a,b,a,b
time = 0
[Command]
name = "AI_12"
command = a,b,a,c
time = 0
[Command]
name = "AI_13"
command = a,b,b,a
time = 0
[Command]
name = "AI_14"
command = a,b,b,b
time = 0
[Command]
name = "AI_15"
command = a,b,b,c
time = 0
[Command]
name = "AI_16"
command = a,b,c,a
time = 0
[Command]
name = "AI_17"
command = a,b,c,b
time = 0
[Command]
name = "AI_18"
command = a,b,c,c
time = 0
[Command]
name = "AI_19"
command = a,c,a,a
time = 0
[Command]
name = "AI_20"
command = a,c,a,b
time = 0
[Command]
name = "AI_21"
command = a,c,a,c
time = 0
[Command]
name = "AI_22"
command = a,c,b,a
time = 0
[Command]
name = "AI_23"
command = a,c,b,b
time = 0
[Command]
name = "AI_24"
command = a,b,b,c
time = 0
[Command]
name = "AI_25"
command = a,c,c,a
time = 0
[Command]
name = "AI_26"
command = a,c,c,b
time = 0
[Command]
name = "AI_27"
command = a,c,c,c
time = 0
[Command]
name = "AI_28"
command = b,a,a,a
time = 0
[Command]
name = "AI_29"
command = b,a,a,b
time = 0
[Command]
name = "AI_30"
command = b,a,a,c
time = 0
[Command]
name = "AI_31"
command = b,a,b,a
time = 0
[Command]
name = "AI_32"
command = b,a,b,b
time = 0
[Command]
name = "AI_33"
command = b,a,b,c
time = 0
[Command]
name = "AI_34"
command = b,a,c,a
time = 0
[Command]
name = "AI_35"
command = b,a,c,b
time = 0
[Command]
name = "AI_36"
command = b,a,c,c
time = 0
[Command]
name = "AI_37"
command = b,b,a,a
time = 0
[Command]
name = "AI_38"
command = b,b,a,b
time = 0
[Command]
name = "AI_39"
command = b,b,a,c
time = 0
[Command]
name = "AI_40"
command = b,b,b,a
time = 0
[Command]
name = "AI_41"
command = b,b,b,b
time = 0
[Command]
name = "AI_42"
command = b,b,b,c
time = 0
[Command]
name = "AI_43"
command = b,b,c,a
time = 0
[Command]
name = "AI_44"
command = b,b,c,b
time = 0
[Command]
name = "AI_45"
command = b,b,c,c
time = 0
[Command]
name = "AI_46"
command = b,c,a,a
time = 0
[Command]
name = "AI_47"
command = b,c,a,b
time = 0
[Command]
name = "AI_48"
command = b,c,a,c
time = 0
[Command]
name = "AI_49"
command = b,c,b,a
time = 0
[Command]
name = "AI_50"
command = b,c,b,b
time = 0

;---------------------------------------------------------------------
;-| Super Motions |---------------------------------------------------
;---------------------------------------------------------------------

; Sennoh Hadou
[Command]
name = "Sennoh"
command = ~D,DB, B, D,DB,x
time = 25
[Command]
name = "Sennoh"
command = ~D,DB, B, D,DB,y
time = 25
[Command]
name = "Sennoh"
command = ~D,DB, B, D,DB,z
time = 25


; Kuzuryu Reppa
[Command]
name = "kuzuryu_3"
command = ~D,DB, B, D,DB, c
time = 25
[Command]
name = "kuzuryu_2"
command = ~D,DB, B, D,DB, b
time = 25
[Command]
name = "kuzuryu_2"
command = ~D,DB, B, D,DB, c
time = 25
[Command]
name = "kuzuryu_1"
command = ~D,DB, B, D,DB, a
time = 25
[Command]
name = "kuzuryu_1"
command = ~D,DB, B, D,DB, b
time = 25
[Command]
name = "kuzuryu_1"
command = ~D,DB, B, D,DB, c
time = 25

;---------------------------------------------------------------------
;-| Special Motions |-------------------------------------------------
;---------------------------------------------------------------------
; Hadouken
[Command]
name = "ha_a"
command = ~D,DF, F, x
time = 20
[Command]
name = "ha_b"
command = ~D,DF, F, y
time = 20
[Command]
name = "ha_c"
command = ~D,DF, F, z
time = 20

; Shouryuuken
[Command]
name = "sh_a"
command = ~F, D,DF, x
time = 25
[Command]
name = "sh_b"
command = ~F, D,DF, y
time = 25
[Command]
name = "sh_c"
command = ~F, D,DF, z
time = 25

; Dash SvC
[Command]
name = "Dash_a"
command = ~F,D,DF, a
time = 25
[Command]
name = "Dash_b"
command = ~F,D,DF, b
time = 25
[Command]
name = "Dash_c"
command = ~F,D,DF, c
time = 25

; Tatsumaki Senpuukyaku
[Command]
name = "tsk_a"
command = ~D,DB,B , a
time = 25
[Command]
name = "tsk_b"
command = ~D,DB,B , b
time = 25
[Command]
name = "tsk_c"
command = ~D,DB,B , c
time = 25

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10
[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "ax"
command = a+x
time = 1

; Zero Counter
[Command]
name = "ZC"
command = /$F, b+y
time = 3

[Command]
name = "ZC"
command = /$F, c+z
time = 3

;-| Dir + Button |----------------------------------------------------
[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

;------------------- Street Fighter Zero 3
[Command]
name = "AT"
command = x+y
time = 3
[Command]
name = "AT"
command = y+z
time = 3
[Command]
name = "AT"
command = x+z
time = 3
[Command]
name = "AT"
command = a+c
time = 3
[Command]
name = "AT"
command = a+b
time = 3
[Command]
name = "AT"
command = b+c
time = 3

[Command]
name = "throw_p"
command = x+y
time = 1

[Command]
name = "throw_p"
command = y+z
time = 1

[Command]
name = "throw_p"
command = x+z
time = 1

[Command]
name = "throw_k"
command = a+c
time = 1

[Command]
name = "throw_k"
command = a+b
time = 1

[Command]
name = "throw_k"
command = b+c
time = 1

;-------------------------------------
[Command]
name = "Shaking"
command = B, F
time = 10
[Command]
name = "Shaking"
command = F, B
time = 10

;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
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
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;------------------------ Street Fighter Zero 3
[Command]
name = "random"
command = x
time = 1

[Command]
name = "random"
command = y
time = 1

[Command]
name = "random"
command = z
time = 1

[Command]
name = "random"
command = a
time = 1

[Command]
name = "random"
command = b
time = 1

[Command]
name = "random"
command = c
time = 1

[Command]
name = "random"
command = F
time = 1

[Command]
name = "random"
command = DF
time = 1

[Command]
name = "random"
command = D
time = 1

[Command]
name = "random"
command = DB
time = 1

[Command]
name = "random"
command = B
time = 1

[Command]
name = "random"
command = UB
time = 1

[Command]
name = "random"
command = U
time = 1

[Command]
name = "random"
command = UF
time = 1

;-| Hold Button |-----------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]

;=====================================================================
; Super Arts
;=====================================================================
[State -1]
type = ChangeState
value = 3400
triggerall = !var(59)
triggerall = Power >= 3000
triggerall = command = "Sennoh"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact


[State -1]
type = ChangeState
value = 3320
triggerall = !var(59)
triggerall = Power >= 3000
triggerall = command = "kuzuryu_3"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact
[State -1]
type = ChangeState
value = 3310
triggerall = !var(59)
triggerall = Power >= 2000
triggerall = command = "kuzuryu_2"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact
[State -1]
type = ChangeState
value = 3300
triggerall = !var(59)
triggerall = Power >= 1000
triggerall = command = "kuzuryu_1"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact

;=====================================================================
; Special Arts 
;=====================================================================
[State -1]
type = ChangeState
value = 1400
triggerall = !var(59)
triggerall = command = "Dash_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact
[State -1]
type = ChangeState
value = 1410
triggerall = !var(59)
triggerall = command = "Dash_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact
[State -1]
type = ChangeState
value = 1420
triggerall = !var(59)
triggerall = command = "Dash_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact

[State -1]
type = ChangeState
value = 1300
triggerall = !var(59)
triggerall = command = "tsk_a"
triggerall = statetype = A
trigger1 = ctrl && vel Y < 0
trigger2 = ctrl && vel Y >= 0 && pos Y < -90
trigger3 = Stateno = 600 && Movecontact
trigger4 = Stateno = 610 && Movecontact
trigger5 = Stateno = 620 && Movecontact
trigger6 = Stateno = 630 && Movecontact
trigger7 = Stateno = 640 && Movecontact
trigger8 = Stateno = 650 && Movecontact
[State -1]
type = ChangeState
value = 1310
triggerall = !var(59)
triggerall = command = "tsk_b"
triggerall = statetype = A
trigger1 = ctrl && vel Y < 0
trigger2 = ctrl && vel Y >= 0 && pos Y < -90
trigger3 = Stateno = 600 && Movecontact
trigger4 = Stateno = 610 && Movecontact
trigger5 = Stateno = 620 && Movecontact
trigger6 = Stateno = 630 && Movecontact
trigger7 = Stateno = 640 && Movecontact
trigger8 = Stateno = 650 && Movecontact
[State -1]
type = ChangeState
value = 1320
triggerall = !var(59)
triggerall = command = "tsk_c"
triggerall = statetype = A
trigger1 = ctrl && vel Y < 0
trigger2 = ctrl && vel Y >= 0 && pos Y < -90
trigger3 = Stateno = 600 && Movecontact
trigger4 = Stateno = 610 && Movecontact
trigger5 = Stateno = 620 && Movecontact
trigger6 = Stateno = 630 && Movecontact
trigger7 = Stateno = 640 && Movecontact
trigger8 = Stateno = 650 && Movecontact

[State -1]
type = ChangeState
value = 1200
triggerall = !var(59)
triggerall = command = "tsk_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact
[State -1]
type = ChangeState
value = 1210
triggerall = !var(59)
triggerall = command = "tsk_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact
[State -1]
type = ChangeState
value = 1220
triggerall = !var(59)
triggerall = command = "tsk_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact

[State -1]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = command = "sh_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact
[State -1]
type = ChangeState
value = 1010
triggerall = !var(59)
triggerall = command = "sh_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact
[State -1]
type = ChangeState
value = 1030
triggerall = !var(59)
triggerall = command = "sh_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact

[State -1]
type = ChangeState
value = 1100
triggerall = !var(59)
triggerall = command = "ha_a" && NumProj = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact
[State -1]
type = ChangeState
value = 1110
triggerall = !var(59)
triggerall = command = "ha_b" && NumProj = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact
[State -1]
type = ChangeState
value = 1120
triggerall = !var(59)
triggerall = command = "ha_c" && NumProj = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 205 && Movecontact
trigger3 = Stateno = 215 && Movecontact
trigger4 = Stateno = 225 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 245 && Movecontact
trigger7 = Stateno = 255 && Movecontact
trigger8 = Stateno = 400 && Movecontact
trigger9 = Stateno = 410 && Movecontact
trigger10 = Stateno = 420 && Movecontact
trigger11 = Stateno = 430 && Movecontact
trigger12 = Stateno = 440 && Movecontact

;=====================================================================
; Zero Counter
;=====================================================================
[State -1]
type = ChangeState
value = 2600
triggerall = Command = "ZC"
triggerall = p2bodydist X = [-50,50]
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = StateNo = [150,153]  
ignorhitpause = 1

;=====================================================================
; Basic Animation
;=====================================================================
;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = Ctrl
trigger1 = StateNo != 100

;RunBack
[State -1]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = Ctrl

;=====================================================================
; Basic Throws
;=====================================================================
[State -1]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = StateNo != 100 && StateType = S && Ctrl
trigger1 = Command = "throw_p"

;---------------------------------------------------------------------
[State -1]
type = ChangeState
value = 850
triggerall = !var(59)
triggerall = StateNo != 100 && StateType = S && Ctrl
trigger1 = Command = "throw_k"

[State -1]
type = ChangeState
value = 900
triggerall = StateNo != 100 && StateType = A && Ctrl
trigger1 = Command = "AT"

;=====================================================================
;---------------------------------------------------------------------------
; Dir + Button
;---------------------------------------------------------------------------
; F+MP
[State -1]
type = ChangeState
value = 300
triggerall = !var(59)
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl 

; F+MK
[State -1]
type = ChangeState
value = 310
triggerall = !var(59)
triggerall = command = "c"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl 

;---------------------------------------------------------------------------
; Closed Attacks
;---------------------------------------------------------------------------
; WPC
[State -1]
type = ChangeState
value = 205
triggerall = !var(59)
triggerall = P2BodyDist X < 35
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 

; MPC
[State -1]
type = ChangeState
value = 215
triggerall = !var(59)
triggerall = P2BodyDist X < 35
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; SPC
[State -1]
type = ChangeState
value = 225
triggerall = !var(59)
triggerall = P2BodyDist X < 35
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; WKC
[State -1]
type = ChangeState
value = 235
triggerall = !var(59)
triggerall = P2BodyDist X < 35
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; MKC
[State -1]
type = ChangeState
value = 245
triggerall = !var(59)
triggerall = P2BodyDist X < 35
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; SKC
[State -1]
type = ChangeState
value = 255
triggerall = !var(59)
triggerall = P2BodyDist X < 35
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Normal Attacks
;---------------------------------------------------------------------------
; WP
[State -1]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 

; MP
[State -1]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; SP
[State -1]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
 
; WK
[State -1]
type = ChangeState
value = 230
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; MK
[State -1]
type = ChangeState
value = 240
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; SK
[State -1]
type = ChangeState
value = 250
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouch attack
;---------------------------------------------------------------------------
; WP
[State -1]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = Stateno = 200 && Movecontact
trigger3 = Stateno = 205 && Movecontact
trigger4 = Stateno = 230 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 400 && Movecontact
trigger7 = Stateno = 430 && Movecontact

; MP
[State -1]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 

; SP
[State -1]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; WK
[State -1]
type = ChangeState
value = 430
triggerall = !var(59)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 200 && Movecontact
trigger3 = Stateno = 205 && Movecontact
trigger4 = Stateno = 230 && Movecontact
trigger5 = Stateno = 235 && Movecontact
trigger6 = Stateno = 400 && Movecontact
trigger7 = Stateno = 430 && Movecontact

; MK
[State -1]
type = ChangeState
value = 440
triggerall = !var(59)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = Stateno = 400 && Movecontact
trigger3 = Stateno = 430 && Movecontact

; SK
[State -1]
type = ChangeState
value = 450
triggerall = !var(59)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = Stateno = 400 && Movecontact
trigger3 = Stateno = 430 && Movecontact
trigger4 = Stateno = 440 && Movecontact

;---------------------------------------------------------------------------
; Air Attacks
;---------------------------------------------------------------------------
; WP
[State -1]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl 

; MP
[State -1]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
 
; SP
[State -1]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
 
; WK
[State -1]
type = ChangeState
value = 630
triggerall = !var(59)
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl 

; MK
[State -1]
type = ChangeState
value = 640
triggerall = !var(59)
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
 
; SK
[State -1]
type = ChangeState
value = 650
triggerall = !var(59)
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl 

;---------------------------------------------------------------------------
; Burla
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = command = "s"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;                         A I   S E C T I O N .
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
[State -3]
type = Varset
triggerall = !var(59) ; Check the AI flag
trigger1 = alive
trigger1 = stateno < 5500
trigger1 = command = "AI_1" || command = "AI_2" || command = "AI_3" || command = "AI_4" || command = "AI_5"
trigger2 = command = "AI_6" || command = "AI_7" || command = "AI_8" || command = "AI_9" || command = "AI_10"
trigger3 = command = "AI_11" || command = "AI_12" || command = "AI_13" || command = "AI_14" || command = "AI_15"
trigger4 = command = "AI_16" || command = "AI_17" || command = "AI_18" || command = "AI_19" || command = "AI_20"
trigger5 = command = "AI_21" || command = "AI_22" || command = "AI_23" || command = "AI_24" || command = "AI_25"
trigger6 = command = "AI_26" || command = "AI_27" || command = "AI_28" || command = "AI_29" || command = "AI_30"
trigger7 = command = "AI_31" || command = "AI_32" || command = "AI_33" || command = "AI_34" || command = "AI_35"
trigger8 = command = "AI_36" || command = "AI_37" || command = "AI_38" || command = "AI_39" || command = "AI_40"
trigger9 = command = "AI_41" || command = "AI_42" || command = "AI_43" || command = "AI_44" || command = "AI_45"
trigger10 = command = "AI_46" || command = "AI_47" || command = "AI_48" || command = "AI_49" || command = "AI_50"
var(59) = 10

[State -3]
type = Varset
triggerall = !var(59) ; Check the AI flag
trigger1 = alive
trigger1 = stateno < 5500
trigger1 = command = "AI_1" || command = "AI_2" || command = "AI_3" || command = "AI_4" || command = "AI_5"
trigger2 = command = "AI_6" || command = "AI_7" || command = "AI_8" || command = "AI_9" || command = "AI_10"
trigger3 = command = "AI_11" || command = "AI_12" || command = "AI_13" || command = "AI_14" || command = "AI_15"
trigger4 = command = "AI_16" || command = "AI_17" || command = "AI_18" || command = "AI_19" || command = "AI_20"
trigger5 = command = "AI_21" || command = "AI_22" || command = "AI_23" || command = "AI_24" || command = "AI_25"
trigger6 = command = "AI_26" || command = "AI_27" || command = "AI_28" || command = "AI_29" || command = "AI_30"
trigger7 = command = "AI_31" || command = "AI_32" || command = "AI_33" || command = "AI_34" || command = "AI_35"
var(59) = 9

[State -3]
type = Varset
triggerall = !var(59) ; Check the AI flag
trigger1 = alive
trigger1 = stateno < 5500
trigger1 = command = "AI_1" || command = "AI_2" || command = "AI_3" || command = "AI_4" || command = "AI_5"
trigger2 = command = "AI_6" || command = "AI_7" || command = "AI_8" || command = "AI_9" || command = "AI_10"
trigger3 = command = "AI_11" || command = "AI_12" || command = "AI_13" || command = "AI_14" || command = "AI_15"
trigger4 = command = "AI_16" || command = "AI_17" || command = "AI_18" || command = "AI_19" || command = "AI_20"
trigger5 = command = "AI_21" || command = "AI_22" || command = "AI_23" || command = "AI_24" || command = "AI_25"
var(59) = 8

[State -3]
type = Varset
triggerall = !var(59) ; Check the AI flag
trigger1 = alive
trigger1 = stateno < 5500
trigger1 = command = "AI_1" || command = "AI_2" || command = "AI_3"
trigger2 = command = "AI_6" || command = "AI_7" || command = "AI_8"
trigger3 = command = "AI_11" || command = "AI_12" || command = "AI_13"
trigger4 = command = "AI_16" || command = "AI_17" || command = "AI_18"
var(59) = 6

[State -3]
type = Varset
triggerall = !var(59) ; Check the AI flag
trigger1 = alive
trigger1 = stateno < 5500
trigger1 = command = "AI_1" || command = "AI_2"
trigger2 = command = "AI_6" || command = "AI_7"
trigger3 = command = "AI_11" || command = "AI_12"
var(59) = 5

[State -3]
type = Varset
triggerall = !var(59) ; Check the AI flag
trigger1 = alive
trigger1 = stateno < 5500
trigger1 = command = "AI_1" || command = "AI_2"
trigger2 = command = "AI_6" || command = "AI_7"
var(59) = 4

[State -3]
type = Varset
triggerall = !var(59) ; Check the AI flag
trigger1 = alive
trigger1 = stateno < 5500
trigger1 = command = "AI_1"
trigger2 = command = "AI_6"
var(59) = 3

[State -3]
type = Varset
triggerall = !var(59) ; Check the AI flag
trigger1 = alive
trigger1 = stateno < 5500
trigger1 = command = "AI_1"
var(59) = 2

[State OFF]
type = VarSet
triggerall = ishometeam && teamside != 1 
trigger1 = roundstate>2
trigger2 = !alive
trigger3 = stateno = 5500
trigger4 = AILevel = 1
;trigger5 = teammode = simul
v = 59
value = 0
ignorehitpause = 1
persistent = 1

[State OFF]
type = VarSet
triggerall = ishometeam && teamside != 1 
triggerall = gamemode = "survival"
trigger1 = AILevel = 2 || AILevel = 3 || AILevel = 4
v = 59
value = 2

[State OFF]
type = VarSet
triggerall = ishometeam && teamside != 1 
triggerall = teammode = single
triggerall = gamemode != "survival"
trigger1 = matchno = [1,4] && (AILevel = 5 || AILevel = 6 || AILevel = 7)
trigger2 = matchno = 10 && (AILevel = 2 || AILevel = 3)
v = 59
value = 3

[State OFF]
type = VarSet
triggerall = ishometeam && teamside != 1 
triggerall = gamemode = "survival"
trigger1 = AILevel = 5 || AILevel = 6
v = 59
value = 4

[State OFF]
type = VarSet
triggerall = ishometeam && teamside != 1 
triggerall = gamemode = "survival"
trigger1 = AILevel = 7 || AILevel = 8
v = 59
value = 5

[State OFF]
type = VarSet
triggerall = ishometeam && teamside != 1 
triggerall = teammode = single
triggerall = gamemode != "survival"
trigger1 = (matchno = [5,9] && (AILevel = 5 || AILevel = 6 || AILevel = 7)) || (matchno = 10 && (AILevel = 1 || AILevel = 2 || AILevel = 3))
v = 59
value = 6

[State OFF]
type = VarSet
triggerall = ishometeam && teamside != 1 
triggerall = teammode = single
triggerall = gamemode != "survival"
trigger1 = matchno = 10 && (AILevel = 5 || AILevel = 6 || AILevel = 7)
v = 59
value = 8

[State OFF]
type = VarSet
triggerall = ishometeam && teamside != 1 
triggerall = teammode = single
triggerall = gamemode != "survival"
trigger1 = matchno < 10 && AILevel = 8
v = 59
value = 9

[State OFF]
type = VarSet
triggerall = ishometeam && teamside != 1 
triggerall = teammode = single
triggerall = gamemode != "survival"
trigger1 = matchno = 10 && AILevel = 8
v = 59
value = 10

; ---------------------------------------------------------------------------------

;Counter
[State -1, blocking Flag]
Type = VarSet
triggerall = fvar(27) = 0
triggerall = roundstate = 2
trigger1 = (stateno = [4000,4199])
fvar(27) = 1
IgnoreHitPause = 1

;Counter
[State -1, blocking Flag Re]
Type = VarSet
triggerall= fvar(27) != 0
trigger1 = Enemynear,ctrl || Enemynear,movetype = H || movetype = A
trigger2 = Enemynear,life <= 0 || p2bodydist X > 90 || stateno = 800
fvar(27) = 0
IgnoreHitPause = 1


[State -1, Nomal Jump]
Type = ChangeState
value = 42
triggerall = Var(59)
triggerall = roundstate = 2
triggerall = StateType != A
triggerall = ctrl || stateno = 16 || stateno = 21 || stateno = 22 || (stateno = 100 && animelemtime(2) >1) || stateno = 101
triggerall = !inguarddist
trigger1 = EnemyNear,movetype != H || EnemyNear,stateno = [120,159]
trigger1 = P2BodyDist X = [85,100]
trigger1 = random <= 20

;recover
[State -1,rev]
type = ChangeState
value = 5210
triggerall = Var(59)
triggerall = !var(16)
triggerall = roundstate = 2
triggerall = Alive
triggerall = CanRecover
triggerall = Vel Y > -1
triggerall = Pos Y >= -40
triggerall = StateNo = 5050
trigger1 = random = [150,200]

; kuzuryu reppa
[State -1]
type = ChangeState
value = 3320
triggerall = random < var(59)*100 && roundstate = 2
triggerall = Power >= 3000
triggerall = NumProj = 0
triggerall = statetype != A
trigger1 = StateNo = 440 && MoveContact
trigger1 = movehit
trigger1 = p2statetype != A
trigger1 = p2bodydist X < 60
[State -1]
type = ChangeState
value = 3310
triggerall = random < var(59)*100 && roundstate = 2
triggerall = Power >= 2000
triggerall = NumProj = 0
triggerall = statetype != A
trigger1 = StateNo = 440 && MoveContact
trigger1 = movehit
trigger1 = p2statetype != A
trigger1 = p2bodydist X < 70
[State -1]
type = ChangeState
value = 3300
triggerall = random < var(59)*100 && roundstate = 2
triggerall = Power >= 1000
triggerall = NumProj = 0
triggerall = statetype != A
trigger1 = StateNo = 440 && MoveContact
trigger1 = movehit
trigger1 = p2statetype != A

[State -1]; SP Shoryuken
type = ChangeState
value = 1030
triggerall = random < var(59)*100 && roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2movetype = A
trigger1 = p2bodydist X = [-5,50]
trigger1 = prevstateno = 5120 || p2stateno >= 2000
trigger2 = StateNo = 225 && MoveContact || StateNo = 420 && MoveContact
trigger2 = movehit
trigger2 = p2statetype = A

[State -1]; Chain
type = ChangeState
value = 205
triggerall = random < var(59)*100 && AILevel > 3 && roundstate = 2 && teammode = single
triggerall = P2BodyDist X <= 40
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2statetype = A
trigger1 = p2movetype != H
[State -1, WP AI]; Chain
type = ChangeState
value = 430
triggerall = var(59) && AILevel > 3 && roundstate = 2 && teammode = single
triggerall = p2statetype != A
triggerall = movecontact
triggerall = random <= 999
trigger1 = stateno = 205
[State -1, MP AI]; Chain
type = ChangeState
value = 440
triggerall = var(59) && AILevel > 3 && roundstate  = 2 && teammode = single
triggerall = p2statetype != A
triggerall = movecontact
triggerall = random <= 999
trigger1 = stateno = 430
[State -1, SP AI]; Chain
type = ChangeState
value = 1220
triggerall = var(59) && AILevel > 3 && roundstate = 2 && teammode = single
triggerall = p2statetype != A
triggerall = movecontact
triggerall = random <= 999
triggerall = Power <= 999
trigger1 = stateno = 440

[State -3]; Salto
type = ChangeState
value = 40
triggerall = var(59)
triggerall = statetype != A && ctrl
trigger1 = p2movetype = A
trigger1 = p2bodydist X > 100
trigger1 = random < var(59)*2
trigger2 = p2bodydist X = [-5,20]
trigger2 = p2stateno = 5120

[State -3]; Defensa
type = ChangeState
value = 130
triggerall = var(59)
triggerall = p2statetype != C
triggerall = inguarddist
trigger1 = statetype != A && ctrl
[State -3]
type = ChangeState
value = 131
triggerall = var(59)
triggerall = p2statetype = C
triggerall = inguarddist
trigger1 = statetype != A && ctrl
[State -3]
type = ChangeState
value = 132
triggerall = var(59)
triggerall = inguarddist
trigger1 = statetype = A && ctrl

[State -1]
type = ChangeState
value = 1000
triggerall = random < var(59)*100 && roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X = [0,50]
trigger1 = p2bodydist Y < -80
[State -1]
type = ChangeState
value = 1120
triggerall = random < var(59)*100 && roundstate = 2
triggerall = NumProj = 0
triggerall = statetype != A
trigger1 = StateNo = 225 && MoveContact || StateNo = 420 && MoveContact
trigger1 = movehit
trigger1 = p2statetype = C

[State -1]
type = ChangeState
value = 1120
triggerall = gamemode != "watch" && Numpartner < 1 && (p2name != "Rose" || (p2name = "Rose" && p2, Numproj = 1))
triggerall = random < var(59)*100 && roundstate = 2
triggerall = statetype != A
triggerall = NumProj = 0
trigger1 = ctrl
trigger1 = p2statetype != A
trigger1 = p2bodydist X > 100
trigger1 = p2stateno = 5120 || random < var(59)
[State -1];??
type = ChangeState
value = 1110
triggerall = gamemode != "watch" && Numpartner < 1 && (p2name != "Rose" || (p2name = "Rose" && p2, Numproj = 1))
triggerall = random < var(59)*100 && roundstate = 2
triggerall = statetype != A
triggerall = NumProj = 0
trigger1 = ctrl
trigger1 = p2statetype != A
trigger1 = p2bodydist X > 100
trigger1 = p2stateno = 5110 || random < var(59)*2
[State -1];??
type = ChangeState
value = 1100
triggerall = gamemode != "watch" && Numpartner < 1 && (p2name != "Rose" || (p2name = "Rose" && p2, Numproj = 1))
triggerall = random < var(59)*100 && roundstate = 2
triggerall = statetype != A
triggerall = NumProj = 0
trigger1 = ctrl
trigger1 = p2statetype != A
trigger1 = p2bodydist X > 100
trigger1 = p2stateno = 5101 || random < var(59)*3
trigger2 = StateNo = 440 && MoveContact
trigger2 = movecontact

; S Tatsumaki
[State -1]
type = ChangeState
value = 1220
triggerall = random < var(59)*10 && roundstate = 2
triggerall = statetype != A
trigger1 = StateNo = 225 && MoveContact || StateNo = 420 && MoveContact
trigger1 = movehit
trigger1 = p2statetype = S

[State -1]
type = ChangeState
value = 195
triggerall = random < var(59)*10 && roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X > 280
trigger1 = p2movetype != A
trigger1 = random = [0,10]

[State -1]
type = ChangeState
value = 800
triggerall = random < var(59)*10 && roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2statetype != A && p2statetype != L
trigger1 = p2movetype = I
trigger1 = p2bodydist X = [-5,30]
trigger1 = random < var(59)*5
[State -1]
type = ChangeState
value = 850
triggerall = random < var(59)*100 && roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2statetype != A && p2statetype != L
trigger1 = p2movetype = I
trigger1 = p2bodydist X = [-5,30]
trigger1 = random < var(59)*10

[State -1]
type = ChangeState
value = 310
triggerall = random < var(59)*100 && AILevel > 3 && roundstate = 2 && teammode = single
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X = [50,120]
trigger1 = p2stateno = [152,153]

[State -1]
type = ChangeState
value = 225
triggerall = random < var(59)*100 && roundstate = 2
triggerall = P2BodyDist X <= 25
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2statetype = A
trigger1 = p2movetype = H
trigger1 = p2bodydist Y < -30
[State -1]
type = ChangeState
value = 420
triggerall = random < var(59)*100 && roundstate = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2statetype = A
trigger1 = p2movetype = H
trigger1 = p2bodydist X = [26,30]
trigger1 = p2bodydist Y < -30
[State -1]
type = ChangeState
value = 205
triggerall = random < var(59)*100 && roundstate = 2
triggerall = P2BodyDist X <= 25
trigger1 = statetype != A
trigger1 = ctrl 
trigger1 = p2statetype = A
trigger1 = p2movetype = H
trigger1 = p2bodydist Y = [-70,20]
[State -1]
type = ChangeState
value = 200
triggerall = random < var(59)*100 && roundstate = 2
trigger1 = statetype != A
trigger1 = ctrl 
trigger1 = p2statetype = A
trigger1 = p2bodydist X = [26,60]
trigger1 = p2bodydist Y = [-70,20]
[State -1]
type = ChangeState
value = 430
triggerall = random < var(59)*100 && AILevel > 3 && roundstate = 2 && teammode = single
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2statetype != A && p2statetype != L
trigger1 = p2bodydist X = [-5,30]
trigger1 = p2movetype != H || p2bodydist X < 30
trigger1 = p2stateno != [150,153]
[State -1]
type = ChangeState
value = 440
triggerall = random < var(59)*100 && AILevel > 3 && roundstate = 2 && teammode = single
trigger1 = statetype != A
trigger1 = ctrl 
trigger1 = p2statetype != A && p2statetype != L
trigger1 = p2bodydist X = [-5,50]
trigger1 = p2stateno != [152,153]
[State -1]
type = ChangeState
value = 600
triggerall = random < var(59)*100 && roundstate = 2
triggerall = statetype = A
trigger1 = ctrl 
trigger1 = Vel X != 0
trigger1 = p2statetype = A
trigger1 = p2bodydist X = [-5,50]
trigger1 = p2bodydist Y = [-70,60]
[State -1]
type = ChangeState
value = 620
triggerall = random < var(59)*100 && roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X = [-5,50]
trigger1 = p2bodydist Y = [0,70]
trigger1 = p2statetype = A
[State -1]
type = ChangeState
value = 630
triggerall = random < var(59)*100 && roundstate = 2
triggerall = statetype = A
trigger1 = ctrl 
trigger1 = p2bodydist X = [-5,20]
trigger1 = p2bodydist Y = [-60,100]
trigger1 = p2statetype = A
[State -1]
type = ChangeState
value = 640
triggerall = random < var(59)*100 && roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2statetype = A
trigger1 = p2bodydist X = [-5,30]
trigger1 = p2bodydist Y = [-90,0]
[State -1]
type = ChangeState
value = 650
triggerall = random < var(59)*100 && roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X = [-5,80]
trigger1 = p2bodydist Y = [0,110]
trigger1 = p2statetype = A