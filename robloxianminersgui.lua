local Library = loadstring(game:HttpGet("https://pastebin.com/raw/edJT9EGX", true))()
local Window = Library:CreateWindow"OP GUI"
Window:AddFolder"Features"
Window:AddButton({text = "Teleport", flag = "e", callback = function() 
for i,v in pairs(workspace:GetChildren()) do
if v.Name == "ResearchCrate" or v.Name == "CandyCane" or v.Name == "LuckyCrate" or v.Name == "GoldenCrate" or v.Name == "GiftCrate" or v.Name == "DiamondCrate" then
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,-0.5,0)
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,-0.5,0)
    end
end
end})

Library:Init()
