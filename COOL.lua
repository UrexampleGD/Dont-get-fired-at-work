-- Script is under maintenance.
-- Please wait.

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

print("SCRIPT IS UNDER MAINTENANCE")
print("WERE GONNA UPDATE THIS.")
