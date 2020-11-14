_G.ToggleColor = Color3.fromRGB(255,0,0)
_G.ButtonColor = Color3.fromRGB(0,255,0)
_G.SliderColor = Color3.fromRGB(0,0,255)
_G.ws = 16
_G.ws2 = false

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- wally v3

local w = library:CreateWindow("WalkSpeed.")

local b = w:CreateFolder("WalkSpeed-Bypass.")

b:Toggle("WalkSpeed",function(lol) -- toggle for the script
    _G.ws2 = lol
end)

b:Slider("WS",16,200,true,function(value) -- slider for the script
    _G.ws = value
end)




local ScriptContext = game:GetService("ScriptContext")

for i,v in next, getconnections(ScriptContext.Error) do -- get connections
    v:Disable()
end
    
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__newindex --shit

mt.__newindex = newcclosure(function(o, k, v)
    if tostring(o) == "Humanoid" and tostring(k) == "WalkSpeed" and _G.ws2 then
    return old(o, k, _G.ws) --just returning values
    end
     
    return old(o, k, v)
     
     
end)
