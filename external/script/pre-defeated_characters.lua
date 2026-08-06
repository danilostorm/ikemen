--;===========================================================
--; PREVIOUSLY DEFEATED CHARACTERS LIST
--;===========================================================

--This is an ongoing process to create a defeated characters table inside the victory screen to make it look more like the match map screen from SFA2. 
-- IF you have any suggestions, please feel free to contact me from this topic:
-- https://mugenguild.com/forum/topics/street-fighter-alpha-zero-agent-ed-198589.new.html#new

-- by Agent Ed 2024

--;===========================================================
--; pre-defeated_characters.lua MOD
--;===========================================================
-- Initialize the defeated characters table
defeatedCharacters = {}

-- Function to add defeated characters
function addDefeatedCharacter(characterName, palette)
    table.insert(defeatedCharacters, {name = characterName, palette = palette})
end

-- Function to get defeated character information
function getDefeatedCharacterInfo(playerIndex)
    if defeatedCharacters[playerIndex] then
        return defeatedCharacters[playerIndex].name, defeatedCharacters[playerIndex].palette
    end
    return nil, nil
end

--;===========================================================
--; start.lua
--;===========================================================

--Inside start.f_SaveData

if winnerteam() == 1 and t_gameStats.p2selected then
    for _, v in ipairs(t_gameStats.p2selected) do
        addDefeatedCharacter(start.f_getCharData(v.ref).char, v.pal)
    end
elseif winnerteam() == 2 and t_gameStats.p1selected then
    for _, v in ipairs(t_gameStats.p1selected) do
        addDefeatedCharacter(start.f_getCharData(v.ref).char, v.pal)
    end
end

-- OPTION 1) Inside start.f_victory function:

for i, character in ipairs(defeatedCharacters) do
    local txt_defeated = main.f_createTextImg(
        motif.victory_screen, 
        'defeated', 
        {font = {motif.system.font3[1], motif.system.font3[2], motif.system.font3[3]}}
    )
    txt_defeated:update({
        text = character.name,
        x = motif.victory_screen.winquote_offset[1] + i * motif.victory_screen.winquote_spacing[1],
        y = motif.victory_screen.winquote_offset[2] + i * motif.victory_screen.winquote_spacing[2]
    })
    txt_defeated:draw()
end

-- OPTION2) Create an individual function for displaying
function drawDefeatedCharacters()
    for i, character in ipairs(defeatedCharacters) do
	local fontName = "sfzbigname.fnt" -- Change this to the name of your custom font (without the .fnt extension)
    local fontSize = 12 -- Adjust the font size as needed
    local offsetX = 5 -- Adjust the X offset as needed
    local offsetY = 197

         for i, character in ipairs(defeatedCharacters) do
        -- Draw each defeated character on the screen using the custom font
        t_defeatedCharactersText[i]:draw(
            offsetX,
            offsetY + (i - 1) * 20,
            character.name,
            255,
            255,
            255,
            fontName,
            fontSize
        )
        drawText(
            offsetX,
            offsetY + (i - 1) * 20 + 20,
            "Palette: " .. character.palette,
            255,
            255,
            255,
            fontName,
            fontSize
        )
    end
	end
end

-- OPTION 3) Use function getDefeatedCharacterInfo

for i = 1,  do
        local name, palette = getDefeatedCharacterInfo(i)

        -- Check if the defeated character information is available
        if name and palette then
            addDefeatedCharacter(name, palette)
        end
    end
	
--;===========================================================
--; motif.lua and system.def (IF FOR OPTION 1)
--;===========================================================

-- 		defeated_font = {-1, 0, 1, 255, 255, 255, -1},
--		defeated_offset = {20, 192}, 