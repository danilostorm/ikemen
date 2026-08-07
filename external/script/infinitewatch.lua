-- Continuous CPU vs CPU watch mode optimized for long livestreams.
-- Uses a shuffled roster bag to reduce repeats and fixed maximum AI.
-- Press Esc at any time to return to the title menu.
local infinitewatch = {}

package.loaded['external.script.infinitewatch'] = infinitewatch

-- Ikemen AILevel ranges from 1 to 8. Livestream Watch always uses max AI.
local WATCH_AI_LEVEL = 8

-- Shuffle-bag rotation: every registered random character is used before
-- the roster is shuffled again (apart from the unavoidable cycle boundary).
local charBag = {}
local charBagPos = 1

local function f_shuffle(t)
	for i = #t, 2, -1 do
		local j = math.random(i)
		t[i], t[j] = t[j], t[i]
	end
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

local function f_randomStage(previous)
	local stage = start.f_setStage()
	if previous == nil or #main.t_includeStage[1] <= 1 then
		return stage
	end
	for _ = 1, 16 do
		if stage ~= previous then
			break
		end
		stage = start.f_setStage()
	end
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

	while not esc() do
		main.rankDisplay = false
		clearSelected()
		setMatchNo(1)
		setTeamMode(1, 0, 1)
		setTeamMode(2, 0, 1)

		local p1 = f_takeChar(previousP2, previousP1)
		local p2 = f_takeChar(p1, previousP2)
		if p1 == nil or p2 == nil then
			break
		end

		selectChar(1, p1, getCharRandomPalette(p1))
		selectChar(2, p2, getCharRandomPalette(p2))

		-- Important: CPU control is applied after selection so character loading
		-- cannot reset the requested AI level.
		setCom(1, WATCH_AI_LEVEL)
		setCom(2, WATCH_AI_LEVEL)

		local stage = f_randomStage(previousStage)
		matchCount = matchCount + 1
		print(string.format('[Infinite Watch] Match %d | P1=%s | P2=%s | AI=%d', matchCount, tostring(p1), tostring(p2), WATCH_AI_LEVEL))

		-- A Lua/runtime error from one matchup should not necessarily kill a
		-- 24/7 stream. When possible, log it and continue with the next draw.
		local ok, err = pcall(function()
			start.f_setMusic(stage)
			loadStart()
			game()
		end)
		if not ok then
			print('[Infinite Watch] Match error: ' .. tostring(err))
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
