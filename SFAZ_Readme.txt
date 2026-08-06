===================================================================== 
  S T R E E T  F I G H T E R  A L P H A  Z E R O
=====================================================================
  Version 1.2.1
  2024
  by Agent Ed

  (c) 1999-2013 Elecbyte


About
-----

Created with "M.U.G.E.N" and "I.K.E.M.E.N GO" engines, 
Street Fighter Alpha Zero is initially influenced by the 
visual style of Street Fighter Alpha 2, but also uses elements 
from Street Fighter Alpha: Warriors' Dream, Street Fighter Alpha 3, 
and from the series: Marvel vs Capcom, Capcom vs SNK, and Street Fighter III.

v.1.3.0 Updates
------
- New playable characters: Juli and Juni
- New gamde mode: World Tour, like the one in Alpha 3 MAX, with similar challanges inside, such as
Time Stricted Attack, Special Only Attack, Hyper Only Attack, Throw Only Attack, Target a Specific 
Team Member.
- New stages: Kenya (from Elena, SFIII), Secret Area Red/Green/Blue (from Alpha 3), and Colossseum 
(from Rose, Alpha 1).
- Time Attack mode stricted to a single round per match.
- Vega's claw is now detachable and reattachable.
- Palette Selector (by Orange Dolphin) added to Select Screen.
-Team Duplicates are switched off, but the alternate characters can still be in the same team
with their original versions.
- Mike now has the "Lunging Punch" move.
- Sprites for Mike and Cody (hero outfit) are reworked.
- Ken now has the SFII style kick.
- Bison II now has "Mega Psycho Shoot" as a hyper move.
- Guy now has the "Teleport" move from the Hyper Street Fighter Alpha's Shadaloo-ism.
- Shin Akuma's "Shin Shoryuken" removed from his moveset.
- DJ now has a hyper move, "Super Air Slasher".
- Hit sounds in all characters are fixed to a single channel to play more distinctively 
on rapid attacks.
- Most of the character palettes edited, changed and fixed. Now all characters, including the
alternate ones, have 12 different color options.
- Screenpack elements and layouts are visually improved.
** Cooperative mode carried back into Arcade Mode submenu in the main screen.
- Guard bar added for Player 3 and Player 4.
- Cammy's moveset is edited to balance the moves of Killer Bee Cammy, Delta Red Cammy, Juli and Juni.
- AI difficulties balanced. Level 2 and 3 AI difficulties are now easier in single modes. Simul battle
and Survival modes are considerably more fair for all AI levels. On the other hand, combo hit scale has been
reduced for the player for Level 6 to 8, to increase the difficulty for hard modes.
- Now Move Lists for each character can be accessed through Pause Menu.

v.1.2.2 Updates
------
-Ranking table is added to roundstate 4 for the score based game modes.
-Fixed bug where Rose's sprite overlaps the key input values in options screen.
-Fixed bug where the secondary team members do not go out of the screen in the tag mode.
-Fixed bug where some of the guard damage did not apply to the opponent.
-Cheap KO states were created for all characters.
-Design improvements in the intro storyboard, win/result screens, options, select, and victory screen.
-Improvement on character AI.

v.1.2.1 Updates
------
-Fixed bug where the team arcade was stricted into two battles.
-Fixed bug where some special intros and win quotes weren't working
properly in team mode.

v.1.2.0 Updates
-------
Gameplay updates_
- Tag and Ratio modes are added.
** Single mode and simul modes are removed from the teams menu, and merged as the "TEAMS" menu, ranging from 1 to 2.
** STORY MODE and TEAM MODE were transfered into ARCADE submenu.
- New path for VS100 Kumite
- New alternate character: Mike (accessed through Balrog's slot).
- Three new stages: Sonson's Street (Ryu SFA1), Train Garage (Sodom SFA1), 
The Doll Soldiers Project HQ (adapted from SFIII, Train Lab in Moscow)
- Several characters' AI has been optimized for a more balanced difficulty and less repetitive flow.
- Now in Versus, Time Attack, Free Battle, and VS100 Kumite modes, the players and opponents start 
the match with full power.
- New arcade path and ending for Balrog
- Air grapple move was added for all characters.
- Ryu now performs level 1 and 2 Metsu Shoryuken, and a level 3 Shin Shoryuken.
- Blanka now is able to perform the super move, Lightning, from CvS games.
- Ryu's Lv3 Shinkuu Hadoken now burns the opponent
- Rolento now is able to perform Steel Rain from Alpha 3.
- The winning character's control is restrained right after the WinKO
- Fake Rolling Taunt was added to Ken's moves.

Cosmetic updates_
- Now the game supports 1280p screen size.
- New artwork has been created for Guile for the game intro.
- Palette fix in Balrog and Vega's artwork in the game intro.
- Palette edit in Balrog, Dark Sakura, Sodom X, Sari (Dhalsim), and Killer Bee.
- 6 new palette options for Ken, Blanka, Honda, Shin Akuma, and Zangief
- Colors were changed in the select screen.
- Instead of reflecting the opponents projectile by converting it into Soul Spark, 
now Rose reflects the opponents projectile, matching with its own pal
- Character names in the select screen now use SFA1 font.
- Rolento's grenade in his win state is now making the defeated opponent bounce.
- Trigger conditions were rearranged in some of the characters' special intros.
- Design change in select screen, victory screen, and result screens.

Bug Fixes_
- on the character AI.
- on several characters' sound fx volume
- on Blanka's and Cammy's guarding mechanism
- where, after Shun Goku Satsu, the background symbol gets in front of the defeated 
opponent.
- where Guile's power was increasing faster than the other characters
- where Cammy's dir moves make the opponent stuck in H movetype.
- on the colors of Blanka's truck.



Contents
--------

I.      Key Configuration
II.     Running the Game
III.	Difficulty
IV.     M.U.G.E.N Info
V.	Liscence
A.      License Agreement
B.      Acknowledgements

=====================================================================
I. Key Configuration
=====================================================================

This is the default key configuration. You can change it from the
options menu when you run the game.

Button       Player 1      Player 2
------       --------      --------
  Up         Up arrow      W
 Down        Down arrow    S
 Left        Left arrow    A
Right        Right arrow   D
  X          L             R
  Y          semicolon     T
  Z          double-quote  Y
  A          comma         F
  B          period        G
  C          slash         H
Start        Enter         KP0
Insert Coin  F9		   F9
Swap Slots   Q/W	   LBRACKET/RBRACKET
Options	     F11	   F11

These are the hotkeys recognized at the fight screen:

Key       Function
---       --------
Pause     Toggle pause
ScrollLck Frame-step within pause
Esc       Menu
Alt+F4	  Quit

If you have a joystick, you can enable it through the options screen.
Press F1 to access Input Config and set up your joystick from there.
Press left/right on the joystick type option to enable or disable
the joystick for each player.

Please check "Moveset.txt" to see character specific moves.

=====================================================================
II. Running the Game
=====================================================================

From Explorer, double-click mugen.exe to start.

Main menu        Function
---------        --------
Story Mode       Go 1 on 1 against the computer, and follow character-specific arcade paths. (10 Matches)
Arcade Mode      Go 1 on 1 against the computer,or play various team-up modes against the computer. (10 Matches)
Arcade Co-op     Gang up against the computer with your friend. (10 Matches)
Versus           Go 1 on 1 against your friend, or play various team-up modes against your friend.
Free Battle	 Select your opponent and start battling right away. (Single match)
Survival         See how long you can last! (10 Matches)
VS100 Kumite     Try defeating as many opponents as possible. (100 Matches)
Time Attack	 Try beating the game as quick as possible. (10 Matches)
Training         Try out moves and combos
Watch            Watch AI-controlled characters fight
Options          Set up basic game options
Quit

"Story" mode generally focuses on 1-on-1 fights, by each character 
following different routes, battling with different opponents.
Some matches also contain character-specific dialogue scenes that keep
the in-game story flow.

For "Arcade" mode, the key you hit will determine which side you play
on. 

For the "team" modes, you first choose what team mode you would like
to play in. Press up/down to choose a mode. Some modes, such as Turns
mode, allow you to set the number of players on a team by pressing
left/right. Press a key to choose an option. In "Team Arcade", after
selecting your players, you have a choice of your opponents' team
mode. These are the different kinds of team modes:
  Single - Just you alone. Your character has 2 rounds.
  Simul  - You and a partner at the same time. Your team has 2 rounds.
  Turns  - You and up to 3 partners. When one character is KOed, the
           next will join in. Each character has 1 round.
The characters' starting life will be adjusted according the number
of players on each side.

Team Co-op is slightly different. The only team mode allowed is
Simul, which is automatically selected. Player One first gets to
select his character, followed by Player Two selecting the partner
character. When Player Two is done, Player One chooses the opponent's
team mode.

In Survival mode, there is a stream of opponents. The
objective is to beat all 10 matches without a defeat. The game is over
if your team gets KOed. You can choose to play alone or in a team.
Single player mode gives you highest life points and healing (when you
win a round). The more players you have on your team, the less damage
each player can take, and the less each healing you get after each
round.

Vs. 100 Kumite is a mode that puts the player against 100 rounds of opponents. 
Each round only requires one K.O. to advance to the next round, and will advance 
even if the player loses the round. The mode is named after the 100-man kumite, 
an endurance test in karate where one must endure 100 rounds of kumite against 
opponents of similar skill.

In "Watch" mode, first choose the team mode and characters to be on
Player One's side, then do the same for Player Two.


Switching order in Turns mode
-----------------------------

When you are playing Turns team mode, you can change your team order
during one of these situations:

1. right before the match start loading
2. after you lose a round, and right before the next round is loaded

The order switching is achieved by holding a directional button down.
Hold forward to rotate your team order by one member forwards. Hold
back to rotate your team order by one member backwards. If you have
4 available members, you can rotate it by 2 members by holding up.
Note that you can only rotate with members that have not yet been
KO'ed.

Here is a chart to clarify the way it works.

	         starting team
            1 2 3 4  |  1 2 3  |  1 2
           ----------+---------+------
 hold fwd:  2 3 4 1  |  2 3 1  |  2 1
 hold back: 4 1 2 3  |  3 1 2  |  2 1
 hold up:   3 4 1 2  |  ^      |  ^
            ^           |         |
            |           |         |
     this is the character that will come in



Training Menu
-------------

A training menu is available in Training mode. You can choose menu
items with your directional keys and exit Pause Mode by pressing
any attack key or Pause. The following options are available:

Dummy control: Cooperative, AI, or Manual
  When in cooperative mode, the dummy will perform the actions you 
  specify elsewhere in the training menu. When in AI mode, the dummy
  will act like a normal computer opponent. When in manual mode, the
  dummy can be controlled with the opponent's keys.
 
Guard mode: None, Auto
  If guard mode is set to Auto, the dummy will attempt to block most
  attacks. If guard mode is set to None, the dummy will not block any
  attacks.

Dummy mode: Stand, Crouch, Jump, W Jump
  Depending on your selection, the dummy will stand, crouch, or 
  repeatedly jump. If you choose W Jump, the dummy will keep air 
  jumping as long as it can.

Distance: Any, Close, Medium, Far
  If you choose Close, Medium, or Far, the dummy will try to keep the 
  appropriate distance from you by walking forward/backward as 
  necessary. If you choose Any, the dummy will not move forward or 
  backward.

Button jam: None, A, B, C, X, Y, Z, Start
  The dummy will repeatedly mash the selected button. Good for testing
  a character's blocking.

You can minimize the training menu by pressing M while it is active.
Press M again to reenable it.


=====================================================================
III. Difficulty
=====================================================================

Street Fighter Alpha Zero has a custom AI ranking that even if the 
default AI ranking option is off, the difficulty will have minor changes
depending on the match number. 

Difficulty:

1 = Easy ; no custom AI is applied.

2 = Fair ; opponents perform special moves more frequently.

3 = Medium ; opponents perform standard moves more frequently.

4 = Balanced ; opponents perform combos.

5/6/7 = Hard ; The chance of attack keeps increasing and custom AI ranking is reduced.

8 = Expert ; No custom AI ranking. Some opponents perform extra special moves.

=====================================================================
IV. M.U.G.E.N Info
=====================================================================

M.U.G.E.N may be used free-of-charge for non-commercial purposes.
For other uses, please contact us.  Refer to Appendix A for the full
license text.


System requirements
-------------------

Operating System: Microsoft Windows XP SP2 or newer required.

CPU: Intel Core Duo or equivalent recommended for HD resolutions.

Memory: 512 MB or more (actual requirements may vary based on
character and stage complexities).


What M.U.G.E.N?
---------------

M.U.G.E.N is a 2D fighting game engine, originally released in 1999.
M.U.G.E.N was originally designed for users to create games that
matched the technology level of 2D fighters from the mid '90s.
However, it quickly evolved to become highly customizable, allowing
very fine control over each character's behavior.  In fact, there
are custom games for M.U.G.E.N that don't behave like your typical 2D
fighter.

The majority of content created for M.U.G.E.N tend to be distributed
as individual characters, stages or motifs (motifs are like themes,
that control the look and feel of the game).  Assembling a game is as
simple as downloading the content of your choice, and configuring
M.U.G.E.N to know about it.

M.U.G.E.N is designed to be used by people with little or no
programming experience, but with some artistic talent and patience to
learn.  Of course, having some programming background does give you a
bit of a headstart.  However, if you are just looking to play with
downloaded content, all you need to know is how to unzip files and
edit a text file.

M.U.G.E.N is also an acroymn for something, but we forgot
what it is. :)

Game Engine
- Use up to 9 buttons for a character.
- Regular moves, special moves, super moves, etc.
- Projectiles and special effects.
- Move cancels and combos, multi-part moves and throws.
- What your character can do is defined by a scripting language (and
  your imagination).


How M.U.G.E.N?
--------------

M.U.G.E.N was originally developed for DOS in C using DJGPP and
Allegro, an excellent compiler and gaming library respectively.
Today, M.U.G.E.N is built for Microsoft Windows using Visual Studio
Express and SDL.


Where M.U.G.E.N?
----------------

http://elecbyte.com/mugen


Why M.U.G.E.N?
--------------

To tell you the truth, we were making a shooting game and all of a
sudden it turned into this.  Although we were making a shooting game
in the beginning, we noticed that there weren't any good commercial
fighting games on the PC at the time.  Some of the inspiration came
from early engines like SFIBM.


Who M.U.G.E.N?
--------------

If you want to contact us about something, please use the contact
form on our website.
http://elecbyte.com/


When M.U.G.E.N?
---------------

I don't quite remember when we started this project, but it was
sometime around 1997 or 1998.  Our first public release version was
9X.06.27.

=====================================================================
V. Liscense
=====================================================================

Screenpack Liscence 

Electbyte's Mugen motif sprites, audio and font files are licensed under a Creative
Commons Noncommercial License, with optional attribution.
http://creativecommons.org/licenses/by-nc/3.0/

----------------------------------------------------------------------------

Work contributed to Ikemen GO by various artists is licensed under a Creative
Commons Attribution 3.0 Unported License.
http://creativecommons.org/licenses/by/3.0/deed.en_US
The license applies to following assets:
- Lifebar messages, rank backgrounds, action icons by President Devon and Rurouni
- Command list glyphs, order select icons by Rurouni
- Dizzy, guard break, tag switch effects by Shiyo Kakuge
- Title screen motif logos by Cylia Margatroid and Rurouni

MIT License

Copyright (c) 2016 Suehiro
Copyright (c) 2018 K4thos
Copyright (c) 2018 ShinLucho
Copyright (c) 2018 NeatUnsou
Copyright (c) 2019 Windblade
Copyright (c) 2019 Dan
Copyright (c) 2019 Kidcy
Copyright (c) 2020 Wintermourn
Copyright (c) 2020 Shiyo Kakuge
Copyright (c) 2021 Kamekaze
Copyright (c) 2021 two4teezee
Copyright (c) 2021 Super
Copyright (c) 2022 Eiton
Copyright (c) 2022 Sam Hocevar
Copyright (c) 2022 GaryCXJk
Copyright (c) 2022 Lazin3ss
Copyright (c) 2022 potsmugen
Copyright (c) 2023 BwdYeti
Copyright (c) 2023 fantasma

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

The MIT License applies to the Ikemen GO engine and the scripts in this repo.

----------------------------------------------------------------------------

以下に定める条件に従い、本ソフトウェアおよび関連文書のファイル（以下「ソフトウェア」）
の複製を取得するすべての人に対し、ソフトウェアを無制限に扱うことを無償で許可します。
これには、ソフトウェアの複製を使用、複写、変更、結合、掲載、頒布、サブライセンス、および
または販売する権利、およびソフトウェアを提供する相手に同じことを許可する権利も無制限に含まれます。

上記の著作権表示および本許諾表示を、ソフトウェアのすべての複製または重要な部分に記載するものとします。

ソフトウェアは「現状のまま」で、明示であるか暗黙であるかを問わず、何らの保証もなく提供されます。
ここでいう保証とは、商品性、特定の目的への適合性、および権利非侵害についての保証も含みますが、
それに限定されるものではありません。 作者または著作権者は、契約行為、不法行為、またはそれ以外であろうと、
ソフトウェアに起因または関連し、あるいはソフトウェアの使用またはその他の扱いによって生じる一切の請求、損害、
その他の義務について何らの責任も負わないものとします。

----------------------------------------------------------------------------

Work contributed to Ikemen GO by various artists is licensed under a Creative Commons Attribution 3.0 Unported License.
http://creativecommons.org/licenses/by/3.0/deed.en_US
The license applies to following assets:
- The "default-3x5" font by Gacel.
- The icon/logo of the engine by Cylia Margatroid.

----------------------------------------------------------------------------

On release builds the engine is packed with more assets that could have different licences.
If you are using a release build check the "ScreenpackLicence.txt" file for more info.


=====================================================================
A. License Agreement
=====================================================================

By using M.U.G.E.N, you agree to the terms and conditions of this
license.

This license applies to the M.U.G.E.N Environment, defined as the
M.U.G.E.N executable, and other associated data files provided by
Elecbyte that are necessary for proper operation of the executable.


Usage

Under this license, permission is granted to use the M.U.G.E.N
Environment free of charge for non-commercial purposes.


Redistribution

Elecbyte provides a M.U.G.E.N redistributable package, containing a
minimal M.U.G.E.N Environment, that may be included with third party
content for redistribution. Such Works based on the M.U.G.E.N
Environment may be used and distributed, subject to the following:

i. Works containing the M.U.G.E.N Environment must be provided free
of charge and under the terms of this license.

ii. Works containing the M.U.G.E.N Environment must include an
unmodified copy of this license, as well as any other licenses
bundled with the M.U.G.E.N Environment.

iii. Works containing the M.U.G.E.N Environment must be plainly marked
as a such.

iv. You agree to indemnify Elecbyte from any legal liability for your
use, or distribution, of such Works.

Please note that Elecbyte places no restrictions on the distribution
of character files, stage files, add-on packs, or similar items which
operate under the M.U.G.E.N Environment, that do not contain any
significant portion of the M.U.G.E.N Environment itself.


Restrictions

This license is subject to the following restrictions:

1. The M.U.G.E.N Environment is copyrighted by Elecbyte and may not
be used for commercial purposes in whole or in part, altered or
unaltered, without Elecbyte's express written permission.

2. All distributions of the M.U.G.E.N Environment must retain a copy
of this license.

3. The M.U.G.E.N executable must not be modified for use or
redistribution.


Limitations

I. You agree to indemnify Elecbyte from liability for any damage
incurred to any computer hardware, software, or other property, as
well as from any injury incurred to your person or others, through
use of this software.  Elecbyte shall not be held responsible for any
failure of M.U.G.E.N and its associated tools to operate properly,
whether through deficiencies of the software or through user error.
Elecbyte disclaims all express and implied warranties, including but
not limited to warranties of merchantability and fitness for a
particular purpose.

II. Failure by Elecbyte to enforce any of the terms of this agreement
shall not constitute forfeiture of Elecbyte's right to enforce said
terms.

III. In the event of an inconsistency between this license agreement and
other Elecbyte documents, the terms of this license agreement shall
prevail, subject only to possible supersession by subsequent license
agreements. If any of the terms of this license agreement conflict with
the laws in your locale, the conflicting terms will be rendered null and
void. The remainder of this agreement shall still obtain.


Sample Content

Please note that the sample content included with the full M.U.G.E.N
package is not part of the M.U.G.E.N Environment, and is under a
separate license, the Creative Commons Noncommercial License, with
optional attribution.
http://creativecommons.org/licenses/by-nc/3.0/



=====================================================================
B. Acknowledgements
=====================================================================

Thanks to:
- All our alpha and beta testers.
- Everyone who contributed to us in any way.
- All of you who gave feedback to us.
- Everyone responsible for the software libraries we used:
  Allegro, FreeType Project, GLEW, libogg, libpng, SDL, SDL_gfx,
  SDL_image, SDL_mixer, SDL_ttf, SMPEG, zlib.  Also everyone
  reponsible for the other libraries we used in the older versions.

If we forgot to mention someone, please let us know!
