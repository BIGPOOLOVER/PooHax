-- yeah im gonna be honest this is all skidded i have no idea what to do

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local req = http_request or request or syn.request

local response = req({
    Url = "https://raw.githubusercontent.com/BIGPOOLOVER/PooHax/main/Games/" .. game.PlaceId .. ".lua",
    Method = "GET"
})

if response.Body ~= "404: Not Found" then
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 2, true, nil, 0)
        wait(1)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 2, false, nil, 0)
    end)

    loadstring(response.Body)()
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "ermmm..",
        Text = "brah wtf brah there no script for this game brah",
        Duration = 5
    })

    return
end
