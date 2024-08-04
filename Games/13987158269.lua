warn('Auto-Farm NOT Working')

local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/bruvzz/ducklibrary/main/src.lua")()

local Win = lib:Window("PooHax | Impossible Squid Game! Glass Bridge!", Color3.fromRGB(225, 45, 45), Enum.KeyCode)

local Tab_1 = Win:Tab('Local')
Tab_1:Button('Remove VIP Doors', function()

    workspace.VIP.VipDoor:Destroy()

end)

Tab_1:Button('Infinite Jump', function()

    local infJump = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if infJump then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

end)

Tab_1:Slider('Walkspeed', 0, 500, 100, function(value)

    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)

end)

local Tab_2 = Win:Tab('Teleports')
Tab_2:Button('Teleport to VIP Area', function()

    local player = game.Players.LocalPlayer.Character.HumanoidRootPart
local vipArea = CFrame.new(-752, -3, 815)
player.CFrame = vipArea

end)

Tab_2:Button('Teleport to Obbies', function()

    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-738, -2, 960)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
pl.CFrame = location

end)

Tab_2:Button('Teleport to Spawn', function()

    local player = game.Players.LocalPlayer.Character.HumanoidRootPart
local Spawn = CFrame.new(-748, -2, 770)
player.CFrame = Spawn

end)

local Tab_3 = Win:Tab('Farms')
Tab_3:Toggle('Auto-Farm (Glass Bridge)', false, function(value) -- (text, default, callback) --

    while true do
    local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
    local autofarmgb = CFrame.new(-738, 73, -549)
    plr.CFrame = autofarmgb
    wait(4)
    print(value)
    if false then
        break
    end
end
print(value)

end)

