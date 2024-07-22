local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "PooHax | Prison Life",
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
local Section = Tab:CreateSection("Teleports")
Section:Set("Teleports")

local Button = Tab:CreateButton({
   Name = "Criminal Base",
   Callback = function(crimBase)
   crimBase = loadstring(game:HttpGet("https://raw.githubusercontent.com/hezzexx/Actually-PooHax/main/Games/Prison%20Life/crimBase.lua",true))()
   
   end,
})

local Button = Tab:CreateButton({
   Name = "Armory",
   Callback = function(tpArmory)
   tpArmory = loadstring(game:HttpGet("https://raw.githubusercontent.com/hezzexx/Actually-PooHax/main/Games/Prison%20Life/tpArmory.lua",true))()
   
   end,
})

local Button = Tab:CreateButton({
   Name = "Prison",
   Callback = function(teleportPrison)
   teleportPrison = loadstring(game:HttpGet("https://raw.githubusercontent.com/hezzexx/Actually-PooHax/main/Games/Prison%20Life/teleportPrison.lua",true))()
   
   end,
})

local Section = Tab:CreateSection("idk what to call this yet")
Section:Set("idk what to call this yet")

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

Rayfield:Notify({
   Title = "Very Unfinished!!",
   Content = "This is more of like a test than an actual functional product",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { 
      Ignore = {
         Name = "ok brah",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})
