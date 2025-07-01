repeat task.wait() until game:IsLoaded()

local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
gui.ResetOnSpawn = false

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)

local textbox = Instance.new("TextBox", frame)
textbox.Size = UDim2.new(1, -20, 1, -60)
textbox.Position = UDim2.new(0, 10, 0, 10)
textbox.MultiLine = true
textbox.TextWrapped = true
textbox.ClearTextOnFocus = false
textbox.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
textbox.TextColor3 = Color3.new(1, 1, 1)
textbox.TextXAlignment = Enum.TextXAlignment.Left
textbox.TextYAlignment = Enum.TextYAlignment.Top
textbox.Font = Enum.Font.Code
textbox.TextSize = 14
textbox.Text = ""

local button = Instance.new("TextButton", frame)
button.Size = UDim2.new(0, 100, 0, 30)
button.Position = UDim2.new(0.5, -50, 1, -40)
button.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
button.TextColor3 = Color3.new(1, 1, 1)
button.Font = Enum.Font.SourceSans
button.TextSize = 18
button.Text = "Execute"

button.MouseButton1Click:Connect(function()
	local code = textbox.Text
	local func = loadstring(code)
	if func then
		pcall(func)
	end
end)
