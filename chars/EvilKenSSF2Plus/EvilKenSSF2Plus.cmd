
;====================================================================================================================
;-| Super Moves |----------------------------------------------------------

[Command]
name = "QCB2_x"
command = ~D, DB, B,D, DB, B, x
time = 30

[Command]
name = "QCB2_y"
command = ~D, DB, B,D, DB, B, y
time = 30

[Command]
name = "QCB2_z"
command = ~D, DB, B,D, DB, B, z
time = 30

[Command]
name = "QCB2_a"
command = ~D, DB, B,D, DB, B, a
time = 30

[Command]
name = "QCB2_b"
command = ~D, DB, B,D, DB, B, b
time = 30

[Command]
name = "QCB2_c"
command = ~D, DB, B,D, DB, B, c
time = 30

[Command]
name = "QCF2_x"
command = ~D, DF, F,D, DF, F, x
time = 30

[Command]
name = "QCF2_y"
command = ~D, DF, F,D, DF, F, y
time = 30

[Command]
name = "QCF2_z"
command = ~D, DF, F,D, DF, F, z
time = 30

[Command]
name = "QCF2_a"
command = ~D, DF, F,D, DF, F, a
time = 30

[Command]
name = "QCF2_b"
command = ~D, DF, F,D, DF, F, b
time = 30

[Command]
name = "QCF2_c"
command = ~D, DF, F,D, DF, F, c
time = 30


[Command]
name = "shun"
command = ~x, x, F, a, z
time = 30

[Command]
name = "SRKyaku"
command = ~D, D, D, D, c
time = 30

;-| Ex Moves |-------------------------------------------------------------

[Command]
name = "Shoryu Ex"
command = ~F, D, DF, x+y
time = 20

[Command]
name = "Shoryu Ex"
command = ~F, D, DF, x+z
time = 20

[Command]
name = "Shoryu Ex"
command = ~F, D, DF, y+z
time = 20

[Command]
name = "Tatsumaki Ex"
command = ~D, DB, B, a+b
time = 20

[Command]
name = "Tatsumaki Ex"
command = ~D, DB, B, a+c
time = 20

[Command]
name = "Tatsumaki Ex"
command = ~D, DB, B, b+c
time = 20

[Command]
name = "Hadou Ex"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "Hadou Ex"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "Hadou Ex"
command = ~D, DF, F, y+z
time =20

;-| Special Moves |--------------------------------------------------------

[Command]
name = "Ashura"
command = ~F, D, DF, x+y+z
time = 20


[Command]
name = "Back Ashura"
command = ~B, D, DB, x+y+z
time = 20

[Command]
name = "Rasetsu Kyaku1"
command = ~F, D, DF, a
time = 20

[Command]
name = "Rasetsu Kyaku2"
command = ~F, D, DF, b
time = 20

[Command]
name = "Rasetsu Kyaku3"
command = ~F, D, DF, c
time = 20

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 20

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 20

[Command]
name = "QCF_z"
command = ~D, DF, F, z
time =20

[Command]
name = "QCB_x"
command =  D, DB, B, x
time = 20

[Command]
name = "QCB_y"
command = D, DB, B, y
time = 20

[Command]
name = "QCB_z"
command = D, DB, B, z
time = 20

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 25

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 25

[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 25

[Command]
name = "DP_x"
command = ~F, D, DF, x
time = 20

[Command]
name = "DP_y"
command = ~F, D, DF, y
time = 20

[Command]
name = "DP_z"
command = ~F, D, DF, z
time = 20

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 20

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 20

[Command]
name = "QCB_c"
command = ~D, DB, B, c
time = 20

[Command]
name = "ZC_p"
command = ~B, D, x
time = 20

[Command]
name = "ZC_p"
command = ~B, D, y
time = 20

[Command]
name = "ZC_p"
command = ~B, D, z
time = 20

[Command]
name = "ZC_k"
command = ~B, D, a
time = 20

[Command]
name = "ZC_k"
command = ~B, D, b
time = 20

[Command]
name = "ZC_k"
command = ~B, D, c
time = 20

[Command]
name = "Power Charge"
command = z+c
time = 1


;-| Throws |-----------------------------------------------------------

[Command]
name = "fwdthrow_y"
command = /$F, y
time = 2

[Command]
name = "fwdthrow_z"
command = /$F, z
time = 2

[Command]
name = "fwdthrow_b"
command = /$F, b
time = 2

[Command]
name = "fwdthrow_c"
command = /$F, c
time = 2

[Command]
name = "backthrow_y"
command = /$B, y
time = 2

[Command]
name = "backthrow_z"
command = /$B, z
time = 2

[Command]
name = "backthrow_b"
command = /$B, b
time = 2

[Command]
name = "backthrow_c"
command = /$B, c
time = 2


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holda";Required (do not remove)
command = /$a
time = 1

[Command]
name = "holdb";Required (do not remove)
command = /$b
time = 1

[Command]
name = "holdc";Required (do not remove)
command = /$c
time = 1

[Command]
name = "holdx";Required (do not remove)
command = /$x
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /$y
time = 1

[Command]
name = "holdz";Required (do not remove)
command = /$z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1


;-| Directionals |-----------------------------

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
;***************************************************************************
; CMD
;***************************************************************************

;[Remap]
;
;  Note that if you modify the button remapping scheme, this character will
; still be able to correctly detect the basic commands of other characters
; complying with the basic command order specified below, as long as their
; buttons haven't been remapped.  But no character (not even one with the same
; remapping scheme, not even another instance of this character) will be able to
; correctly detect this character's commands.  This shouldn't ever result in any
; false positives, but it could delay correct positives, and could erroneously
; make the helper AI activation method trigger a false negative in team simul
; modes, in which case the XOR-ed commands method would be needed to provide
; backup.  But of course, this isn't an issue in any version of Mugen prior to
; version 2002.04.14.


; These 11 Single Button and Hold Dir commands must be placed here at the top
; of the CMD, above all other commands, and in the standard order shown here,
; in order for the "Compatibly Partnered" version (9742) of the helper AI
; activation method to work with different partners in simul team mode.
; (When the partner is not compatible, then it's best to just use the regular
; version (9741) and rely on the XOR method for backup in case a human
; partner's input turns off the CPU partner's AI.)
;   (Now, even if you do not intend to give your character any custom AI, it
; would still be nice if you would place the commands at the top of your CMD,
; for the sake of other characters which do use this AI activation method.
; And then, define Anim 9741 in your AIR file to indicate to other characters
; that your character is compatible.
;   It may slightly increase the chances of faulty AI activation if the user
; is using characters with a poor implementation of the old humanly-impossible
; commands AI activation method when fighting against your character, but
; other than that, there's really no particular reason not to.  And you can
; change the names of the commands if you want.  For compatibility, all that
; really matters is the "command" and "time" parameters.)
;
; Please don't add any extra definitions for any of these 11 basic command
; names, nor for any of the 7 "hold[button]" command names that follow.
; For example, things like this should be avoided:
;	[Command]
;	name = "z"
;	command = y+b
;	time = 1
; There are several workarounds possible to achieve the same effect.  Please
; feel free to ask me about it if you have any uncertainty.
; Violating this rule would cause the KeyCtrl Helper method and/or the XORed
; Commands method to malfunction, and could also interfere with other future
; applications of this command order standard.
;
;-| Single Button |---------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

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

;--- None of your own command definitions should be above this line. ---

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

; Here add matching commands for any moves that must never be used randomly
; by the computer, such as suicide moves and super moves, and add the pairs
; to the XOR VarSet controller in State -3.

; If you're desperate to make sure that the AI always gets turned on as soon
; as possible, you can add more equivalents for your own commands here too,
; and add to the XOR VarSet controller's triggers accordingly.

; And of course, if you've run out of unique command labels (Mugen allows
; 128), you can remove as many of these as you want.  You'll of course need
; to modify the XOR VarSet controller's triggers accordingly, but Mugen
; will let you know if you forget to do so. :)

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;=====================================================================;


;==============================================================================================================
;---------------------------------------------------------------------------
;-| Super Moves |------------------------------------------------------
[Statedef -1]

; Shun Goku Satsu
[State -1, Throw]
type = ChangeState
value = 4003	;SENTI: grab beat
triggerall = var(59) < 1
triggerall = command = "shun"
triggerall = power >= 2000
trigger1 = statetype = S
;triggerall = ctrl
;trigger1 = command = "holdfwd"
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
trigger23 = Stateno = 850
trigger24 = Stateno = 851
trigger25 = Stateno = 852
trigger26 = Stateno = 1101 && movecontact
trigger27 = Stateno = 1109 && movecontact
trigger28 = Stateno = 1118 && movecontact
trigger29 = Stateno = 1119 && movecontact

;Shoryu Reppa (hard)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCF2_z"
triggerall = power >= 3000 && life <= 500
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
trigger23 = Stateno = 850
trigger24 = Stateno = 851
trigger25 = Stateno = 852
trigger26 = Stateno = 1101 && movecontact
trigger27 = Stateno = 1109 && movecontact
trigger28 = Stateno = 1118 && movecontact
trigger29 = Stateno = 1119 && movecontact
value = 2002	;SENTI: cycle punch

;Shoryu Reppa (medium)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCF2_y" ||command = "QCF2_z"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
trigger23 = Stateno = 850
trigger24 = Stateno = 851
trigger25 = Stateno = 852
trigger26 = Stateno = 1101 && movecontact
trigger27 = Stateno = 1109 && movecontact
trigger28 = Stateno = 1118 && movecontact
trigger29 = Stateno = 1119 && movecontact
value = 2001	;SENTI: cycle punch

;Shoryu Reppa (light)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCF2_x"||command = "QCF2_y" ||command = "QCF2_z"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
trigger23 = Stateno = 850
trigger24 = Stateno = 851
trigger25 = Stateno = 852
trigger26 = Stateno = 1101 && movecontact
trigger27 = Stateno = 1109 && movecontact
trigger28 = Stateno = 1118 && movecontact
trigger29 = Stateno = 1119 && movecontact
value = 2000	;SENTI: cycle punch

;Shinryu Ken (hard)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCF2_c"
triggerall = power >= 3000 && life <= 500
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
trigger23 = Stateno = 850
trigger24 = Stateno = 851
trigger25 = Stateno = 852
trigger26 = Stateno = 1101 && movecontact
trigger27 = Stateno = 1109 && movecontact
trigger28 = Stateno = 1118 && movecontact
trigger29 = Stateno = 1119 && movecontact
value = 4002	;SENTI: vertical punch

;Shinryu Ken (medium)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCF2_b" ||command = "QCF2_c"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
trigger23 = Stateno = 850
trigger24 = Stateno = 851
trigger25 = Stateno = 852
trigger26 = Stateno = 1101 && movecontact
trigger27 = Stateno = 1109 && movecontact
trigger28 = Stateno = 1118 && movecontact
trigger29 = Stateno = 1119 && movecontact
value = 4001	;SENTI: vertical punch

;Shinryu Ken (light)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCF2_a"||command = "QCF2_b" ||command = "QCF2_c"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
trigger23 = Stateno = 850
trigger24 = Stateno = 851
trigger25 = Stateno = 852
trigger26 = Stateno = 1101 && movecontact
trigger27 = Stateno = 1109 && movecontact
trigger28 = Stateno = 1118 && movecontact
trigger29 = Stateno = 1119 && movecontact
value = 4000	;SENTI: vertical punch

;Kuzuryu Reppa
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCB2_c"
triggerall = power >= 3000 && life <= 500
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
trigger23 = Stateno = 850
trigger24 = Stateno = 851
trigger25 = Stateno = 852
trigger26 = Stateno = 1101 && movecontact
trigger27 = Stateno = 1109 && movecontact
trigger28 = Stateno = 1118 && movecontact
trigger29 = Stateno = 1119 && movecontact
value = 6020	;SENTI: kick and autocombo

;Shippu Jinrai Kyaku (medium)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCB2_b" ||command = "QCB2_c"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
trigger23 = Stateno = 850
trigger24 = Stateno = 851
trigger25 = Stateno = 852
trigger26 = Stateno = 1101 && movecontact
trigger27 = Stateno = 1109 && movecontact
trigger28 = Stateno = 1118 && movecontact
trigger29 = Stateno = 1119 && movecontact
value = 6010	;SENTI: kick and autocombo

;Shippu Jinrai Kyaku (light)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCB2_a"||command = "QCB2_b" ||command = "QCB2_c"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
trigger23 = Stateno = 850
trigger24 = Stateno = 851
trigger25 = Stateno = 852
trigger26 = Stateno = 1101 && movecontact
trigger27 = Stateno = 1109 && movecontact
trigger28 = Stateno = 1118 && movecontact
trigger29 = Stateno = 1119 && movecontact
value = 6000	;SENTI: kick and autocombo

; Super Rasetsu Kyaku
[State -1]
type = ChangeState
value = 4320	;SENTI: dash flaming
triggerall = var(59) < 1
triggerall = power >= 3000 && life <= 500
triggerall = command = "SRKyaku"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
trigger23 = Stateno = 850
trigger24 = Stateno = 851
trigger25 = Stateno = 852
trigger26 = Stateno = 1101 && movecontact
trigger27 = Stateno = 1109 && movecontact
trigger28 = Stateno = 1118 && movecontact
trigger29 = Stateno = 1119 && movecontact

;Air Shinkuu Hadou Ken (Hard)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCF2_z"
triggerall = !NumProjID(960) && !NumProjID(961) && !NumProjID(962) && !NumProjID(950) && !NumProjID(951) && !NumProjID(952)
triggerall = !NumProjID(850) && !NumProjID(851) && !NumProjID(852) && !NumProjID(860) && !NumProjID(861) && !NumProjID(862)
triggerall = Pos Y <= -10
triggerall = power >= 3000 && life <= 500
trigger1 = StateType = A && ctrl
value = 1005	;SENTI: air blast and beam
trigger2 = Stateno = 600 && movecontact
trigger3 = Stateno = 601 && movecontact
trigger4 = Stateno = 605 && movecontact
trigger5 = Stateno = 606 && movecontact
trigger6 = Stateno = 610 && movecontact
trigger7 = Stateno = 611 && movecontact
trigger8 = Stateno = 620 && movecontact
trigger9 = Stateno = 622 && movecontact
trigger10 = Stateno = 625 && movecontact
trigger11 = Stateno = 650 && movecontact
trigger12 = Stateno = 660 && movecontact
trigger13 = Stateno = 665 && movecontact
trigger14 = Stateno = 666 && movecontact
trigger15 = Stateno = 860
trigger16 = Stateno = 861
trigger17 = Stateno = 862
trigger18 = Stateno = 1102 && movecontact
trigger19 = Stateno = 1110 && movecontact
trigger20 = Stateno = 1120 && movecontact
trigger21 = Stateno = 2090 && movecontact
trigger22 = Stateno = 2100 && movecontact
trigger23 = Stateno = 2200 && movecontact
trigger24 = Stateno = 3000 && movecontact
trigger25 = Stateno = 3100 && movecontact
trigger26 = Stateno = 3200 && movecontact

;Air Shinkuu Hadou Ken (Medium)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCF2_y"||command = "QCF2_z"
triggerall = !NumProjID(960) && !NumProjID(961) && !NumProjID(962) && !NumProjID(950) && !NumProjID(951) && !NumProjID(952)
triggerall = !NumProjID(850) && !NumProjID(851) && !NumProjID(852) && !NumProjID(860) && !NumProjID(861) && !NumProjID(862)
triggerall = Pos Y <= -10
triggerall = power >= 2000
trigger1 = StateType = A && ctrl
value = 1004	;SENTI: air blast
trigger2 = Stateno = 600 && movecontact
trigger3 = Stateno = 601 && movecontact
trigger4 = Stateno = 605 && movecontact
trigger5 = Stateno = 606 && movecontact
trigger6 = Stateno = 610 && movecontact
trigger7 = Stateno = 611 && movecontact
trigger8 = Stateno = 620 && movecontact
trigger9 = Stateno = 622 && movecontact
trigger10 = Stateno = 625 && movecontact
trigger11 = Stateno = 650 && movecontact
trigger12 = Stateno = 660 && movecontact
trigger13 = Stateno = 665 && movecontact
trigger14 = Stateno = 666 && movecontact
trigger15 = Stateno = 860
trigger16 = Stateno = 861
trigger17 = Stateno = 862
trigger18 = Stateno = 1102 && movecontact
trigger19 = Stateno = 1110 && movecontact
trigger20 = Stateno = 1120 && movecontact
trigger21 = Stateno = 2090 && movecontact
trigger22 = Stateno = 2100 && movecontact
trigger23 = Stateno = 2200 && movecontact
trigger24 = Stateno = 3000 && movecontact
trigger25 = Stateno = 3100 && movecontact
trigger26 = Stateno = 3200 && movecontact


;Air Shinkuu Hadou Ken (Light)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCF2_x" ||command = "QCF2_y"||command = "QCF2_z"
triggerall = !NumProjID(960) && !NumProjID(961) && !NumProjID(962) && !NumProjID(950) && !NumProjID(951) && !NumProjID(952)
triggerall = !NumProjID(850) && !NumProjID(851) && !NumProjID(852) && !NumProjID(860) && !NumProjID(861) && !NumProjID(862)
triggerall = Pos Y <= -10
triggerall = power >= 1000
trigger1 = StateType = A && ctrl
value = 1003	;SENTI: air big projectile
trigger2 = Stateno = 600 && movecontact
trigger3 = Stateno = 601 && movecontact
trigger4 = Stateno = 605 && movecontact
trigger5 = Stateno = 606 && movecontact
trigger6 = Stateno = 610 && movecontact
trigger7 = Stateno = 611 && movecontact
trigger8 = Stateno = 620 && movecontact
trigger9 = Stateno = 622 && movecontact
trigger10 = Stateno = 625 && movecontact
trigger11 = Stateno = 650 && movecontact
trigger12 = Stateno = 660 && movecontact
trigger13 = Stateno = 665 && movecontact
trigger14 = Stateno = 666 && movecontact
trigger15 = Stateno = 860
trigger16 = Stateno = 861
trigger17 = Stateno = 862
trigger18 = Stateno = 1102 && movecontact
trigger19 = Stateno = 1110 && movecontact
trigger20 = Stateno = 1120 && movecontact
trigger21 = Stateno = 2090 && movecontact
trigger22 = Stateno = 2100 && movecontact
trigger23 = Stateno = 2200 && movecontact
trigger24 = Stateno = 3000 && movecontact
trigger25 = Stateno = 3100 && movecontact
trigger26 = Stateno = 3200 && movecontact

;Shinkuu Hadou Ken (hard)
[State -1,]
type = ChangeState
value = 1002	;SENTI:	energy beam
triggerall = var(59) < 1
triggerall = Command = "QCB2_z" && Numproj = 0 && var(16) != 1
triggerall = power >= 3000 && life <= 500
trigger1 = StateType != A
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
trigger23 = Stateno = 850
trigger24 = Stateno = 851
trigger25 = Stateno = 852
trigger26 = Stateno = 1101 && movecontact
trigger27 = Stateno = 1109 && movecontact
trigger28 = Stateno = 1118 && movecontact
trigger29 = Stateno = 1119 && movecontact

;Shinkuu Hadou Ken (Medium)
[State -1,]
type = ChangeState
value = 1001	;SENTI: energy blast
triggerall = var(59) < 1
triggerall = Command = "QCB2_y"||Command = "QCB2_z" && Numproj = 0 && var(16) != 1
triggerall = power >= 2000
trigger1 = StateType != A
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
trigger23 = Stateno = 850
trigger24 = Stateno = 851
trigger25 = Stateno = 852
trigger26 = Stateno = 1101 && movecontact
trigger27 = Stateno = 1109 && movecontact
trigger28 = Stateno = 1118 && movecontact
trigger29 = Stateno = 1119 && movecontact

;Shinkuu Hadou Ken (light)
[State -1,]
type = ChangeState
value = 1000	;SENTI: big projectile
triggerall = var(59) < 1
triggerall = Command = "QCB2_x"||Command = "QCB2_y"||Command = "QCB2_z" && Numproj = 0 && var(16) != 1
triggerall = power >= 1000
trigger1 = StateType != A
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
trigger23 = Stateno = 850
trigger24 = Stateno = 851
trigger25 = Stateno = 852
trigger26 = Stateno = 1101 && movecontact
trigger27 = Stateno = 1109 && movecontact
trigger28 = Stateno = 1118 && movecontact
trigger29 = Stateno = 1119 && movecontact

;Ashura Senkuu
[State -1]
type=changestate
value=1500	;SENTI: teleport forward
triggerall = var(59) < 1
triggerall=var(59)<=0&&roundstate=2&&(command="Ashura")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=stateno=195&&animelemtime(6)>=0&&animelemtime(20)<0
trigger4=stateno=1020&&animelemtime(3)>=0&&animelemtime(9)<0
trigger5=stateno=1500&&anim=1500&&animelemtime(3)>=0&&animelemtime(4)<0

;Back Ashura Senkuu
[State -1]
type=changestate
value=1502	;SENTI: teleport back
triggerall = var(59) < 1
triggerall=var(59)<=0&&roundstate=2&&(command="Back Ashura")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=stateno=195&&animelemtime(6)>=0&&animelemtime(20)<0
trigger4=stateno=1020&&animelemtime(3)>=0&&animelemtime(9)<0
trigger5=stateno=1500&&anim=1500&&animelemtime(3)>=0&&animelemtime(4)<0

;-| Ex Moves |-------------------------------------------------------------
;Air Tatsumaki sempuu kyaku (Ex)
[State -1]
type = ChangeState
value = 1240	;SENTI: air whirling kick
triggerall = var(59) < 1
triggerall = command = "Tatsumaki Ex" && StateType = A
triggerall = Pos Y <= -5
triggerall = power >= 500
trigger1 = Ctrl = 1
trigger2 = Stateno = 600 && movecontact
trigger3 = Stateno = 601 && movecontact
trigger4 = Stateno = 605 && movecontact
trigger5 = Stateno = 606 && movecontact
trigger6 = Stateno = 610 && movecontact
trigger7 = Stateno = 611 && movecontact
trigger8 = Stateno = 620 && movecontact
trigger9 = Stateno = 622 && movecontact
trigger10 = Stateno = 625 && movecontact
trigger11 = Stateno = 650 && movecontact
trigger12 = Stateno = 660 && movecontact
trigger13 = Stateno = 665 && movecontact
trigger14 = Stateno = 666 && movecontact

;Air Hadou Ken (Ex)
[State -1]
type = ChangeState
value = 1210	;SENTI: air projectile
triggerall = var(59) < 1
triggerall = command = "Hadou Ex" && StateType = A && Numproj = 0
triggerall = power >= 500
trigger1 = Ctrl = 1
trigger2 = Stateno = 600 && movecontact
trigger3 = Stateno = 601 && movecontact
trigger4 = Stateno = 605 && movecontact
trigger5 = Stateno = 606 && movecontact
trigger6 = Stateno = 610 && movecontact
trigger7 = Stateno = 611 && movecontact
trigger8 = Stateno = 620 && movecontact
trigger9 = Stateno = 622 && movecontact
trigger10 = Stateno = 625 && movecontact
trigger11 = Stateno = 650 && movecontact
trigger12 = Stateno = 660 && movecontact
trigger13 = Stateno = 665 && movecontact
trigger14 = Stateno = 666 && movecontact

;Tatsumaki sempuu kyaku (Ex)
[State -1]
type = ChangeState
value = 1230	;SENTI: whirling kick
triggerall = var(59) < 1
triggerall = command = "Tatsumaki Ex" && StateType != A
triggerall = power >= 500
trigger1 = Ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact

;Shoryu ken (Ex)
[State -1]
type = ChangeState
value = 1220	;SENTI: rising punch
triggerall = var(59) < 1
triggerall = command = "Shoryu Ex" && StateType != A
triggerall = power >= 500
trigger1 = Ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact

;Hadou Ken (Ex)
[State -1]
type = ChangeState
value = 1200	;SENTI: projectile
triggerall = var(59) < 1
triggerall = command = "Hadou Ex" && StateType != A && Numproj = 0
triggerall = power >= 500
trigger1 = Ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact

;-| Special Moves |-------------------------------------------------------------
;Rasetsu Kyaku (Light)
[State -1, Rasetsu Kyaku Light]
type = ChangeState
value = 1600	;SENTI: dash short
triggerall = var(59) < 1
triggerall = command="Rasetsu Kyaku1"
triggerall = statetype != A && var(58)<1
trigger1 = ctrl
trigger2 = var(3)
trigger3 = var(15)
trigger3 = var(18)
Trigger3 = StateNo != 1000

;Rasetsu Kyaku (Medium)
[State -1, Rasetsu Kyaku Medium]
type = ChangeState
value = 1601	;SENTI: dash medium
triggerall = var(59) < 1
triggerall = command="Rasetsu Kyaku2"
triggerall = statetype != A && var(58)<1
trigger1 = ctrl
trigger2 = var(3)
trigger3 = var(15)
trigger3 = var(18)
Trigger3 = StateNo != 1000

;Rasetsu Kyaku (Hard)
[State -1, Rasetsu Kyaku Hard]
type = ChangeState
value = 1602	;SENTI: dash far
triggerall = var(59) < 1
triggerall = command="Rasetsu Kyaku3"
triggerall = statetype != A && var(58)<1
trigger1 = ctrl
trigger2 = var(3)
trigger3 = var(15)
trigger3 = var(18)
Trigger3 = StateNo != 1000

;Air Tatsumaki sempuu kyaku (light)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCB_a"
triggerall = Pos Y <= -5
trigger1 = StateType = A && ctrl
value = 3000	;SENTI: air whirling kick
trigger2 = Stateno = 600 && movecontact
trigger3 = Stateno = 601 && movecontact
trigger4 = Stateno = 605 && movecontact
trigger5 = Stateno = 606 && movecontact
trigger6 = Stateno = 610 && movecontact
trigger7 = Stateno = 611 && movecontact
trigger8 = Stateno = 620 && movecontact
trigger9 = Stateno = 622 && movecontact
trigger10 = Stateno = 625 && movecontact
trigger11 = Stateno = 650 && movecontact
trigger12 = Stateno = 660 && movecontact
trigger13 = Stateno = 665 && movecontact
trigger14 = Stateno = 666 && movecontact

;Air Tatsumaki sempuu kyaku (medium)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCB_b"
triggerall = Pos Y <= -5
trigger1 = StateType = A && ctrl
value = 3100	;SENTI: air whirling kick
trigger2 = Stateno = 600 && movecontact
trigger3 = Stateno = 601 && movecontact
trigger4 = Stateno = 605 && movecontact
trigger5 = Stateno = 606 && movecontact
trigger6 = Stateno = 610 && movecontact
trigger7 = Stateno = 611 && movecontact
trigger8 = Stateno = 620 && movecontact
trigger9 = Stateno = 622 && movecontact
trigger10 = Stateno = 625 && movecontact
trigger11 = Stateno = 650 && movecontact
trigger12 = Stateno = 660 && movecontact
trigger13 = Stateno = 665 && movecontact
trigger14 = Stateno = 666 && movecontact

;Air Tatsumaki sempuu kyaku (hard)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCB_c"
triggerall = Pos Y <= -5
trigger1 = StateType = A && ctrl
value = 3200	;SENTI: air whirling kick
trigger2 = Stateno = 600 && movecontact
trigger3 = Stateno = 601 && movecontact
trigger4 = Stateno = 605 && movecontact
trigger5 = Stateno = 606 && movecontact
trigger6 = Stateno = 610 && movecontact
trigger7 = Stateno = 611 && movecontact
trigger8 = Stateno = 620 && movecontact
trigger9 = Stateno = 622 && movecontact
trigger10 = Stateno = 625 && movecontact
trigger11 = Stateno = 650 && movecontact
trigger12 = Stateno = 660 && movecontact
trigger13 = Stateno = 665 && movecontact
trigger14 = Stateno = 666 && movecontact

;Shoryu ken (light)
[State -1]
type = ChangeState
value = 1100	;SENTI: rising punch
triggerall = var(59) < 1
triggerall = command = "DP_x" && StateType != A
trigger1 = ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact

;Shoryu ken (medium)
[State -1]
type = ChangeState
value = 1108	;SENTI: rising punch
triggerall = var(59) < 1
triggerall = command = "DP_y" && StateType != A
trigger1 = ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact

;Shoryu ken (hard)
[State -1]
type = ChangeState
value = 1118	;SENTI: rising punch
triggerall = var(59) < 1
triggerall = command = "DP_z" && StateType != A
trigger1 = ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact

;Air Hadou Ken (light)
[State -1]
type = ChangeState
value = 860	;SENTI: air projectile
triggerall = var(59) < 1
triggerall = command = "QCF_x" && StateType = A && Numproj = 0
trigger1 = Ctrl = 1
trigger2 = Stateno = 600 && movecontact
trigger3 = Stateno = 601 && movecontact
trigger4 = Stateno = 605 && movecontact
trigger5 = Stateno = 606 && movecontact
trigger6 = Stateno = 610 && movecontact
trigger7 = Stateno = 611 && movecontact
trigger8 = Stateno = 620 && movecontact
trigger9 = Stateno = 622 && movecontact
trigger10 = Stateno = 625 && movecontact
trigger11 = Stateno = 650 && movecontact
trigger12 = Stateno = 660 && movecontact
trigger13 = Stateno = 665 && movecontact
trigger14 = Stateno = 666 && movecontact

;Air Hadou Ken (medium)
[State -1]
type = ChangeState
value = 861	;SENTI: air projectile
triggerall = var(59) < 1
triggerall = command = "QCF_y" && StateType = A && Numproj = 0
trigger1 = Ctrl = 1
trigger2 = Stateno = 600 && movecontact
trigger3 = Stateno = 601 && movecontact
trigger4 = Stateno = 605 && movecontact
trigger5 = Stateno = 606 && movecontact
trigger6 = Stateno = 610 && movecontact
trigger7 = Stateno = 611 && movecontact
trigger8 = Stateno = 620 && movecontact
trigger9 = Stateno = 622 && movecontact
trigger10 = Stateno = 625 && movecontact
trigger11 = Stateno = 650 && movecontact
trigger12 = Stateno = 660 && movecontact
trigger13 = Stateno = 665 && movecontact
trigger14 = Stateno = 666 && movecontact


;Air Hadou Ken (hard)
[State -1]
type = ChangeState
value = 862	;SENTI: air projectile
triggerall = var(59) < 1
triggerall = command = "QCF_z" && StateType = A && Numproj = 0
trigger1 = Ctrl = 1
trigger2 = Stateno = 600 && movecontact
trigger3 = Stateno = 601 && movecontact
trigger4 = Stateno = 605 && movecontact
trigger5 = Stateno = 606 && movecontact
trigger6 = Stateno = 610 && movecontact
trigger7 = Stateno = 611 && movecontact
trigger8 = Stateno = 620 && movecontact
trigger9 = Stateno = 622 && movecontact
trigger10 = Stateno = 625 && movecontact
trigger11 = Stateno = 650 && movecontact
trigger12 = Stateno = 660 && movecontact
trigger13 = Stateno = 665 && movecontact
trigger14 = Stateno = 666 && movecontact

;Tatsumaki sempuu kyaku (light)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCB_a" && StateType != A
trigger1 = Ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
value = 2090	;SENTI: whirling kick

;Tatsumaki sempuu kyaku (medium)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCB_b" && StateType != A
trigger1 = Ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
value = 2100	;SENTI: whirling kick

;Tatsumaki sempuu kyaku (hard)
[State -1]
type = ChangeState
triggerall = var(59) < 1
triggerall = command = "QCB_c" && StateType != A
trigger1 = Ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
value = 2200	;SENTI: whirling kick

;Hadou Ken (light)
[State -1]
type = ChangeState
value = 850	;SENTI: projectile
triggerall = var(59) < 1
triggerall = command = "QCF_x" && StateType != A && Numproj = 0
trigger1 = Ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact

;Hadou Ken (medium)
[State -1]
type = ChangeState
value = 851	;SENTI: projectile
triggerall = var(59) < 1
triggerall = command = "QCF_y" && StateType != A && Numproj = 0
trigger1 = Ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact

;Hadou Ken (hard)
[State -1]
type = ChangeState
value = 852	;SENTI: projectile
triggerall = var(59) < 1
triggerall = command = "QCF_z" && StateType != A && Numproj = 0
trigger1 = Ctrl = 1
trigger2 = Stateno = 200 && movecontact
trigger3 = Stateno = 201 && movecontact
trigger4 = Stateno = 210 && movecontact
trigger5 = Stateno = 215 && movecontact
trigger6 = Stateno = 218 && movecontact
trigger7 = Stateno = 220 && movecontact
trigger8 = Stateno = 230 && movecontact
trigger9 = Stateno = 231 && movecontact
trigger10 = Stateno = 261 && movecontact
trigger11 = Stateno = 262 && movecontact
trigger12 = Stateno = 265 && movecontact
trigger13 = Stateno = 274 && movecontact
trigger14 = Stateno = 276 && movecontact
trigger15 = Stateno = 277 && movecontact
trigger16 = Stateno = 279 && movecontact
trigger17 = Stateno = 400 && movecontact
trigger18 = Stateno = 405 && movecontact
trigger19 = Stateno = 410 && movecontact
trigger20 = Stateno = 420 && movecontact
trigger21 = Stateno = 425 && movecontact
trigger22 = Stateno = 430 && movecontact
;-| Zero Counter |-------------------------------
; Punch
[State -1]
type = ChangeState
value = 2300	;SENTI: counter
triggerall = var(59) < 1
triggerall = Command = "ZC_p" && power >= 500
trigger1 = stateno = 150 || Stateno = 152
trigger2 = stateno = 151 && time < 2
trigger3 = stateno = 153 && time < 2

; Kick
[State -1]
type = ChangeState
value = 2310	;SENTI: counter
triggerall = var(59) < 1
triggerall = Command = "ZC_k" && power >= 500
trigger1 = stateno = 150 || Stateno = 152
trigger2 = stateno = 151 && time < 2
trigger3 = stateno = 153 && time < 2

;-| Throws |------------------------------------------------------

;Foward Medium punch throw
[State -1]
type = ChangeState
value = 980	;SENTI: grab
triggerall = var(59) < 1
triggerall = command = "fwdthrow_y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = P2StateType != A
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = p2movetype != H
    		Triggerall = var(50) = 0

;Back Medium punch throw
[State -1]
type = ChangeState
value = 980	;SENTI: grab
triggerall = var(59) < 1
triggerall = command = "backthrow_y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = P2StateType != A
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 18
trigger1 = p2movetype != H
     	Triggerall = var(50) = 0


;Foward Hard punch throw
[State -1]
type = ChangeState
value = 980	;SENTI: grab
triggerall = var(59) < 1
triggerall = command = "fwdthrow_z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = P2StateType != A
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = p2movetype != H
     	Triggerall = var(50) = 0

;Back Hard punch throw
[State -1]
type = ChangeState
value = 980	;SENTI: grab
triggerall = var(59) < 1
triggerall = command = "backthrow_z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = P2StateType != A
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 18
trigger1 = p2movetype != H
     	Triggerall = var(50) = 0


;Foward Hard Kick Throw
[State -1]
type = ChangeState
value = 900	;SENTI: grab
triggerall = var(59) < 1
triggerall = command = "fwdthrow_c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = P2StateType != A
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 18
trigger1 = p2movetype != H
     	Triggerall = var(50) = 0

;Back Hard Kick Throw
[State -1]
type = ChangeState
value = 900	;SENTI: grab
triggerall = var(59) < 1
triggerall = command = "backthrow_c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = P2StateType != A
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 18
trigger1 = p2movetype != H
     	Triggerall = var(50) = 0

;Foward Hard Kick Throw (Air)
[State -1]
type = ChangeState
value = 910	;SENTI: air grab
triggerall = var(59) < 1
triggerall = command = "fwdthrow_c"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 18
trigger1 = p2movetype != H


;Back Hard Kick Throw (Air)
[State -1]
type = ChangeState
value = 910	;SENTI: air grab
triggerall = var(59) < 1
triggerall = command = "backthrow_c"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 18
trigger1 = p2movetype != H


;Foward Hard punch Throw (Air)
[State -1]
type = ChangeState
value = 970	;SENTI: air grab
triggerall = var(59) < 1
triggerall = command = "fwdthrow_z"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 18
trigger1 = p2movetype != H


;Back Hard punch Throw (Air)
[State -1]
type = ChangeState
value = 970	;SENTI: air grab
triggerall = var(59) < 1
triggerall = command = "backthrow_z"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 18
trigger1 = p2movetype != H


;Foward Hard Kick Throw + Attack
[State -1]
type = ChangeState
value = 920	;SENTI: grab
triggerall = var(59) < 1
triggerall = command = "fwdthrow_b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 18
trigger1 = p2movetype != H


;Back Hard Kick Throw + Attack
[State -1]
type = ChangeState
value = 920	;SENTI: grab
triggerall = var(59) < 1
triggerall = command = "backthrow_b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 18
trigger1 = p2movetype != H


;-| command attack |---------------------------------------------------

;Smash kick
[State -1]
type = ChangeState
value = 666	;SENTI: air down kick
triggerall = var(59) < 1
triggerall = Command = "c" && Command = "holddown" && StateType = A && var(16) != 1
trigger1 = statetype = A && ctrl
trigger2 = Stateno = 600 && movecontact
trigger3 = Stateno = 601 && movecontact
trigger4 = Stateno = 605 && movecontact
trigger5 = Stateno = 606 && movecontact
trigger6 = Stateno = 610 && movecontact
trigger7 = Stateno = 611 && movecontact
trigger8 = Stateno = 620 && movecontact
trigger9 = Stateno = 622 && movecontact
trigger10 = Stateno = 625 && movecontact
trigger11 = Stateno = 650 && movecontact
trigger12 = Stateno = 660 && movecontact
trigger13 = Stateno = 665 && movecontact


; Foward Hard Kick
[State -1]
type = ChangeState
value = 277	;SENTI: forwar kick
triggerall = var(59) < 1
triggerall = Command = "c" && Command = "holdfwd" && StateType = S && var(16) != 1
trigger1 = StateType = S && ctrl

;Foward Medium kick
[State -1]
type = ChangeState
value = 278	;SENTI: down kick
triggerall = var(59) < 1
triggerall = Command = "b" && Command = "holdfwd" && StateType = S && var(16) != 1
trigger1 = statetype = S && ctrl

;Back Hard kick
[State -1]
type = ChangeState
value = 262	;SENTI: kick
triggerall = var(59) < 1
triggerall = Command = "c" && Command = "holdback" && StateType = S && var(16) != 1
trigger1 = statetype = S && ctrl


;-| Stand Moves |------------------------------------------------------

;Taunt
[State -1, Taunt]
type = ChangeState
value = 101
triggerall = var(59) < 1
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;Light punch
[State -1]
type = ChangeState
value = 200
triggerall = var(59) < 1
triggerall = command = "x"
triggerall = Command != "holddown" && P2bodydist X > 10 && StateType = S
trigger1 = Ctrl = 1

;Light punch (close)
[State -1]
type = ChangeState
value = 201
triggerall = var(59) < 1
triggerall = Command = "x"
triggerall = Command != "holddown" && P2bodydist X < 31 && StateType = S
trigger1 = Ctrl = 1

;Medium punch
[State -1]
type = ChangeState
value = 210
triggerall = var(59) < 1
triggerall = Command = "y" && Command != "holddown" && P2bodydist X > 20 && StateType = S
trigger1 = Ctrl = 1

;Medium punch (close)
[State -1]
type = ChangeState
value = 215
triggerall = var(59) < 1
triggerall = Command = "y" && Command != "holddown" && P2bodydist X < 31 && StateType = S
trigger1 = Ctrl = 1

;Hard punch
[State -1]
type = ChangeState
value = 218
triggerall = var(59) < 1
triggerall = Command = "z" && Command != "holddown" && P2bodydist X > 20 && StateType = S
trigger1 = Ctrl = 1

;Hard punch (close)
[State -1]
type = ChangeState
value = 220
triggerall = var(59) < 1
triggerall = Command = "z" && Command != "holddown" && P2bodydist X < 31 && StateType = S
trigger1 = Ctrl = 1
trigger2 = Stateno = 215 && movecontact

;Light Kick (close)
[State -1]
type = ChangeState
value = 231
triggerall = var(59) < 1
triggerall = Command = "a" && Command != "holddown" && P2bodydist X < 20 && StateType = S
trigger1 = Ctrl = 1


;Light kick
[State -1]
type = ChangeState
value = 230
triggerall = var(59) < 1
triggerall = Command = "a" && Command != "holddown" && P2bodydist X > 20 && StateType = S
trigger1 = Ctrl = 1


;Medium kick
[State -1]
type = ChangeState
value = 261
triggerall = var(59) < 1
triggerall = Command = "b" && Command != "holddown" && P2bodydist X > 20 && StateType = S
trigger1 = Ctrl = 1


;Medium kick (close)
[State -1]
type = ChangeState
value = 274
triggerall = var(59) < 1
triggerall = Command = "b" && Command != "holddown" && P2bodydist X < 31 && StateType = S
trigger1 = Ctrl = 1


;Hard kick
[State -1]
type = ChangeState
value = 265
triggerall = var(59) < 1
triggerall = Command = "c" && Command != "holddown" && P2bodydist X > 20 && StateType = S
trigger1 = Ctrl = 1



;Hard kick (close)
[State -1]
type = ChangeState
value = 275
triggerall = var(59) < 1
triggerall = Command = "c" && Command != "holddown" && P2bodydist X < 31 && StateType = S
trigger1 = Ctrl = 1


;Light punch (crouch)
[State -1]
type = ChangeState
value = 400
triggerall = var(59) < 1
triggerall = Command = "x" && Command = "holddown" && StateType = C
trigger1 = Ctrl = 1


;Medium punch (crouch)
[State -1]
type = ChangeState
value = 405
triggerall = var(59) < 1
triggerall = Command = "y" && Command = "holddown" && StateType = C
trigger1 = Ctrl = 1


;Hard punch (crouch)
[State -1]
type = ChangeState
value = 410
triggerall = var(59) < 1
triggerall = Command = "z" && Command = "holddown" && StateType = C
trigger1 = Ctrl = 1


;Light kick (crouch)
[State -1]
type = ChangeState
value = 420
triggerall = var(59) < 1
triggerall = Command = "a" && Command = "holddown" && StateType = C
trigger1 = Ctrl = 1


;Medium kick (crouch)
[State -1]
type = ChangeState
value = 425
triggerall = var(59) < 1
triggerall = Command = "b" && Command = "holddown" && StateType = C
trigger1 = Ctrl = 1


;Hard kick (crouch)
[State -1]
type = ChangeState
value = 430
triggerall = var(59) < 1
triggerall = Command = "c" && Command = "holddown" && StateType = C
trigger1 = Ctrl = 1

;Jump Light punch
[State -1]
type = ChangeState
value = 600
triggerall = var(59) < 1
triggerall = Command = "x" && StateType = A  && Vel X = 0
trigger1 = Ctrl = 1

;Jump Foward Light punch
[State -1]
type = ChangeState
value = 601
triggerall = var(59) < 1
triggerall = Command = "x" && StateType = A
trigger1 = Ctrl = 1


;Jump Medium punch
[State -1]
type = ChangeState
value = 605
triggerall = var(59) < 1
triggerall = Command = "y" && StateType = A && Vel X = 0
trigger1 = Ctrl = 1

;Jump Foward Medium punch
[State -1]
type = ChangeState
value = 606
triggerall = var(59) < 1
triggerall = Command = "y" && StateType = A
trigger1 = Ctrl = 1


;Jump Hard punch
[State -1]
type = ChangeState
value = 610
triggerall = var(59) < 1
triggerall = Command = "z" && StateType = A && Vel X = 0
trigger1 = Ctrl = 1

;Jump Foward Hard punch
[State -1]
type = ChangeState
value = 611
triggerall = var(59) < 1
triggerall = Command = "z" && StateType = A
trigger1 = Ctrl = 1


;Jump Light kick
[State -1]
type = ChangeState
value = 620
triggerall = var(59) < 1
triggerall = Command = "a" && StateType = A && Vel X = 0
trigger1 = Ctrl = 1


;Jump Medium kick
[State -1]
type = ChangeState
value = 622
triggerall = var(59) < 1
triggerall = Command = "b" && StateType = A && Vel X = 0
trigger1 = Ctrl = 1


;Jump Hard kick
[State -1]
type = ChangeState
value = 625
triggerall = var(59) < 1
triggerall = Command = "c" && StateType = A && Vel X = 0
trigger1 = Ctrl = 1


;Jump foward Light kick
[State -1]
type = ChangeState
value = 650
triggerall = var(59) < 1
triggerall = Command = "a" && StateType = A
trigger1 = Ctrl = 1


;Jump foward Medium kick
[State -1]
type = ChangeState
value = 660
triggerall = var(59) < 1
triggerall = Command = "b" && StateType = A
trigger1 = Ctrl = 1


;Jump foward Hard kick
[State -1]
type = ChangeState
value = 665
triggerall = var(59) < 1
triggerall = Command = "c" && StateType = A
trigger1 = Ctrl = 1


; Running Forward
[State -1]
type = ChangeState
value = 100
triggerall = var(59) < 1
trigger1 = Command = "FF" && StateType = S && Ctrl = 1 && StateNo != 100 && StateNo != 105 && var(16) != 1


; Running Back
[State -1]
type = ChangeState
value = 105
triggerall = var(59) < 1
trigger1 = Command = "BB" && StateType = S && Ctrl = 1 && StateNo != 100 && StateNo != 105 && var(16) != 1
