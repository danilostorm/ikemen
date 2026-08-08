-- MUGEN STORM - INFINITE BATTLE ARENA
-- Continuous CPU vs CPU watch mode optimized for long livestreams.
-- STORM Battle Link v1.6.0: exports finished matches to STORM_Bridge/outbox.
-- Uses shuffled character and stage bags to reduce repeats and fixed maximum AI.
-- Press Esc at any time to return to the title menu.
local infinitewatch = {}

package.loaded['external.script.infinitewatch'] = infinitewatch

-- Ikemen AILevel ranges from 1 to 8. Livestream Watch always uses max AI.
local WATCH_AI_LEVEL = 8
local STORM_OUTBOX = 'STORM_Bridge/outbox'

-- Shuffle-bag rotation: every registered random character is used before
-- the roster is shuffled again (apart from the unavoidable cycle boundary).
local charBag = {}
local charBagPos = 1
local stageBag = {}
local stageBagPos = 1
local badPairs = {}

-- Match capture is filled by a loop hook BEFORE global.lua calls
-- resetMatchData(false) / endMatch(). This keeps the Watch hotfix intact.
local captureActive = false
local matchCapture = {
	rounds = {0, 0},
	capturedRounds = {},
	result = nil,
}

local function f_shuffle(t)
	for i = #t, 2, -1 do
		local j = math.random(i)
		t[i], t[j] = t[j], t[i]
	end
end

local function f_pairKey(a, b)
	if tostring(a) < tostring(b) then
		return tostring(a) .. '|' .. tostring(b)
	end
	return tostring(b) .. '|' .. tostring(a)
end

local function f_refillCharBag()
	charBag = {}
	for _, ref in ipairs(main.t_randomChars) do
		charBag[#charBag + 1] = ref
	end
	f_shuffle(charBag)
	charBagPos = 1
end

local function f_takeChar(excluded, previous)
	if #main.t_randomChars == 0 then
		return nil
	elseif #main.t_randomChars == 1 then
		return main.t_randomChars[1]
	end

	if charBagPos > #charBag then
		f_refillCharBag()
	end

	local function f_findValid()
		for i = charBagPos, #charBag do
			if charBag[i] ~= excluded and charBag[i] ~= previous then
				return i
			end
		end
		return nil
	end

	local pick = f_findValid()
	if pick == nil then
		-- End of a bag can leave only a recently used fighter. Start a fresh
		-- shuffled bag rather than forcing an immediate rematch/mirror match.
		f_refillCharBag()
		pick = f_findValid()
	end
	if pick == nil then
		-- Very small rosters: at least avoid a mirror when possible.
		for i = charBagPos, #charBag do
			if charBag[i] ~= excluded then
				pick = i
				break
			end
		end
	end
	pick = pick or charBagPos

	charBag[charBagPos], charBag[pick] = charBag[pick], charBag[charBagPos]
	local ret = charBag[charBagPos]
	charBagPos = charBagPos + 1
	return ret
end

local function f_refillStageBag()
	stageBag = {}
	for _, stage in ipairs(main.t_includeStage[1]) do
		stageBag[#stageBag + 1] = stage
	end
	f_shuffle(stageBag)
	stageBagPos = 1
end

local function f_takeStage(previous)
	if #main.t_includeStage[1] == 0 then
		return start.f_setStage()
	elseif #main.t_includeStage[1] == 1 then
		local stage = main.t_includeStage[1][1]
		selectStage(stage)
		return stage
	end

	if stageBagPos > #stageBag then
		f_refillStageBag()
	end

	local pick = nil
	for i = stageBagPos, #stageBag do
		if stageBag[i] ~= previous then
			pick = i
			break
		end
	end
	if pick == nil then
		f_refillStageBag()
		for i = stageBagPos, #stageBag do
			if stageBag[i] ~= previous then
				pick = i
				break
			end
		end
	end
	pick = pick or stageBagPos

	stageBag[stageBagPos], stageBag[pick] = stageBag[pick], stageBag[stageBagPos]
	local stage = stageBag[stageBagPos]
	stageBagPos = stageBagPos + 1
	selectStage(stage)
	return stage
end

local function f_resetCapture()
	matchCapture.rounds = {0, 0}
	matchCapture.capturedRounds = {}
	matchCapture.result = nil
end

-- Reads the engine's exact round win count when this Ikemen build exposes
-- roundswon(). Older builds fall back to the per-round capture above.
local function f_engineRounds(side)
	if type(roundswon) ~= 'function' then
		return nil
	end
	local oldid = id()
	local ret = nil
	if player(side) then
		local ok, value = pcall(roundswon)
		if ok then
			ret = tonumber(value)
		end
	end
	playerid(oldid)
	return ret
end

local function f_captureFinishedMatch()
	if not captureActive then
		return
	end

	-- Capture each completed round only once.
	if roundstate() == 4 and isasserted('over') then
		local rn = roundno()
		if rn ~= nil and rn > 0 and not matchCapture.capturedRounds[rn] then
			local side = winnerteam()
			if side == 1 or side == 2 then
				matchCapture.rounds[side] = matchCapture.rounds[side] + 1
			end
			matchCapture.capturedRounds[rn] = true
		end
	end

	-- global.loop() runs hook.run("loop") before resetMatchData(false), so
	-- winnerteam(), roundswon() and fighttime() are still available here.
	if roundstate() == -1 and matchCapture.result == nil then
		local winnerSide = winnerteam()
		local p1Rounds = f_engineRounds(1) or matchCapture.rounds[1]
		local p2Rounds = f_engineRounds(2) or matchCapture.rounds[2]
		local ticks = tonumber(fighttime()) or 0

		matchCapture.result = {
			winnerSide = winnerSide,
			roundsP1 = math.max(0, tonumber(p1Rounds) or 0),
			roundsP2 = math.max(0, tonumber(p2Rounds) or 0),
			durationTicks = math.max(0, ticks),
			durationSeconds = math.max(0, math.floor(ticks / 60 + 0.5)),
		}
	end
end

-- Register once when the module is loaded. The function is a no-op outside
-- STORM LIVE HARD, so other game modes are untouched.
if hook ~= nil and type(hook.add) == 'function' then
	hook.add('loop', 'mugen_storm_battle_link_v160', f_captureFinishedMatch)
end

local function f_jsonEscape(value)
	local s = tostring(value or '')
	s = s:gsub('\\', '\\\\')
	s = s:gsub('"', '\\"')
	s = s:gsub('\b', '\\b')
	s = s:gsub('\f', '\\f')
	s = s:gsub('\n', '\\n')
	s = s:gsub('\r', '\\r')
	s = s:gsub('\t', '\\t')
	return s
end

local function f_charName(ref, side)
	if start ~= nil and type(start.f_getName) == 'function' then
		local ok, value = pcall(start.f_getName, ref, side)
		if ok and value ~= nil and tostring(value) ~= '' then
			return tostring(value)
		end
	end
	return tostring(ref)
end

local function f_stageName(stage)
	if main ~= nil and main.t_selStages ~= nil and main.t_selStages[stage] ~= nil then
		local data = main.t_selStages[stage]
		if type(data) == 'table' then
			return tostring(data.name or data.displayname or data.def or stage)
		end
	end
	return tostring(stage)
end

local function f_universe(name)
	local s = string.lower(tostring(name or ''))
	if s:find('goku', 1, true) or s:find('vegeta', 1, true) or s:find('piccolo', 1, true) or s:find('freeza', 1, true) or s:find('frieza', 1, true) then
		return 'Dragon Ball'
	elseif s:find('haggar', 1, true) then
		return 'Final Fight'
	end
	return 'Street Fighter'
end

local function f_writeBattleResult(externalId, p1, p2, stage, result, matchCount)
	if result == nil then
		return false
	end

	local p1Name = f_charName(p1, 1)
	local p2Name = f_charName(p2, 2)
	local winnerName = ''
	if result.winnerSide == 1 then
		winnerName = p1Name
	elseif result.winnerSide == 2 then
		winnerName = p2Name
	end

	local filename = STORM_OUTBOX .. '/' .. externalId .. '.json'
	local file, openErr = io.open(filename, 'wb')
	if file == nil then
		print('[MUGEN STORM] Battle Link: nao foi possivel criar ' .. filename .. ': ' .. tostring(openErr))
		print('[MUGEN STORM] Verifique se a pasta STORM_Bridge/outbox existe na raiz do jogo.')
		return false
	end

	local json = string.format(
		'{\n' ..
		'  "external_id": "%s",\n' ..
		'  "fighter1": "%s",\n' ..
		'  "fighter2": "%s",\n' ..
		'  "winner": "%s",\n' ..
		'  "fighter1_universe": "%s",\n' ..
		'  "fighter2_universe": "%s",\n' ..
		'  "stage": "%s",\n' ..
		'  "rounds_p1": %d,\n' ..
		'  "rounds_p2": %d,\n' ..
		'  "duration_seconds": %d,\n' ..
		'  "metadata": {\n' ..
		'    "source": "MUGEN STORM",\n' ..
		'    "mode": "STORM LIVE HARD",\n' ..
		'    "version": "1.6.0",\n' ..
		'    "match_count": %d,\n' ..
		'    "duration_ticks": %d,\n' ..
		'    "p1_ref": "%s",\n' ..
		'    "p2_ref": "%s",\n' ..
		'    "stage_ref": "%s"\n' ..
		'  }\n' ..
		'}\n',
		f_jsonEscape(externalId),
		f_jsonEscape(p1Name),
		f_jsonEscape(p2Name),
		f_jsonEscape(winnerName),
		f_jsonEscape(f_universe(p1Name)),
		f_jsonEscape(f_universe(p2Name)),
		f_jsonEscape(f_stageName(stage)),
		math.floor(result.roundsP1),
		math.floor(result.roundsP2),
		math.floor(result.durationSeconds),
		math.floor(matchCount),
		math.floor(result.durationTicks),
		f_jsonEscape(p1),
		f_jsonEscape(p2),
		f_jsonEscape(stage)
	)

	file:write(json)
	file:flush()
	file:close()

	print(string.format(
		'[MUGEN STORM] Battle Link: resultado salvo | %s %d x %d %s | vencedor=%s | arquivo=%s',
		p1Name,
		result.roundsP1,
		result.roundsP2,
		p2Name,
		winnerName ~= '' and winnerName or 'Empate',
		filename
	))
	return true
end

function infinitewatch.run()
	clearColor(0, 0, 0)
	esc(false)
	setGameMode('watch')
	setHomeTeam(1)
	setAutoLevel(false)

	main.cpuSide = {true, true}
	main.selectMenu = {false, false}
	main.stageMenu = false
	main.versusScreen = false
	main.victoryScreen = false
	main.continueScreen = false
	main.exitSelect = true
	main.lifebar.bars = true
	main.lifebar.p1aiLevel = false
	main.lifebar.p2aiLevel = false
	main.rankDisplay = false

	local previousP1 = nil
	local previousP2 = nil
	local previousStage = nil
	local matchCount = 0
	f_refillCharBag()
	f_refillStageBag()

	while not esc() do
		main.rankDisplay = false
		clearSelected()
		setMatchNo(1)
		setTeamMode(1, 0, 1)
		setTeamMode(2, 0, 1)

		local p1 = f_takeChar(previousP2, previousP1)
		local p2 = nil
		if p1 ~= nil then
			for _ = 1, math.max(1, #main.t_randomChars) do
				local candidate = f_takeChar(p1, previousP2)
				if candidate == nil then
					break
				end
				if not badPairs[f_pairKey(p1, candidate)] then
					p2 = candidate
					break
				end
			end
		end
		if p1 == nil or p2 == nil then
			break
		end

		selectChar(1, p1, getCharRandomPalette(p1))
		selectChar(2, p2, getCharRandomPalette(p2))

		-- Important: CPU control is applied after selection so character loading
		-- cannot reset the requested AI level.
		setCom(1, WATCH_AI_LEVEL)
		setCom(2, WATCH_AI_LEVEL)

		local stage = f_takeStage(previousStage)
		matchCount = matchCount + 1
		local externalId = string.format(
			'storm-%d-%06d-%06d',
			os.time(),
			matchCount,
			math.random(0, 999999)
		)
		print(string.format('[MUGEN STORM] Luta %d | P1=%s | P2=%s | Fase=%s | IA=%d | ID=%s', matchCount, tostring(p1), tostring(p2), tostring(stage), WATCH_AI_LEVEL, externalId))

		-- A Lua/runtime error from one matchup should not necessarily kill a
		-- 24/7 stream. When possible, log it and continue with the next draw.
		f_resetCapture()
		captureActive = true
		local ok, err = pcall(function()
			start.f_setMusic(stage)
			loadStart()
			game()
		end)
		captureActive = false

		if not ok then
			local key = f_pairKey(p1, p2)
			badPairs[key] = true
			print('[MUGEN STORM] Erro recuperavel na luta: ' .. tostring(err))
			print('[MUGEN STORM] Matchup bloqueado nesta sessao: ' .. key)
		elseif matchCapture.result ~= nil then
			local exportOk, exportErr = pcall(f_writeBattleResult, externalId, p1, p2, stage, matchCapture.result, matchCount)
			if not exportOk then
				print('[MUGEN STORM] Battle Link: erro recuperavel ao exportar resultado: ' .. tostring(exportErr))
			end
		else
			-- This normally means the match was aborted (for example with Esc).
			-- Aborted matches are intentionally not sent to the league.
			print('[MUGEN STORM] Battle Link: luta sem resultado final; registro ignorado.')
		end
		clearColor(0, 0, 0)

		if esc() then
			break
		end

		previousP1 = p1
		previousP2 = p2
		previousStage = stage
		refresh()
	end

	captureActive = false
	clearSelected()
	main.rankDisplay = false
	esc(false)
	main.f_bgReset(motif[main.background].bg)
	main.f_fadeReset('fadein', motif[main.group])
	main.f_playBGM(true, motif.music.title_bgm, motif.music.title_bgm_loop, motif.music.title_bgm_volume, motif.music.title_bgm_loopstart, motif.music.title_bgm_loopend)
end

return infinitewatch
