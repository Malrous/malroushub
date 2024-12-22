print("loaded loadstring | MalrousHub")

local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local root = plr.Character.HumanoidRootPart
local hum = plr.Character:FindFirstChildOfClass('Humanoid')
local cframe = root.CFrame
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local VirtualUser = game:GetService("VirtualUser")

--Functions--
local function clearinv()
   for i = 1, 100 do
      local toolDetected = plr.Backpack:FindFirstChildOfClass("Tool")
      if toolDetected then
      toolDetected:Destroy()
      end
   end
   local toolDetected = plr.Character:FindFirstChildOfClass("Tool")
   if toolDetected then
      toolDetected:Destroy()
   end
end

local function voidblock()
for i = 1, Text do
   for i = 1, 3 do
      game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
   end
   game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
   game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
end
end

local function hitbox(hb)

   _G.HeadSize = hb
   _G.Disabled = true
   
   game:GetService('RunService').RenderStepped:connect(function()
   if _G.Disabled then
   for i,v in next, game:GetService('Players'):GetPlayers() do
   if v.Name ~= game:GetService('Players').LocalPlayer.Name then
   pcall(function()
   v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
   v.Character.HumanoidRootPart.Transparency = 0.7
   v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
   v.Character.HumanoidRootPart.Material = "Neon"
   v.Character.HumanoidRootPart.CanCollide = false
   end)
   end
   end
   end
   end)

end

local function invishitbox()

   _G.HeadSize = 1
   _G.Disabled = true
   
   game:GetService('RunService').RenderStepped:connect(function()
   if _G.Disabled then
   for i,v in next, game:GetService('Players'):GetPlayers() do
   if v.Name ~= game:GetService('Players').LocalPlayer.Name then
   pcall(function()
   v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
   v.Character.HumanoidRootPart.Transparency = 1
   v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
   v.Character.HumanoidRootPart.Material = "Neon"
   v.Character.HumanoidRootPart.CanCollide = false
   end)
   end
   end
   end
   end)

end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

if game.PlaceId == 662417684 then
   print("MalrousHub - Lucky Blocks Battlegrounds")
else
   Rayfield:Destroy()
end

local Window = Rayfield:CreateWindow({
    Name = "Lucky Blocks Battlegrounds - MalrousHub",
    LoadingTitle = "Malrous Hub",
    LoadingSubtitle = "by Malrous",
    Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = true,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local Home = Window:CreateTab("Home", 4483362458) -- Title, Image

 local Paragraph = Home:CreateParagraph({Title = "Information", Content = "This is actually better than most of the scripts online"})

 local LB = Window:CreateTab("Lucky Blocks", 4483362458) -- Title, Image

 local Section = LB:CreateSection("Lucky Blocks")

 local Input = LB:CreateInput({
   Name = "Give Lucky Block(s)",
   CurrentValue = "",
   PlaceholderText = "Number",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   for i = 1, Text do
      game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
   end
   end,
})

local Input = LB:CreateInput({
   Name = "Give Super Block(s)",
   CurrentValue = "",
   PlaceholderText = "Number",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   for i = 1, Text do
      game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
   end
   end,
})

local Input = LB:CreateInput({
   Name = "Give Diamond Block(s)",
   CurrentValue = "",
   PlaceholderText = "Number",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   for i = 1, Text do
      game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
   end
   end,
})

local Input = LB:CreateInput({
   Name = "Give Rainbow Block(s)",
   CurrentValue = "",
   PlaceholderText = "Number",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   for i = 1, Text do
      game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
   end
   end,
})

local Input = LB:CreateInput({
   Name = "Give Galaxy Block(s)",
   CurrentValue = "",
   PlaceholderText = "Number",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   for i = 1, Text do
      game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
   end
   end,
})

local Input = LB:CreateInput({
   Name = "Give Void Block(s) (may take long to load in multiple blocks)",
   CurrentValue = "",
   PlaceholderText = "Number",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
   for i = 1, Text do
      for i = 1, 5 do
         game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
         game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
      end
   end
   end,
})

local Section = LB:CreateSection("Messing")

local Button = LB:CreateButton({
   Name = "Fill Inventory with Gears",
   Callback = function()
   for i = 1, 50 do
      game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
   end
   end,
})

local Button = LB:CreateButton({
   Name = "Clear Inventory",
   Callback = function()
   clearinv()
   end,
})

local GM = Window:CreateTab("Game Modes", 4483362458) -- Title, Image

local Paragraph = GM:CreateParagraph({Title = "Game Modes", Content = "This is a list of gamemodes i have made. Executing multiple times could cause in an error"})

local Button = GM:CreateButton({
   Name = "Super Easy Mode",
   Callback = function()
   for i = 1, 50 do
      game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
   end
   hitbox(15)
   if hum.Health == 0 then
      hitbox(1)
      invishb()
   end
   end,
})

local Paragraph = GM:CreateParagraph({Title = "Info: Super Easy Mode", Content = "This gamemode fills up your inventory with gears and increases every players hitbox and make it visible. Die to disable Super Easy Mode"})

local Button = GM:CreateButton({
   Name = "Hard Mode",
   Callback = function()
   hum.Health = 50
   game.Lighting.ClockTime = 21
   if hum.Health == 0 then
      game.Lighting.ClockTime = 9
   end
   end,
})

local Paragraph = GM:CreateParagraph({Title = "Info: Hard Mode", Content = "This gamemode sets the time to night (to make you harder to view players) and sets your hp to 50. Die to disable Hard Mode"})

local Button = GM:CreateButton({
   Name = "Super Hardcore Mode",
   Callback = function()
   hum.Health = 0.01
   game.Lighting.ClockTime = 21
   repeat
      clearinv()
      wait()
   until hum.Health == 0
   if hum.Health == 0 then
      game.Lighting.ClockTime = 9
   end
   end,
})

local Paragraph = GM:CreateParagraph({Title = "Info: Super Hardcore Mode", Content = "This gamemode deletes ALL gear from your inventory, sets the time to night and sets your hp to 0.01. SURVIVE"})

local Button = GM:CreateButton({
   Name = "One Session Mode",
   Callback = function()
   hum.Health = 0.01
while wait() do
   if hum.Health == 0 then
      plr:Kick("You died while playing One Session mode | MalrousHub")
      wait(1)
      game:Shutdown()
   end
end
   end,
})

local Paragraph = GM:CreateParagraph({Title = "Info: One Session Mode", Content = "This gamemode is harder than Super Hardcore. Why? You only have one session to play at 0.01 HP. If you die, you will force-leave of the game"})

local LP = Window:CreateTab("LocalPlayer", 4483362458) -- Title, Image

local Slider = LP:CreateSlider({
   Name = "WalkSpeed",
   Range = {0, 500},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   hum.WalkSpeed = Value
   end,
})

local Slider = LP:CreateSlider({
   Name = "JumpPower",
   Range = {0, 500},
   Increment = 10,
   Suffix = "Power",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   hum.JumpPower = Value
   end,
})

local Slider = LP:CreateSlider({
   Name = "Gravity",
   Range = {0, 500},
   Increment = 10,
   Suffix = "Power",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   workspace.Gravity = Value
   end,
})

local Gear = Window:CreateTab("Gear Giver", 4483362458) -- Title, Image

local Paragraph = Gear:CreateParagraph({Title = "WIP", Content = "This is a work in progress tab. It is useless for now but soon it will be overpowered"})

local Misc = Window:CreateTab("Miscellaneous", 4483362458) -- Title, Image

local Button = Misc:CreateButton({
   Name = "Teleport Tool",
   Callback = function()
      mouse = game.Players.LocalPlayer:GetMouse()
      tool = Instance.new("Tool")
      tool.RequiresHandle = false
      tool.Name = "Teleport Tool"
      tool.Activated:connect(function()
      local pos = mouse.Hit+Vector3.new(0,2.5,0)
      pos = CFrame.new(pos.X,pos.Y,pos.Z)
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
      end)
      tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Button = Misc:CreateButton({
   Name = "Kick Yourself",
   Callback = function()
      plr:Kick("Player kicked | MalrousHub")
   end,
})

local Button = Misc:CreateButton({
   Name = "Crash Roblox Client",
   Callback = function()
      local crashMessage = Instance.new("Message")
    crashMessage.Parent = game:GetService("CoreGui")
    crashMessage.Text = "Crashing your roblox client in 3 seconds..."
    wait(3)
      while true do
         print("Crashed")
      end
   end,
})
