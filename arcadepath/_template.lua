--------------------------------------------
-- ... ARCADE PATH
--------------------------------------------
    local match1234characters = {"SFZ_", "SFZ_", "SFZ_"}
    local match5characters = {"SFZ_"}
	local match6characters = {"SFZ_", "SFZ_"}
    local match7characters = {"SFZ_", "SFZ_"}
    local match8characters = {"SFZ_"}	
	local match9characters = {"SFZ_"}
	local match10characters = {"SFZ_"}

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
        local stage = nil  -- Initialize stage variable

        -- Check if the selected character is Ryu and set the stage accordingly
        if selectedChar == "Ryu" then
            stage = "Suzaku Castle"
        else
            -- For characters other than Ryu, use the randomized option from select.def
            stage = nil  -- You can replace this with your logic to get the randomized stage
        end

        local ok = launchFight{
            p2char = {selectedChar},
            p2numchars = 1,
            p2teammode = "single",
            stage = stage,  -- Pass the stage information to launchFight
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
    }
    
    if not ok then return end
end


launchStoryboard('chars/Ken/sfa2_stuffroll.def')
setMatchNo(-1)