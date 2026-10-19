-- Script is under maintenance.
-- Please wait.

print("SCRIPT IS UNDER MAINTENANCE")

local StarterGui = game:GetService("StarterGui")

local success = false
while not success do
    success = pcall(function()
        StarterGui:SetCore("DevConsoleVisible", true)
    end)
    if not success then
        task.wait(0.1)
    end
end
