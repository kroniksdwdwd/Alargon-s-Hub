
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("alargon's hub I Universal", "RJTheme5")

local Tab = Window:NewTab("Humanoid")

local Section = Tab:NewSection("Movement")

Section:NewSlider("Speed", "Just speeds up the player", 500, 16, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewTextBox("Speed", "Ez", function(txt)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)

Section:NewSlider("Jump", "Simply increases the player's jumppower", 500, 50, function(j) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
end)

Section:NewTextBox("JumpPower", "Ez", function(txc)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = txc
end)

Section:NewSlider("Gravity", "Simply increases the player's gravity", 0, 300, function(g) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Workspace.Gravity = g
end)

Section:NewTextBox("Gravity", "Ez", function(txa)
	game.Workspace.Gravity = txa
end)

Section:NewButton("FlyGUI (for mobile and pc)", "This is not my fly gui", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)

Section:NewButton("Infinity Jump", "Jump forever", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/kroniksdwdwd/Kron-Hub/refs/heads/main/dadawdadsssss22"))()
end)

Section:NewButton("Noclip", "Allows you to pass through walls and more", function()
	 local Noclip = nil
	local Clip = nil

	function noclip()
		Clip = false
		local function Nocl()
			if Clip == false and game.Players.LocalPlayer.Character ~= nil then
				for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
						v.CanCollide = false
					end
				end
			end
			wait(0.21) -- basic optimization
		end
		Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
	end

	function clip()
		if Noclip then Noclip:Disconnect() end
		Clip = true
	end

	noclip() -- to toggle noclip() and clip()
end)

local Section = Tab:NewSection("Others")

Section:NewButton("Teleport Tool", "When you take the teleport object in your hands, where you press there you teleport", function()
	mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Equip to Click TP"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end)

Section:NewButton("ServerHop", "Just join to smallest server", function()
	local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"
 
local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end
 
local Server, Next; repeat
   local Servers = ListServers(Next)
   Server = Servers.data[1]
   Next = Servers.nextPageCursor
until Server
 
TPS:TeleportToPlaceInstance(_place,Server.id,game:GetService('Players').LocalPlayer)
end)

local Tab = Window:NewTab("Troll")

local Section = Tab:NewSection("Trolling Peoples FE")

Section:NewButton("Fling all", "Kill all", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)

Section:NewButton("Invisible [E]", "Press E button to invisible", function()
	loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-fe-invisible-4366"))()
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

Section:NewToggle("Fullbright", "Always night", function()
	if not _G.FullBrightExecuted then

	_G.FullBrightEnabled = false

	_G.NormalLightingSettings = {
		Brightness = game:GetService("Lighting").Brightness,
		ClockTime = game:GetService("Lighting").ClockTime,
		FogEnd = game:GetService("Lighting").FogEnd,
		GlobalShadows = game:GetService("Lighting").GlobalShadows,
		Ambient = game:GetService("Lighting").Ambient
	}

	game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
		if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
			_G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Brightness = 1
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
		if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
			_G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").ClockTime = 12
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
		if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
			_G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").FogEnd = 786543
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
			_G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").GlobalShadows = false
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
		if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
			_G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		end
	end)

	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 786543
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

	local LatestValue = true
	spawn(function()
		repeat
			wait()
		until _G.FullBrightEnabled
		while wait() do
			if _G.FullBrightEnabled ~= LatestValue then
				if not _G.FullBrightEnabled then
					game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
					game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
					game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
					game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
					game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
				else
					game:GetService("Lighting").Brightness = 1
					game:GetService("Lighting").ClockTime = 12
					game:GetService("Lighting").FogEnd = 786543
					game:GetService("Lighting").GlobalShadows = false
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
				LatestValue = not LatestValue
			end
		end
	end)
end

_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled
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
