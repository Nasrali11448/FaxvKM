-- Gui to Lua
-- Version: 3.2

-- Instances:

local function LoadAutoExec()
    makefolder("Zeta")
    makefolder("Zeta/autoexec")
    makefolder("Zeta/Workspace")
    
    local files = listfiles("Zeta/autoexec")
    
    for _, file in ipairs(files) do
        local scriptContent = readfile(file)
        local func, loadError = loadstring(scriptContent)
        
        if func then
            func()
        else
            warn("Error loading script in file " .. file .. ": " .. loadError)
        end
    end
end

LoadAutoExec()
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local HomeFrame = Instance.new("Frame")
local Test2Frame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_00 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextButton_5 = Instance.new("TextButton")
local TextLabel_47 = Instance.new("TextLabel")
local TextButton_61 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")
local BuiltinFrame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local BasicPVP = Instance.new("TextButton")
local InfIY = Instance.new("TextButton")
local Fly = Instance.new("TextButton")
local ScripthubFrame = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")
local CloudFrame = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local ExecuteFrame = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local ExecutorTextbox = Instance.new("TextBox")
local Execute = Instance.new("TextButton")
local Clear = Instance.new("TextButton")
local Console = Instance.new("TextButton")
local TextLabel_9 = Instance.new("TextLabel")
local builtinButton = Instance.new("ImageButton")
local ExecuteButton = Instance.new("ImageButton")
local HomeButton = Instance.new("ImageButton")
local ScriptHubButton = Instance.new("ImageButton")
local CloudButton = Instance.new("ImageButton")
local SettingButton = Instance.new("ImageButton")
local SettingsFrame = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local Rejoin = Instance.new("TextButton")
local ServerHop = Instance.new("TextButton")
local LeaveGame = Instance.new("TextButton")
local Fps = Instance.new("TextButton")
local ImageButton = Instance.new("ImageButton")
local UICorner_8 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Load = Instance.new("TextButton")


--Properties:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = gethui()
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(7, 7, 7)
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.195861816, 0, 0.158853218, 0)
Frame.Size = UDim2.new(0, 405, 0, 254)
Frame.Visible = false
Frame.Active = true
Frame.Selectable = true

UICorner.Parent = Frame

local dragging
local dragInput
local dragStart
local startPos

local function FramePos()
    local FrameScreenSize = ScreenGui.AbsoluteSize
    local FrameSize = Frame.AbsoluteSize
    local FramePosit = Frame.Position

    local minX = 0
    local minY = 0
    local maxX = FrameScreenSize.X - FrameSize.X
    local maxY = FrameScreenSize.Y - FrameSize.Y

    local clampedX = math.clamp(FramePosit.X.Offset, minX, maxX)
    local clampedY = math.clamp(FramePosit.Y.Offset, minY, maxY)

    Frame.Position = UDim2.new(FramePosit.X.Scale, clampedX, FramePosit.Y.Scale, clampedY)
end

local function UpdateFrame(input)
    local delta = input.Position - dragStart
    Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    FramePos()
end

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        UpdateFrame(input)
    end
end)

Frame:GetPropertyChangedSignal("Position"):Connect(FramePos)


HomeFrame.Name = "HomeFrame"
HomeFrame.Parent = Frame
HomeFrame.BackgroundColor3 = Color3.fromRGB(34, 186, 180)
HomeFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeFrame.BorderSizePixel = 0
HomeFrame.Position = UDim2.new(0.0740740746, 0, 0, 0)
HomeFrame.Size = UDim2.new(0, 375, 0, 254)
UICorner_2.Parent = HomeFrame



TextLabel.Parent = HomeFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.100000006, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.LuckiestGuy
TextLabel.Text = "Zeta X"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 24.000

TextLabel_2.Parent = HomeFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.330000006, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.LuckiestGuy
TextLabel_2.Text = "Credits"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 24.000


TextLabel_00.Parent = HomeFrame
TextLabel_00.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_00.BackgroundTransparency = 1.000
TextLabel_00.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_00.BorderSizePixel = 0
TextLabel_00.Position = UDim2.new(0.25, 0, 0.85, 0)
TextLabel_00.Size = UDim2.new(0, 200, 0, 50)
TextLabel_00.Text = "FerestZ Killer"
TextLabel_00.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_00.TextSize = 13
for i = 1, 3 do
print("FerestZ Killer")
end



TextLabel_3.Parent = HomeFrame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.106666669, 0, 0.299212605, 0)
TextLabel_3.Size = UDim2.new(0, 264, 0, 64)
TextLabel_3.Font = Enum.Font.Fondamento
TextLabel_3.Text = "Ui Designer - JN HH Gaming YT"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 24.000

TextLabel_47.Parent = HomeFrame
TextLabel_47.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_47.BackgroundTransparency = 1.000
TextLabel_47.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_47.BorderSizePixel = 0
TextLabel_47.Position = UDim2.new(0.156666669, 0, 0.08, 0)
TextLabel_47.Size = UDim2.new(0, 264, 0, 64)
TextLabel_47.Font = Enum.Font.Fondamento
TextLabel_47.Text = "Zeta X Discord Server"
TextLabel_47.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_47.TextSize = 24.000

TextLabel_4.Parent = HomeFrame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.106666669, 0, 0.55905509, 0)
TextLabel_4.Size = UDim2.new(0, 264, 0, 64)
TextLabel_4.Font = Enum.Font.Fondamento
TextLabel_4.Text = "Execution Dev - TheKing YT"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 24.000


TextButton_5.Parent = HomeFrame
TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.BackgroundTransparency = 1.000
TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0.23466666, 0, 0.452755898, 0)
TextButton_5.Size = UDim2.new(0, 199, 0, 50)
TextButton_5.Font = Enum.Font.Highway
TextButton_5.Text = "Click to copy link"
TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.TextSize = 23.000
TextButton_5.Active = true
TextButton_5.Selectable = true
TextButton_5.MouseButton1Click:Connect(function()
TextButton_5.TextColor3 = Color3.fromRGB(255, 0, 0)
wait(1)
TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
   setclipboard("https://www.youtube.com/@JNHHGaming")
end)

TextButton_6.Parent = HomeFrame
TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.BackgroundTransparency = 1.000
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(0.23466666, 0, 0.724409461, 0)
TextButton_6.Size = UDim2.new(0, 199, 0, 50)
TextButton_6.Font = Enum.Font.Highway
TextButton_6.Text = "Click to copy link"
TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.TextSize = 23.000
TextButton_6.Active = true
TextButton_6.Selectable = true
TextButton_6.MouseButton1Click:Connect(function()
TextButton_6.TextColor3 = Color3.fromRGB(255, 0, 0)
wait(1)
TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
   setclipboard("https://youtube.com/@hacker-king78?si=AGsmdGpqHwr9hhTm")
end)

TextButton_61.Parent = HomeFrame
TextButton_61.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_61.BackgroundTransparency = 1.000
TextButton_61.BorderSizePixel = 0
TextButton_61.Position = UDim2.new(0.23466666, 0, 0.22, 0)
TextButton_61.Size = UDim2.new(0, 199, 0, 50)
TextButton_61.Font = Enum.Font.Highway
TextButton_61.Text = "Click to copy link"
TextButton_61.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_61.TextSize = 23.000
TextButton_61.Active = true
TextButton_61.Selectable = true
TextButton_61.MouseButton1Click:Connect(function()
TextButton_61.TextColor3 = Color3.fromRGB(255, 0, 0)
wait(1)
TextButton_61.TextColor3 = Color3.fromRGB(255, 255, 255)
   setclipboard("https://discord.gg/FDa2PdedV6")
end)


BuiltinFrame.Name = "BuiltinFrame"
BuiltinFrame.Parent = Frame
BuiltinFrame.BackgroundColor3 = Color3.fromRGB(34, 186, 180)
BuiltinFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
BuiltinFrame.BorderSizePixel = 0
BuiltinFrame.Position = UDim2.new(0.0740740746, 0, 0, 0)
BuiltinFrame.Size = UDim2.new(0, 375, 0, 254)
BuiltinFrame.Visible = false

UICorner_3.Parent = BuiltinFrame

BasicPVP.Name = "BasicPVP"
BasicPVP.Parent = BuiltinFrame
BasicPVP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BasicPVP.BorderColor3 = Color3.fromRGB(255, 255, 255)
BasicPVP.Position = UDim2.new(0.231999993, 0, 0.0787401572, 0)
BasicPVP.Size = UDim2.new(0, 200, 0, 50)
BasicPVP.Font = Enum.Font.SourceSansBold
BasicPVP.Text = "Basic PVP"
BasicPVP.TextColor3 = Color3.fromRGB(255, 255, 255)
BasicPVP.TextSize = 24.000

InfIY.Name = "InfIY"
InfIY.Parent = BuiltinFrame
InfIY.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
InfIY.BorderColor3 = Color3.fromRGB(255, 255, 255)
InfIY.Position = UDim2.new(0.231999993, 0, 0.40157479, 0)
InfIY.Size = UDim2.new(0, 200, 0, 50)
InfIY.Font = Enum.Font.SourceSansBold
InfIY.Text = "Infinite Yield Reborn"
InfIY.TextColor3 = Color3.fromRGB(255, 255, 255)
InfIY.TextSize = 24.000

Fly.Name = "Fly"
Fly.Parent = BuiltinFrame
Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Fly.BorderColor3 = Color3.fromRGB(255, 255, 255)
Fly.Position = UDim2.new(0.231999993, 0, 0.724409461, 0)
Fly.Size = UDim2.new(0, 200, 0, 50)
Fly.Font = Enum.Font.SourceSansBold
Fly.Text = "Fly"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextSize = 24.000

ScripthubFrame.Name = "ScripthubFrame"
ScripthubFrame.Parent = Frame
ScripthubFrame.BackgroundColor3 = Color3.fromRGB(34, 186, 180)
ScripthubFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScripthubFrame.BorderSizePixel = 0
ScripthubFrame.Position = UDim2.new(0.0740740746, 0, 0, 0)
ScripthubFrame.Size = UDim2.new(0, 375, 0, 254)
ScripthubFrame.Visible = false

UICorner_4.Parent = ScripthubFrame

TextLabel_7.Parent = ScripthubFrame
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.216000006, 0, 0, 0)
TextLabel_7.Size = UDim2.new(0, 200, 0, 50)
TextLabel_7.Font = Enum.Font.LuckiestGuy
TextLabel_7.Text = "Zeta X"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextSize = 24.000


TextLabel_8.Parent = ScripthubFrame
TextLabel_8.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.216000006, 0, 0.40157479, 0)
TextLabel_8.Size = UDim2.new(0, 200, 0, 50)
TextLabel_8.Font = Enum.Font.LuckiestGuy
TextLabel_8.Text = "Coming Soon"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextSize = 24.000


local function animateTextLabel()
	while ScripthubFrame.Visible do
		for _, direction in ipairs({1, -1}) do
			for i = 0, 10 do
				TextLabel_8.Position = UDim2.new(0.216 + direction * (i / 100), 0, 0.40157479, 0)
				wait(0.02)
			end
		end
	end
	TextLabel_8.Position = UDim2.new(0.216, 0, 0.40157479, 0)
end


ScripthubFrame:GetPropertyChangedSignal("Visible"):Connect(function()
	if ScripthubFrame.Visible then
		animateTextLabel()
	else
		TextLabel_8.Position = UDim2.new(0.216, 0, 0.40157479, 0)
	end
end)

CloudFrame.Name = "CloudFrame"
CloudFrame.Parent = Frame
CloudFrame.BackgroundColor3 = Color3.fromRGB(34, 186, 180)
CloudFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloudFrame.BorderSizePixel = 0
CloudFrame.Position = UDim2.new(0.0740740746, 0, 0, 0)
CloudFrame.Size = UDim2.new(0, 375, 0, 254)
CloudFrame.Visible = false

UICorner_5.Parent = CloudFrame





Load.Name = "Load"
Load.Parent = CloudFrame
Load.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Load.BorderColor3 = Color3.fromRGB(255, 255, 255)
Load.Position = UDim2.new(0.231999993, 0, 0.40157479, 0)
Load.Size = UDim2.new(0, 200, 0, 50)
Load.Font = Enum.Font.SourceSansBold
Load.Text = "Load Scripts"
Load.TextColor3 = Color3.fromRGB(255, 255, 255)
Load.TextSize = 24.000



ExecuteFrame.Name = "ExecuteFrame"
ExecuteFrame.Parent = Frame
ExecuteFrame.BackgroundColor3 = Color3.fromRGB(34, 186, 180)
ExecuteFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecuteFrame.BorderSizePixel = 0
ExecuteFrame.Position = UDim2.new(0.0740740746, 0, 0, 0)
ExecuteFrame.Size = UDim2.new(0, 375, 0, 254)
ExecuteFrame.Visible = false

UICorner_6.Parent = ExecuteFrame

ExecutorTextbox.Name = "ExecutorTextbox"
ExecutorTextbox.Parent = ExecuteFrame
ExecutorTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExecutorTextbox.BackgroundTransparency = 0.500
ExecutorTextbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecutorTextbox.BorderSizePixel = 0
ExecutorTextbox.Position = UDim2.new(-0.00121972652, 0, 0.133858263, 0)
ExecutorTextbox.Size = UDim2.new(0, 375, 0, 188)
ExecutorTextbox.Font = Enum.Font.SourceSans
ExecutorTextbox.Text = ""
ExecutorTextbox.PlaceholderText = "Made By TheKing78 & JN HH Gaming\n\nPowered By Fluxus"
ExecutorTextbox.PlaceholderColor3 = Color3.fromRGB(255, 0, 0)
ExecutorTextbox.TextColor3 = Color3.fromRGB(0, 0, 0)
ExecutorTextbox.TextSize = 20.000
ExecutorTextbox.TextYAlignment = Enum.TextYAlignment.Center
ExecutorTextbox.TextXAlignment = Enum.TextXAlignment.Center
ExecutorTextbox.TextWrapped = true
ExecutorTextbox.ClearTextOnFocus = false


Execute.Name = "Execute"
Execute.Parent = ExecuteFrame
Execute.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderColor3 = Color3.fromRGB(255, 255, 255)
Execute.Position = UDim2.new(0.000627278641, 0, 0.874015749, 0)
Execute.Size = UDim2.new(0, 105, 0, 32)
Execute.Font = Enum.Font.FredokaOne
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 24.000

Clear.Name = "Clear"
Clear.Parent = ExecuteFrame
Clear.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderColor3 = Color3.fromRGB(255, 255, 255)
Clear.Position = UDim2.new(0.717960596, 0, 0.874015749, 0)
Clear.Size = UDim2.new(0, 105, 0, 32)
Clear.Font = Enum.Font.FredokaOne
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextSize = 24.000


Console.Name = "Console"
Console.Parent = ExecuteFrame
Console.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Console.BorderColor3 = Color3.fromRGB(255, 255, 255)
Console.Position = UDim2.new(0.357960612, 0, 0.874015749, 0)
Console.Size = UDim2.new(0, 105, 0, 32)
Console.Font = Enum.Font.FredokaOne
Console.Text = "Console"
Console.TextColor3 = Color3.fromRGB(255, 255, 255)
Console.TextSize = 24.000


TextLabel_9.Parent = ExecuteFrame
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.216000006, 0, -0.0157480314, 0)
TextLabel_9.Size = UDim2.new(0, 200, 0, 50)
TextLabel_9.Font = Enum.Font.LuckiestGuy
TextLabel_9.Text = "Zeta X Executor"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextSize = 24.000
TextLabel_9.TextStrokeTransparency = 0.000

local function animateTextLabel()
	while ExecuteFrame.Visible do
		for _, direction in ipairs({1, -1}) do
			for i = 0, 10 do
				TextLabel_9.Position = UDim2.new(0.216 + direction * (i / 100), 0, -0.0157480314, 0)
				wait(0.001)
			end
		end
	end
	TextLabel_9.Position = UDim2.new(0.216, 0, -0.0157480314, 0)
end

ExecuteFrame:GetPropertyChangedSignal("Visible"):Connect(function()
	if ExecuteFrame.Visible then
		animateTextLabel()
	else
		TextLabel_9.Position = UDim2.new(0.216, 0, -0.0157480314, 0)
	end
end)

builtinButton.Name = "builtinButton"
builtinButton.Parent = Frame
builtinButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
builtinButton.BackgroundTransparency = 1.000
builtinButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
builtinButton.BorderSizePixel = 0
builtinButton.Position = UDim2.new(0.00246913591, 0, 0.196850389, 0)
builtinButton.Size = UDim2.new(0, 33, 0, 29)
builtinButton.Image = "rbxassetid://18869985447"

ExecuteButton.Name = "ExecuteButton"
ExecuteButton.Parent = Frame
ExecuteButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton.BackgroundTransparency = 1.000
ExecuteButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecuteButton.BorderSizePixel = 0
ExecuteButton.Position = UDim2.new(-0.00740740728, 0, 0.342519671, 0)
ExecuteButton.Size = UDim2.new(0, 37, 0, 41)
ExecuteButton.Image = "rbxassetid://18856852630"

HomeButton.Name = "HomeButton"
HomeButton.Parent = Frame
HomeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.BackgroundTransparency = 1.000
HomeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeButton.BorderSizePixel = 0
HomeButton.Position = UDim2.new(-0.0197530873, 0, 0, 0)
HomeButton.Size = UDim2.new(0, 47, 0, 43)
HomeButton.Image = "rbxassetid://279461710"

ScriptHubButton.Name = "ScriptHubButton"
ScriptHubButton.Parent = Frame
ScriptHubButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptHubButton.BackgroundTransparency = 1.000
ScriptHubButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptHubButton.BorderSizePixel = 0
ScriptHubButton.Position = UDim2.new(0.00246913591, 0, 0.543307066, 0)
ScriptHubButton.Size = UDim2.new(0, 28, 0, 30)
ScriptHubButton.Image = "rbxassetid://7733779730"

CloudButton.Name = "CloudButton"
CloudButton.Parent = Frame
CloudButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloudButton.BackgroundTransparency = 1.000
CloudButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloudButton.BorderSizePixel = 0
CloudButton.Position = UDim2.new(0.00493827183, 0, 0.854330719, 0)
CloudButton.Size = UDim2.new(0, 28, 0, 30)
CloudButton.Image = "http://www.roblox.com/asset/?id=16149054254"

SettingButton.Name = "SettingButton"
SettingButton.Parent = Frame
SettingButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SettingButton.BackgroundTransparency = 1.000
SettingButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SettingButton.BorderSizePixel = 0
SettingButton.Position = UDim2.new(0.00246913591, 0, 0.712598443, 0)
SettingButton.Size = UDim2.new(0, 30, 0, 30)
SettingButton.Image = "rbxassetid://13568966069"

SettingsFrame.Name = "SettingsFrame"
SettingsFrame.Parent = Frame
SettingsFrame.BackgroundColor3 = Color3.fromRGB(34, 186, 180)
SettingsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
SettingsFrame.BorderSizePixel = 0
SettingsFrame.Position = UDim2.new(0.0740740746, 0, 0, 0)
SettingsFrame.Size = UDim2.new(0, 375, 0, 254)
SettingsFrame.Visible = false

UICorner_7.Parent = SettingsFrame

Rejoin.Name = "Rejoin"
Rejoin.Parent = SettingsFrame
Rejoin.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Rejoin.BorderColor3 = Color3.fromRGB(255, 255, 255)
Rejoin.Position = UDim2.new(0.231999993, 0, 0.299212605, 0)
Rejoin.Size = UDim2.new(0, 200, 0, 50)
Rejoin.Font = Enum.Font.SourceSansBold
Rejoin.Text = "Rejoin"
Rejoin.TextColor3 = Color3.fromRGB(255, 255, 255)
Rejoin.TextSize = 24.000

ServerHop.Name = "ServerHop"
ServerHop.Parent = SettingsFrame
ServerHop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ServerHop.BorderColor3 = Color3.fromRGB(255, 255, 255)
ServerHop.Position = UDim2.new(0.231999993, 0, 0.523622036, 0)
ServerHop.Size = UDim2.new(0, 200, 0, 50)
ServerHop.Font = Enum.Font.SourceSansBold
ServerHop.Text = "Serverhop"
ServerHop.TextColor3 = Color3.fromRGB(255, 255, 255)
ServerHop.TextSize = 24.000

LeaveGame.Name = "LeaveGame"
LeaveGame.Parent = SettingsFrame
LeaveGame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LeaveGame.BorderColor3 = Color3.fromRGB(255, 255, 255)
LeaveGame.Position = UDim2.new(0.231999993, 0, 0.767716527, 0)
LeaveGame.Size = UDim2.new(0, 200, 0, 50)
LeaveGame.Font = Enum.Font.SourceSansBold
LeaveGame.Text = "Leave Game"
LeaveGame.TextColor3 = Color3.fromRGB(255, 255, 255)
LeaveGame.TextSize = 24.000

Fps.Name = "Fps"
Fps.Parent = SettingsFrame
Fps.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Fps.BorderColor3 = Color3.fromRGB(255, 255, 255)
Fps.Position = UDim2.new(0.231999993, 0, 0.0590551198, 0)
Fps.Size = UDim2.new(0, 200, 0, 50)
Fps.Font = Enum.Font.SourceSansBold
Fps.Text = "FPS Unlocker & Meter"
Fps.TextColor3 = Color3.fromRGB(255, 255, 255)
Fps.TextSize = 24.000



ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0, 0, 0.0693481266, 0)
ImageButton.Size = UDim2.new(0, 40, 0, 40)
ImageButton.Image = "rbxassetid://18903913150"
ImageButton.Visible = true
ImageButton.Active = true
ImageButton.Selectable = true
UICorner_8.Parent = ImageButton

local dragging
local dragInput
local dragStart
local startPos

local function IconPos()
    local IconScreenSize = ScreenGui.AbsoluteSize
    local IconSize = ImageButton.AbsoluteSize
    local IconPosit = ImageButton.Position

    local minX = 0
    local minY = 0
    local maxX = IconScreenSize.X - IconSize.X
    local maxY = IconScreenSize.Y - IconSize.Y

    local clampedX = math.clamp(IconPosit.X.Offset, minX, maxX)
    local clampedY = math.clamp(IconPosit.Y.Offset, minY, maxY)

    ImageButton.Position = UDim2.new(IconPosit.X.Scale, clampedX, IconPosit.Y.Scale, clampedY)
end

local function UpdateIcon(input)
    local delta = input.Position - dragStart
    ImageButton.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    IconPos()
end

ImageButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = ImageButton.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

ImageButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        UpdateIcon(input)
    end
end)

ImageButton:GetPropertyChangedSignal("Position"):Connect(IconPos)


TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.9, 0, 0.00001, 0)
TextButton.Size = UDim2.new(0, 37, 0, 41)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton.TextSize = 40
TextButton.Visible = false
UICorner_9.Parent = TextButton

-- Scripts:









	builtinButton.MouseButton1Click:connect(function()
	builtinButton:TweenSize(UDim2.new(0.3, 0, 0.3, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true, 
		function()
			wait(0.1)
			builtinButton:TweenSize(UDim2.new(0, 33, 0, 29), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
		end
	)
		HomeFrame.Visible = false
		BuiltinFrame.Visible = true
		CloudFrame.Visible = false
		ExecuteFrame.Visible = false
		ScripthubFrame.Visible = false
		SettingsFrame.Visible = false
		wait(0.1)
	end)
	


	ExecuteButton.MouseButton1Click:connect(function()
	ExecuteButton:TweenSize(UDim2.new(0.3, 0, 0.3, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true, 
		function()
			wait(0.1)
			ExecuteButton:TweenSize(UDim2.new(0, 37, 0, 41), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
		end
	)
		HomeFrame.Visible = false
		BuiltinFrame.Visible = false
		CloudFrame.Visible = false
		ExecuteFrame.Visible = true
		ScripthubFrame.Visible = false
		SettingsFrame.Visible = false
		wait(0.1)
	end)
	
	


	HomeButton.MouseButton1Click:connect(function()
	HomeButton:TweenSize(UDim2.new(0.3, 0, 0.3, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true, 
		function()
			wait(0.1)
			HomeButton:TweenSize(UDim2.new(0, 47, 0, 43), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
		end
	)

	HomeFrame.Visible = true
	HomeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	BuiltinFrame.Visible = false
	CloudFrame.Visible = false
	ExecuteFrame.Visible = false
	ScripthubFrame.Visible = false
	SettingsFrame.Visible = false
	wait(0.1)
end)




	ScriptHubButton.MouseButton1Click:connect(function()
	ScriptHubButton:TweenSize(UDim2.new(0.3, 0, 0.3, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true, 
		function()
			wait(0.1)
			ScriptHubButton:TweenSize(UDim2.new(0, 28, 0, 30), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
		end
	)
		HomeFrame.Visible = false
		BuiltinFrame.Visible = false
		CloudFrame.Visible = false
		ExecuteFrame.Visible = false
		ScripthubFrame.Visible = true
		SettingsFrame.Visible = false
		wait(0.1)
	end)
	
	
	


	CloudButton.MouseButton1Click:connect(function()
	CloudButton:TweenSize(UDim2.new(0.3, 0, 0.3, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true, 
		function()
			wait(0.1)
			CloudButton:TweenSize(UDim2.new(0, 28, 0, 30), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
		end
	)
		HomeFrame.Visible = false
		BuiltinFrame.Visible = false
		CloudFrame.Visible = true
		ExecuteFrame.Visible = false
		ScripthubFrame.Visible = false
		SettingsFrame.Visible = false
		wait(0.1)
	end)
	




	SettingButton.MouseButton1Click:connect(function()
	SettingButton:TweenSize(UDim2.new(0.3, 0, 0.3, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true, 
		function()
			wait(0.1)
			SettingButton:TweenSize(UDim2.new(0, 30, 0, 30), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
		end
	)
		HomeFrame.Visible = false
		BuiltinFrame.Visible = false
		CloudFrame.Visible = false
		ExecuteFrame.Visible = false
		ScripthubFrame.Visible = false
		SettingsFrame.Visible = true
		wait(0.1)
	end)
	





	
	ImageButton.MouseButton1Click:Connect(function()
	Frame:TweenSize(UDim2.new(0.3, 0, 0.3, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true, 
		function()
			wait(0.2)
			Frame:TweenSize(UDim2.new(0, 405, 0, 254), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
		end
	)
		ScreenGui.Frame.Visible = true
		TextButton.Visible = true
		ImageButton.Visible = false
	end)





	
	TextButton.MouseButton1Click:Connect(function()
	Frame:TweenSize(UDim2.new(0.3, 0, 0.3, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true, 
		function()
			wait(0.2)
			Frame:TweenSize(UDim2.new(0, 405, 0, 254), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
		end
	)
	wait(0.3)
		ScreenGui.Frame.Visible = false
		TextButton.Visible = false
		ImageButton.Visible = true
	end)









-- Settings functions --



-- FPS function --
Fps.MouseButton1Click:Connect(function()
setfpscap(1000000000)
loadstring(game:HttpGet("https://pastebin.com/raw/ySHJdZpb"))()
Fps.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wait(0.2)
Fps.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
end)




-- Rejoin function --
    local TeleportService = game:GetService("TeleportService")
local Rj = game:GetService("TeleportService")
local Play = game:GetService("Players").LocalPlayer


    Rejoin.MouseButton1Click:Connect(function()
    
  Rj:Teleport(game.PlaceId, Play)
  
Rejoin.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wait(0.1)
Rejoin.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    end)
    
    
    
    


-- ServerHop function --
local TeleportService = game:GetService("TeleportService")
local PlaceID = game.PlaceId

ServerHop.MouseButton1Click:Connect(function()
local Player = game:GetService("Players").LocalPlayer
    if Player then
            TeleportService:Teleport(PlaceID, Player)
        end
ServerHop.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wait(0.1)
ServerHop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
end)






-- Leave Game function --
LeaveGame.MouseButton1Click:Connect(function()
game:Shutdown()
LeaveGame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wait(0.1)
LeaveGame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
end)








-- Player function --






-- Tycoon V4 --

BasicPVP.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://freenote.biz/raw/SkG1nrBqE8",true))()
BasicPVP.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wait(0.2)
BasicPVP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
end)



-- Infinite Yield Reborn --
InfIY.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Infinite-Yield-Reborn-x-Infinite-Store-16838"))()
InfIY.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wait(0.2)
InfIY.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
end)




-- Fly --


Fly.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
Fly.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wait(0.2)
Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
end)







-- Execution --






-- Execute --
Execute.MouseButton1Click:Connect(function()
    local code = ExecutorTextbox.Text
    local func, err = loadstring(code)
    if func then
        func()
    else
        warn("Error in code: " .. err)
    end
    Execute.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    wait(0.2)
    Execute.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
end)




-- Clear --
Clear.MouseButton1Click:Connect(function()
    ExecutorTextbox.Text = ""
    Clear.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    wait(0.2)
    Clear.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
end)




-- Cloud Script --
Load.MouseButton1Click:Connect(function()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Nasrali11448/OrionLib/main/Lib')))()




local HttpService = game:GetService("HttpService")
local apiUrl = "https://scriptblox.com/api/script/search?filters=free&q="

local TeleportService = game:GetService("TeleportService")
local PlaceID = game.PlaceId












local Window = OrionLib:MakeWindow({Name = "Script Loader By Zeta X", HidePremium = false, SaveConfig = true, ConfigFolder = "ZetaLoader"})



local Cloud = Window:MakeTab({Name = "CloudScript", Icon = "rbxassetid://14028468272", PremiumOnly = false})














local CloudS = Cloud:AddSection({Name = "CloudScripts"})











local function AddTab(iconUrl, scriptName, scriptContent)
    CloudS:AddButton({
        Name = scriptName,
        Icon = iconUrl,
        Callback = function()
            local func, err = loadstring(scriptContent)
            if func then
                func()
            else
                OrionLib:MakeNotification({
                    Name = "Error",
                    Content = "Failed to execute script: " .. err,
                    Time = 5
                })
            end
        end
    })
end

CloudS:AddTextbox({
    Name = "Find script",
    Default = "",
    TextDisappear = false,
    Callback = function(query)
        local url = apiUrl .. query
        local response = game:HttpGetAsync(url)
        local decoded = HttpService:JSONDecode(response)

        for _, script in pairs(decoded.result.scripts) do
            if script.isUniversal then
                AddTab("rbxassetid://18856817043", script.title, script.script)
            else
                AddTab("https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..script.game.gameId.."&fmt=png&wd=420&ht=420", script.title, script.script)
            end
        end
    end
})

















OrionLib:Init()
Load.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wait(0.2)
Load.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
end)








-- Console --

Console.MouseButton1Click:Connect(function()
    local isVisible = game:GetService("StarterGui"):GetCore("DevConsoleVisible")

    if isVisible then
        Console.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    else
        Console.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
    end
end)


game:GetService("RunService").RenderStepped:Connect(function()
    local isVisible = game:GetService("StarterGui"):GetCore("DevConsoleVisible")

    if isVisible then
        Console.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    else
        Console.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    end
end)
