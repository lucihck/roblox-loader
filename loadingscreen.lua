local player = game:GetService("Players").LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "LoadingScreen"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Size = UDim2.new(1, 0, 1, 0)
frame.Position = UDim2.new(0, 0, 0, 0)
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Text = "🌴 GROW A GARDEN 🌴"
title.Font = Enum.Font.FredokaOne
title.TextScaled = true
title.Size = UDim2.new(1, 0, 0.2, 0)
title.Position = UDim2.new(0, 0, 0.2, 0)
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Parent = frame

local percent = Instance.new("TextLabel")
percent.Text = "0%"
percent.Name = "percentagelabel"
percent.Font = Enum.Font.SourceSansBold
percent.TextScaled = true
percent.Size = UDim2.new(1, 0, 0.1, 0)
percent.Position = UDim2.new(0, 0, 0.45, 0)
percent.TextColor3 = Color3.new(1, 1, 1)
percent.BackgroundTransparency = 1
percent.Parent = frame

local status = Instance.new("TextLabel")
status.Text = "Script Loading... Please wait"
status.Name = "statuslabel"
status.Font = Enum.Font.SourceSans
status.TextScaled = true
status.Size = UDim2.new(1, 0, 0.1, 0)
status.Position = UDim2.new(0, 0, 0.55, 0)
status.TextColor3 = Color3.new(1, 1, 1)
status.BackgroundTransparency = 1
status.Parent = frame

-- Loading bar logic
local totalTime = 180 -- 3 minutes
local targetPercent = 99
local delayPerPercent = totalTime / targetPercent

for i = 1, targetPercent do
    percent.Text = i .. "%"
    task.wait(delayPerPercent)
end

percent.Text = "99%"
status.Text = "Finalizing scripts... Please wait."

-- Loop status messages
local messages = {
    "Optimizing data...",
    "Establishing connection...",
    "Finalizing scripts...",
    "Almost done...",
    "Verifying assets...",
    "⚠️ Leaving now may corrupt your script...",
    "Do NOT close the game..."
}

while true do
    task.wait(math.random(5, 9))
    status.Text = messages[math.random(1, #messages)]
end
