_G.ToggleColor = Color3.fromRGB(255,0,0)
_G.ButtonColor = Color3.fromRGB(0,255,0)
_G.SliderColor = Color3.fromRGB(0,0,255)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(false)

local w = library:CreateWindow("Window")

local b = w:CreateFolder("Folder")

b:Button("Find Bloodthorn",function()
    for i,ti in pairs(game:GetDescendants()) do

  if (ti:IsA("BasePart") or ti:IsA("Model")) and ti:FindFirstChildOfClass("ClickDetector") then
       print(ti.Name.." spawned. "..ti.Parent.Name.." is "..ti.Name.."'s parent.")
       if ti.Parent.Name == "Spawnables" then
           if ti:IsA("BasePart") then
               local sound = Instance.new("Sound",game.Players.LocalPlayer.PlayerGui)
               sound.Volume = 10
               sound.SoundId = "rbxassetid://6029210056"
       game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(ti.CFrame*CFrame.new(0,5,0))
           elseif ti.Parent:FindFirstChildOfClass("BasePart") then
               local sound = Instance.new("Sound",game.Players.LocalPlayer.PlayerGui)
               sound.Volume = 10
               sound.SoundId = "rbxassetid://6029210056"
       game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(ti.Parent:FindFirstChildOfClass("BasePart").CFrame*CFrame.new(0,5,0))
       end
       end
       end
end
game.DescendantAdded:Connect(function(ti)
   if (ti:IsA("BasePart") or ti:IsA("Model")) and ti:FindFirstChildOfClass("ClickDetector") then
       print(ti.Name.." spawned. "..ti.Parent.Name.." is "..ti.Name.."'s parent.")
       if ti.Parent.Name == "Spawnables" then
           if ti:IsA("BasePart") then
               local sound = Instance.new("Sound",game.Players.LocalPlayer.PlayerGui)
               sound.Volume = 10
               sound.Id = "rbxassetid://6029210056"
       game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(ti.CFrame*CFrame.new(0,5,0))
           elseif ti.Parent:FindFirstChildOfClass("BasePart") then
               local sound = Instance.new("Sound",game.Players.LocalPlayer.PlayerGui)
               sound.Volume = 10
               sound.Id = "rbxassetid://6029210056"
       game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(ti.Parent:FindFirstChildOfClass("BasePart").CFrame*CFrame.new(0,5,0))
       end
       end
       end
 end)
end)

b:Toggle("No-Stun",function(bool)
    if bool then
    _G.Nostun = true
    else
    _G.Nostun = false
    end
end)

local plr = game.Players.LocalPlayer
local statu = plr.Status
local state = statu.State
local values = statu.Values

state.ChildAdded:connect(function(p)
    if _G.Nostun then
   p.Name = 'xD'
   wait()
   p:Destroy()
   end
end)

values.ChildAdded:connect(function(p)
    if _G.Nostun then
   p.Name = 'xd'
   wait()
   p:Destroy()
   end
end)

b:Toggle("Inf-Mana",function(bool)
    if bool then
    _G.Inf = true
    if _G.Inf == true then
    pcall(function()
    game.Players.LocalPlayer.Character.Mana.Value = 100
    end)
    end
    else
    _G.Inf = false
    game.Players.LocalPlayer.Character.Mana.Value = 0
    end
end)

b:Toggle("Esp",function(bool)
    if bool then
    ESP:Toggle(true)
    else ESP:Toggle(false) end
end)

b:Toggle("Esp Tracers",function(bool)
    if bool then
    ESP.Tracers = true
    else ESP.Tracers = false end
end)

b:Toggle("Esp Boxes",function(bool)
    if bool then
    ESP.Boxes = true
    else ESP.Boxes = false end
end)
