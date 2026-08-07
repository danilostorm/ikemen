-- MUGEN STORM - INFINITE BATTLE ARENA
-- Continuous CPU vs CPU watch mode optimized for long livestreams.
-- Uses shuffled character and stage bags to reduce repeats and fixed maximum AI.
-- Press Esc at any time to return to the title menu.
local infinitewatch = {}

package.loaded['external.script.infinitewatch'] = infinitewatch

-- Ikemen AILevel ranges from 1 to 8. Livestream Watch always uses max AI.
local WATCH_AI_LEVEL = 8

-- Shuffle-bag rotation: every registered random character is used before
-- the roster is shuffled again (apart from the unavoidable cycle boundary).
local charBag = {}
local charBagPos = 1
local stageBag = {}
local stageBagPos = 1
local badPairs = {}

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
		print(string.format('[MUGEN STORM] Luta %d | P1=%s | P2=%s | Fase=%s | IA=%d', matchCount, tostring(p1), tostring(p2), tostring(stage), WATCH_AI_LEVEL))

		-- A Lua/runtime error from one matchup should not necessarily kill a
		-- 24/7 stream. When possible, log it and continue with the next draw.
		local ok, err = pcall(function()
			start.f_setMusic(stage)
			loadStart()
			game()
		end)
		if not ok then
			local key = f_pairKey(p1, p2)
			badPairs[key] = true
			print('[MUGEN STORM] Erro recuperavel na luta: ' .. tostring(err))
			print('[MUGEN STORM] Matchup bloqueado nesta sessao: ' .. key)
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

	clearSelected()
	main.rankDisplay = false
	esc(false)
	main.f_bgReset(motif[main.background].bg)
	main.f_fadeReset('fadein', motif[main.group])
	main.f_playBGM(true, motif.music.title_bgm, motif.music.title_bgm_loop, motif.music.title_bgm_volume, motif.music.title_bgm_loopstart, motif.music.title_bgm_loopend)
end

return infinitewatch
