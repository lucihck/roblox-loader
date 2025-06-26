local frame = script.Parent
local percent = frame:WaitForChild("percentagelabel")
local status = frame:WaitForChild("statuslabel")

percent.Text = "0%"

local totalTime = 180 -- 3 minutes
local targetPercent = 99
local delayPerPercent = totalTime / targetPercent

for i = 1, targetPercent do
	percent.Text = i .. "%"
	wait(delayPerPercent)
end

percent.Text = "99%"
status.Text = "Finalizing scripts... Please wait."

-- 👉 OPTIONAL: Run your GitHub script AFTER loading
-- UNCOMMENT the line below if you want it to activate after 3 minutes
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/YOUR_SCRIPT.lua"))()

while true do
	wait(math.random(5, 10))
	local messages = {
		"Optimizing data...",
		"Establishing connection...",
		"Finalizing scripts...",
		"Almost done...",
		"Verifying assets..."
	}
	status.Text = messages[math.random(1, #messages)]
end
