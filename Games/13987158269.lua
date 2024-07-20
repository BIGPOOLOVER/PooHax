local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "PooHax",
   LoadingTitle = "PooHax",
   LoadingSubtitle = "'brah wtf brah' - big poo",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, 
      FileName = "Big Hub"
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

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Farms")
Section:Set("Farms")

local Toggle = Tab:CreateToggle({
   Name = "Auto-Farm (Glass Bridge)",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(GlassBridgeFarm)
   local GlassBridge
if game.PlaceId == 13987158269 then
end
    while true do
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-738, 73, -549)
pl.CFrame = location
wait(4)
    endFarm = true
    end


   end,
})

Toggle:Set(false)
