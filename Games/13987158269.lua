-- looking for the actual PooHax code?: https://github.com/BIGPOOLOVER/Actually-PooHax
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "PooHax | Impossible Squid Game! Glass Bridge!",
   LoadingTitle = "PooHax",
   LoadingSubtitle = "'brah wtf brah' - big poo",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, 
      FileName = "PooHax"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", 
      RememberJoins = true
   },
   KeySystem = false, 
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true, 
      GrabKeyFromSite = false, 
      Key = {"Hello"} 
   }
})

local Tab = Window:CreateTab("Main", 4483362458)
local Section = Tab:CreateSection("Automation")

local Toggle = Tab:CreateToggle({
   Name = "Auto-Farm (Glass Bridge)",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
   Value = loadstring(game:HttpGet("https://raw.githubusercontent.com/BIGPOOLOVER/Actually-PooHax/main/Games/Squid%20Game%20Glass%20Bridge/glassBridge.lua",true))()
   
   end,
})

local Section = Tab:CreateSection("Extras")

local Slider = Tab:CreateSlider({
   Name = "WalkSpeed",
   Range = {0, 100},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", 
   Callback = function(Value)
   while true do
       task.wait(nil)
	   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end
   
   end,
})

local Button = Tab:CreateButton({
   Name = "Infinite Jump",
   Callback = function(infJump)
   infJump = loadstring(game:HttpGet("https://raw.githubusercontent.com/BIGPOOLOVER/Actually-PooHax/main/General/infJump.lua",true))()

   end,
})

local Button = Tab:CreateButton({
   Name = "Teleport to VIP Area",
   Callback = function(vipArea)
   vipArea = loadstring(game:HttpGet("https://raw.githubusercontent.com/BIGPOOLOVER/Actually-PooHax/main/Games/Squid%20Game%20Glass%20Bridge/vipArea.lua",true))()

   end,
})

local Button = Tab:CreateButton({
   Name = "Remove VIP Doors",
   Callback = function(removeVIP)
   removeVIP = workspace.VIP.VipDoor:Destroy()
   
   end,
})
