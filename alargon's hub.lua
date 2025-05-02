
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/kroniksdwdwd/Kron-Hub/refs/heads/main/library"))()

local Window = Library.CreateLib("alargon's hub", "RJTheme5")

print "Alargon's Hub executed!"





local Tab = Window:NewTab("Troll")

local Section = Tab:NewSection("Trolling Peoples FE")

Section:NewButton("Fling all", "Kill all", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)



local Tab = Window:NewTab("World")

local Section = Tab:NewSection("WorldClientSide")

Section:NewButton("Day", "Always day", function()
	game.Lighting.ClockTime = 14
	game.Lighting.TimeOfDay = 14
end)

Section:NewButton("Night", "Always night", function()
	game.Lighting.ClockTime = 0
	game.Lighting.TimeOfDay = 0
end)

Section:NewButton("RemoveFog", "Removing rog(more fps)", function()
	game.Lighting.FogStart = 10000000000000
end)

Section:NewButton("RemoveTextures", "Removing textures(more fps)", function()
	for i,v in next, (workspace:GetDescendants()) do
 if v:IsA("Part") then v.Material = Enum.Material.SmoothPlastic
 end
 end
end)

Section:NewToggle("Remove Shadows", "Removing shadows(more fps)", function(state)
    if state then
		game.Lighting.GlobalShadows = off
    else
        game.Lighting.GlobalShadows = on
    end
end)

local Section = Tab:NewSection("Esp")

Section:NewDropdown("HighLight Esp (To switch the color,click: disable esp)", "Just a wallhack (To switch the color,click: disable esp)", {"🔴Red Color (To switch the color,click: disable esp)", "🟢Green Color (To switch the color,click: disable esp)", "🔵Blue Color (To switch the color,click: disable esp)", "Disable ESP"}, function(asd)
    if asd == "🔴Red Color (To switch the color,click: disable esp)" then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/kroniksdwdwd/Kron-Hub/refs/heads/main/red"))()
elseif asd == "🟢Green Color (To switch the color,click: disable esp)" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/kroniksdwdwd/Kron-Hub/refs/heads/main/green"))()
elseif asd == "🔵Blue Color (To switch the color,click: disable esp)" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/kroniksdwdwd/Kron-Hub/refs/heads/main/blue"))()
elseif asd == "Disable ESP" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/kroniksdwdwd/Kron-Hub/refs/heads/main/disable%20esp"))()
end
end)




local Scripts = Window:NewTab("Scripts")
local Section = Scripts:NewSection("Popular Scripts")
local Section = Scripts:NewSection("you can send me the script in discord - danielkochivnikov")
local Section = Scripts:NewSection("and I will add your script here!")

Section:NewButton("Infinite Yield", "Execute a script", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

Section:NewButton("Dex", "Execute a script", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)


local Tab = Window:NewTab("Credits")

local Section = Tab:NewSection("Owner - Alargon's Scripts (yt)")

local Section = Tab:NewSection("Discord - discord.gg/SbkqJ8VjFb")
