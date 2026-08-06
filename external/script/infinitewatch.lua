-- Continuous CPU vs CPU watch mode.
-- Randomizes both fighters and the stage after each completed match.
-- Press Esc at any time to return to the title menu.
local infinitewatch = {}

-- Replace the temporary require sentinel immediately. This prevents the engine
-- from reporting "loop or previous error loading module" when main.lua is
-- reloaded after a completed match.
package.loaded['external.script.infinitewatch'] = infinitewatch

local function f_aiLevel()
	local level = tonumber(config.Difficulty) or 8
	return math.max(1, math.min(8, level))
end

local function f_randomChar(excluded, previous)
	if #main.t_randomChars == 0 then
		return nil
	end
	local candidate = main.t_randomChars[math.random(1, #main.t_randomChars)]
	if #main.t_randomChars == 1 then
		return candidate
	end
	for _ = 1, 32 do
		candidate = main.t_randomChars[math.random(1, #main.t_randomChars)]
		if candidate ~= excluded and candidate ~= previous then
			return candidate
		end
	end
	if candidate == excluded then
		for _, ref in ipairs(main.t_randomChars) do
			if ref ~= excluded then
				return ref
			end
		end
	end
	return candidate
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

	local aiLevel = f_aiLevel()
	local previousP1 = nil
	local previousP2 = nil
	local previousStage = nil

	while not esc() do
		clearSelected()
		setMatchNo(1)
		setTeamMode(1, 0, 1)
		setTeamMode(2, 0, 1)
		setCom(1, aiLevel)
		setCom(2, aiLevel)

		local p1 = f_randomChar(previousP2, previousP1)
		local p2 = f_randomChar(p1, previousP2)
		if p1 == nil or p2 == nil then
			break
		end

		selectChar(1, p1, getCharRandomPalette(p1))
		selectChar(2, p2, getCharRandomPalette(p2))

		local stage = f_randomStage(previousStage)
		start.f_setMusic(stage)
		loadStart()
		game()
		clearColor(0, 0, 0)

		-- endMatch() is also used after a normally completed match. Only Esc
		-- should leave the infinite loop.
		if esc() then
			break
		end

		previousP1 = p1
		previousP2 = p2
		previousStage = stage
		refresh()
	end

	clearSelected()
	esc(false)
	main.f_bgReset(motif[main.background].bg)
	main.f_fadeReset('fadein', motif[main.group])
	main.f_playBGM(true, motif.music.title_bgm, motif.music.title_bgm_loop, motif.music.title_bgm_volume, motif.music.title_bgm_loopstart, motif.music.title_bgm_loopend)
end

return infinitewatch
