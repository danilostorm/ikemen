-- Last tested on Ikemen GO v0.98
-- This external module implements WORLD TOUR game mode (defeat all opponents
-- that are consider bosses). Up to release 0.97 this mode was part of the
-- default scripts distributed with engine, now it's used as a showcase how to
-- implement full fledged mode with Ikemen GO external modules feature, without
-- conflicting with default scripts. More info:
-- https://github.com/K4thos/Ikemen_GO/wiki/Miscellaneous-Info#lua_modules
-- This mode is detectable by GameMode trigger as worldtour.
-- Only characters with select.def "boss = 1" parameter assigned are valid for
-- this mode.

--[[
; select.def customization

[Characters]
 ; - boss
 ;   IKEMEN feature: Set the paramvalue to 1 to include this character in "World
 ;   Tour" mode. At least 1 character needs this parameter for the mode to show
 ;   up in modes selection menu.

[Options]
 ;IKEMEN feature: Maximum number of normal and ratio matches to fight before
 ;game ends in WORLD TOUR mode. Can be left empty, if player is meant to fight
 ;against all boss characters (in such case order parameter is still respected)

worldtour.maxmatches = 
]]

--[[
; Example system.def parameters assignments

[Title Info]
menu.itemname.worldtour = "WORLD TOUR"

[WORLD TOUR Results Screen]
enabled = 1
sounds.enabled = 1

fadein.time = 0
fadein.col = 0, 0, 0
fadein.anim = -1
fadeout.time = 64
fadeout.col = 0, 0, 0
fadeout.anim = -1
show.time = 300

winstext.text = "Congratulations!"
winstext.offset = 159, 70
winstext.font = 3, 0, 0
winstext.scale = 1.0, 1.0
winstext.displaytime = 0
winstext.layerno = 2

;overlay.window = 0, 0, localcoordX, localcoordY
overlay.col = 0, 0, 0
overlay.alpha = 20, 100

p1.state = 180
p2.state = 
p1.teammate.state = 
p2.teammate.state = 

[worldtourResultsBGdef]
; left blank (character and stage not covered)
]]

--;===========================================================
--; main.lua
--;===========================================================
-- main.t_itemname is a table storing functions with general game mode
-- configuration (usually ending with start.f_selectMode function call).
main.t_itemname.worldtour = function()
	main.f_playerInput(main.playerInput, 1)
	main.t_pIn[2] = 1
	main.aiRamp = false
	main.charparam.ai = true
	main.charparam.music = true
	main.charparam.rounds = true
	main.charparam.single = false
	main.charparam.stage = true
	main.charparam.time = true
	main.lifePersistence = false		
	main.exitSelect = true
	main.hiscoreScreen = true
	--main.lifebar.p1score = true
	--main.lifebar.p2aiLevel = true
	main.makeRoster = true
	main.orderSelect[1] = true
	main.orderSelect[2] = true
	main.rankingCondition = true
	main.resetScore = false
	main.resultsTable = motif.world_tour_results_screen
	main.storyboard.credits = true
	main.storyboard.gameover = true
main.teamMenu = {
		{ratio = false, simul = false, single = true, tag = false, turns = false}, --which team modes should be selectable by P1 side
		{ratio = false, simul = false, single = true, tag = false, turns = false}, --which team modes should be selectable by P2 side
	}
	main.continueScreen = true
	main.quickContinue = false
	main.versusScreen = true
	main.versusMatchNo = true
	main.txt_mainSelect:update({text = motif.select_info.title_worldtour_text})
	setGameMode('worldtour')
	hook.run("main.t_itemname")
	return start.f_selectMode
end

--;===========================================================
--; motif.lua
--;===========================================================
-- Here we're expanding motif table with default values that will be used if
-- these parameters are not overridden by system.def parameter assignment.
-- (dots should not be used in variable names, so they have been changed to _)

-- [Select Info] default parameters. Displayed in select screen.
if motif.select_info.title_worldtour_text == nil then
	motif.select_info.title_worldtour_text = 'WORLD TOUR'
end

-- [Score Challenge Results Screen] default parameters. Works similarly to
-- [Win Screen] (used for rendering mode results screen after last match)
local t_base = {
	enabled = 1,
	sounds_enabled = 1,
	fadein_time = 0,
	fadein_col = {0, 0, 0},
	fadein_anim = -1,
	fadeout_time = 64,
	fadeout_col = {0, 0, 0},
	fadeout_anim = -1,
	show_time = 300,
	winstext_text = 'Congratulations!',
	winstext_offset = {159, 70},
	winstext_font = {'f-6x9.def', 0, 0, 255, 255, 255, -1},
	winstext_scale = {1.0, 1.0},
	winstext_displaytime = 0,
	winstext_layerno = 2,
	overlay_window = {0, 0, main.SP_Localcoord[1], main.SP_Localcoord[2]},
	overlay_col = {0, 0, 0},
	overlay_alpha = {20, 100},
	p1_state = {180},
	p2_state = {},
	p1_teammate_state = {},
	p2_teammate_state = {},
}
if motif.world_tour_results_screen == nil then
	motif.world_tour_results_screen = {}
end
motif.world_tour_results_screen = main.f_tableMerge(t_base, motif.world_tour_results_screen)

-- If not defined, [worldtourResultsBgDef] group defaults to [WinBGdef].
if motif.worldtourresultsbgdef == nil then
	motif.worldtourresultsbgdef = motif.winbgdef
end

-- This code creates data out of optional [worldtourResultsBgDef] sff file.
-- Defaults to motif.files.spr_data, defined in screenpack, if not declared.
if motif.worldtourresultsbgdef.spr ~= nil and motif.worldtourresultsbgdef.spr ~= '' then
	motif.worldtourresultsbgdef.spr = searchFile(motif.worldtourresultsbgdef.spr, {motif.fileDir, '', 'data/'})
	motif.worldtourresultsbgdef.spr_data = sffNew(motif.worldtourresultsbgdef.spr)
else
	motif.worldtourresultsbgdef.spr = motif.files.spr
	motif.worldtourresultsbgdef.spr_data = motif.files.spr_data
end

-- Background data generation.
-- Refer to official Elecbyte docs for information how to define backgrounds.
-- http://www.elecbyte.com/mugendocs/bgs.html#description-of-background-elements
motif.worldtourresultsbgdef.bg = bgNew(motif.worldtourresultsbgdef.spr_data, motif.def, 'worldtourresultsbg')

-- fadein/fadeout anim data generation.
if motif.world_tour_results_screen.fadein_anim ~= -1 then
	motif.f_loadSprData(motif.world_tour_results_screen, {s = 'fadein_'})
end
if motif.world_tour_results_screen.fadeout_anim ~= -1 then
	motif.f_loadSprData(motif.world_tour_results_screen, {s = 'fadeout_'})
end

--;===========================================================
--; start.lua
--;===========================================================
-- start.t_makeRoster is a table storing functions returning table data used
-- by start.f_makeRoster function, depending on game mode.
start.t_makeRoster.worldtour = function()
		local t = {}
	local t_static = {main.t_randomChars}
	for i = 1, 40 do --generate ratiomatches style table for 100 matches
		table.insert(t, {['rmin'] = start.p[2].numChars, ['rmax'] = start.p[2].numChars, ['order'] = 1})
	end
	return t, t_static
end

-- start.t_sortRanking is a table storing functions with ranking sorting logic
-- used by start.f_storeStats function, depending on game mode. Here we're
-- reusing logic already declared for survival mode (refer to start.lua)
start.t_sortRanking.worldtour = start.t_sortRanking.survival

-- as above but the functions return if game mode should be considered "cleared"
start.t_clearCondition.worldtour = function() return winnerteam() == 1 end

-- start.t_resultData is a table storing functions used for setting variables
-- stored in start.t_result table, returning boolean depending on various
-- factors. It's used by start.f_resultInit function, depending on game mode.
local txt_resultworldtour = main.f_createTextImg(motif.world_tour_results_screen, 'winstext')

start.t_resultData.worldtour = function()
	if winnerteam() ==1 and matchno() == 40 then
		start.t_result.resultText = main.f_extractText(main.resultsTable[start.t_result.prefix .. '_text'])
		start.t_result.txt = txt_resultworldtour
		start.t_result.bgdef = 'worldtourresultsbgdef'	
		return true
	else	return false
	end
end

--;===========================================================
--; main.lua
--;===========================================================
-- Table storing data used by functions related to hiscore rendering and saving.
main.t_hiscoreData.worldtour = {mode = 'worldtour', data = 'score', title = motif.select_info.title_worldtour_text}

