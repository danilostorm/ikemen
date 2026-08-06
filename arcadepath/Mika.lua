--------------------------------------------
-- MIKA ARCADE PATH
--------------------------------------------
    local match1234characters = {"SFZ_Dan", "SFZ_Adon", "SFZ_Bison", "SFZ_DJ", "SFZ_Guy", "SFZ_Birdie", "SFZ_Balrog", "SFZ_Cammy", "SFZ_Ken"}
    local match5characters = {"SFZ_Karin"}
	local match6characters = {"SFZ_Honda", "SFZ_Sagat", "SFZ_ChunLi-X"}
    local match7characters = {"SFZ_T-Hawk", "SFZ_Blanka", "SFZ_Gen-X"}
    local match8characters = {"chars/SFZ_Sakura/SFZ_Sakura_CPU"}	
	local match9characters = {"SFZ_FeiLong"}
	local match10characters = {"SFZ_Vega"}

	launchStoryboard('data/Intros/Intro_Mika.def')
	launchStoryboard('data/Intros/Intro_Mika2.def')
	
	local usedCharacters = {}
	
	local function selectRandomCharacter()
    local remainingCharacters = {}
    
    -- Create a table of remaining characters not yet used
    for _, char in ipairs(match1234characters) do
        if not usedCharacters[char] then
            table.insert(remainingCharacters, char)
        end
    end
    
    if #remainingCharacters == 0 then
        -- All characters have been used, reset the usedCharacters table
        for _, char in ipairs(match1234characters) do
            usedCharacters[char] = nil
        end
        return math.random(1, #match1234characters)  -- Select from all characters if none remaining
    end
    
    local randomIndex = math.random(1, #remainingCharacters)
    local selectedCharacter = remainingCharacters[randomIndex]
    usedCharacters[selectedCharacter] = true
    return selectedCharacter
end

-- MATCHES 1 to 4
for match = 1, 4 do
    if matchno() == match then
        local selectedChar = selectRandomCharacter()
        local ok = launchFight{
            p2char = {selectedChar},
            p2numchars = 1,
            p2teammode = "single",
        }

        if not ok then return end
    end
end


--MATCH 5 MID BOSS
if matchno() == 5 then
    local randomIndex = math.random(1, #match5characters)   
    local ok = launchFight{
        p2char = {match5characters[randomIndex]},     
        p2numchars = 1,
        p2teammode = "single",
		stage = "stages/_Boss-Karin.def"
    }
    
    if not ok then return end
end



-- MATCH 6
if matchno() == 6 then
    local randomIndex = math.random(1, #match6characters)  
    local ok = launchFight{
        p2char = {match6characters[randomIndex]},     
        p2numchars = 1,
        p2teammode = "single",
    }
    
    if not ok then return end
end



--MATCH 7
if matchno() == 7 then
    local randomIndex = math.random(1, #match7characters)
    
    local ok = launchFight{
        p2char = {match7characters[randomIndex]},     
        p2numchars = 1,
        p2teammode = "single",
    }
    
    if not ok then return end
end



--MATCH 8
if matchno() == 8 then
    local randomIndex = math.random(1, #match8characters)  
    local ok = launchFight{
        p2char = {match8characters[randomIndex]},     
        p2numchars = 1,
        p2teammode = "single",
		stage = "stages/Sakura2.def"
    }
    
    if not ok then return end
end



--MATCH 9 PRE BOSS
if matchno() == 9 then
    local randomIndex = math.random(1, #match9characters)   
    local ok = launchFight{
        p2char = {match9characters[randomIndex]},     
        p2numchars = 1,
        p2teammode = "single",
    }
    
    if not ok then return end
end



-- MATCH 10 MAIN BOSS
if matchno() == 10 then
    local randomIndex = math.random(1, #match10characters)   
    local ok = launchFight{
        p2char = {match10characters[randomIndex]},     
        p2numchars = 1,
        p2teammode = "single",
		stage = "stages/_Boss-Vega.def"
    }
    
    if not ok then return end
end


launchStoryboard('data/Storyboards/Credits.def')
launchStoryboard('data/Storyboards/Over.def')
setMatchNo(-1)