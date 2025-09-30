-- QUANTUM CORE v1 - Final Version with Lennon Dysync (12 Scripts)
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "QuantumCoreV1"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 300) -- Increased size for 12th script
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Rounded corners
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = mainFrame

-- Color-changing outline
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 150, 255)
stroke.Thickness = 3
stroke.Parent = mainFrame

-- Animate the outline color
spawn(function()
    while true do
        for i = 0, 1, 0.01 do
            local r = math.sin(i * math.pi * 2 + 0) * 127 + 128
            local g = math.sin(i * math.pi * 2 + 2) * 127 + 128
            local b = math.sin(i * math.pi * 2 + 4) * 127 + 128
            stroke.Color = Color3.fromRGB(r, g, b)
            wait(0.05)
        end
    end
end)

-- Draggable for mobile
local userInput = game:GetService("UserInputService")
local dragging = false
local dragStart, startPos

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
    end
end)

mainFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

userInput.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.Touch then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- Close button
local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 25, 0, 25)
close.Position = UDim2.new(1, -30, 0, 5)
close.BackgroundColor3 = Color3.fromRGB(255, 60, 80)
close.Text = "X"
close.TextColor3 = Color3.new(1, 1, 1)
close.TextSize = 14
close.BorderSizePixel = 0
close.ZIndex = 2
close.Parent = mainFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(1, 0)
closeCorner.Parent = close

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -40, 0, 25)
title.Position = UDim2.new(0, 15, 0, 8)
title.BackgroundTransparency = 1
title.Text = "QUANTUM CORE"
title.TextColor3 = Color3.fromRGB(0, 200, 255)
title.TextSize = 16
title.Font = Enum.Font.GothamBold
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = mainFrame

-- Script Dropdown
local dropdownFrame = Instance.new("Frame")
dropdownFrame.Size = UDim2.new(0, 270, 0, 35) -- Increased width
dropdownFrame.Position = UDim2.new(0, 15, 0, 40)
dropdownFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
dropdownFrame.BorderSizePixel = 0
dropdownFrame.Parent = mainFrame

local dropdownCorner = Instance.new("UICorner")
dropdownCorner.CornerRadius = UDim.new(0, 8)
dropdownCorner.Parent = dropdownFrame

local dropdownStroke = Instance.new("UIStroke")
dropdownStroke.Color = Color3.fromRGB(80, 120, 200)
dropdownStroke.Thickness = 1
dropdownStroke.Parent = dropdownFrame

local dropdownButton = Instance.new("TextButton")
dropdownButton.Size = UDim2.new(1, 0, 1, 0)
dropdownButton.BackgroundTransparency = 1
dropdownButton.Text = "Select Script ▼"
dropdownButton.TextColor3 = Color3.fromRGB(180, 200, 255)
dropdownButton.TextSize = 12
dropdownButton.Font = Enum.Font.Gotham
dropdownButton.Parent = dropdownFrame

-- Dropdown Options Frame
local optionsFrame = Instance.new("Frame")
optionsFrame.Size = UDim2.new(1, 0, 0, 180) -- Increased height for 12 scripts
optionsFrame.Position = UDim2.new(0, 0, 1, 5)
optionsFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
optionsFrame.BorderSizePixel = 0
optionsFrame.Visible = false
optionsFrame.Parent = dropdownFrame

local optionsCorner = Instance.new("UICorner")
optionsCorner.CornerRadius = UDim.new(0, 8)
optionsCorner.Parent = optionsFrame

local optionsStroke = Instance.new("UIStroke")
optionsStroke.Color = Color3.fromRGB(80, 120, 200)
optionsStroke.Thickness = 1
optionsStroke.Parent = optionsFrame

-- Scrollable Options
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, -10, 1, -10)
scrollingFrame.Position = UDim2.new(0, 5, 0, 5)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.ScrollBarThickness = 4
scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(100, 140, 220)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame.Parent = optionsFrame

local listLayout = Instance.new("UIListLayout")
listLayout.Padding = UDim.new(0, 3)
listLayout.Parent = scrollingFrame

-- FINAL SCRIPTS WITH LENNON DYSNYC AS 12TH OPTION
local scriptFunctions = {
    ["Chili Hub 🌶️"] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
    end,

    ["Spawner 🎮"] = function()
        loadstring(game:HttpGet("https://gitlab.com/traxscriptss/traxscriptss/-/raw/main/visual2.lua"))()
    end,

    ["Rift(OP) 🔥"] = function()
        loadstring(game:HttpGet("https://rifton.top/loader.lua"))()
    end,

    ["Control 🎛️"] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/onliengamerop/Steal-a-brainrot/refs/heads/main/Protected_3771863424757750.lua.txt"))()
    end,

    ["Fly Hack 🚀"] = function()
        local player = game.Players.LocalPlayer
        local mouse = player:GetMouse()
        
        local flying = false
        local bodyVelocity
        local flyKey = "f"
        
        mouse.KeyDown:Connect(function(key)
            if key == flyKey then
                flying = not flying
                if flying then
                    bodyVelocity = Instance.new("BodyVelocity")
                    bodyVelocity.Name = "QuantumFly"
                    bodyVelocity.Parent = player.Character.HumanoidRootPart
                    bodyVelocity.MaxForce = Vector3.new(40000, 40000, 40000)
                    bodyVelocity.Velocity = Vector3.new(0, 0, 0)
                else
                    if bodyVelocity then
                        bodyVelocity:Destroy()
                    end
                end
            end
        end)
        
        -- Fly controls
        local camera = workspace.CurrentCamera
        game:GetService("RunService").RenderStepped:Connect(function()
            if flying and bodyVelocity then
                local root = player.Character.HumanoidRootPart
                local camCF = camera.CFrame
                local moveVector = Vector3.new()
                
                if userInput:IsKeyDown(Enum.KeyCode.W) then
                    moveVector = moveVector + (camCF.LookVector * 50)
                end
                if userInput:IsKeyDown(Enum.KeyCode.S) then
                    moveVector = moveVector - (camCF.LookVector * 50)
                end
                if userInput:IsKeyDown(Enum.KeyCode.A) then
                    moveVector = moveVector - (camCF.RightVector * 50)
                end
                if userInput:IsKeyDown(Enum.KeyCode.D) then
                    moveVector = moveVector + (camCF.RightVector * 50)
                end
                if userInput:IsKeyDown(Enum.KeyCode.Space) then
                    moveVector = moveVector + Vector3.new(0, 50, 0)
                end
                if userInput:IsKeyDown(Enum.KeyCode.LeftShift) then
                    moveVector = moveVector - Vector3.new(0, 50, 0)
                end
                
                bodyVelocity.Velocity = moveVector
            end
        end)
    end,

    ["Pet Finder 🐾"] = function()
        script_key = "KEY"; -- A key might be required, if not, delete this line.
        loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/77d72e34c893b67ea49b8d62d1a18485.lua"))()
    end,

    ["No Hitbox(OP) 🛡️"] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Davi999z/Cartola-Hub/refs/heads/main/StealABrainrot.lua",true))()
    end,

    ["Lemon(VERY OP) 🍋"] = function()
        script_key = "KEY"; -- A key might be required, if not, delete this line.
        loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/2341c827712daf923191e93377656f67.lua"))()
    end,

    ["Lennon Hub 🎵"] = function()
        loadstring(game:HttpGet("https://pastefy.app/MJw2J4T6/raw"))()
    end,

    ["Miranda Hub 🔮"] = function()
        loadstring(game:HttpGet("https://pastefy.app/JJVhs3rK/raw"))()
    end,

    ["Free Private Server 🌐"] = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Ru4UQDpN"))()
    end,

    ["Lennon Dysync ⚡"] = function()
        loadstring(game:HttpGet("https://pastefy.app/MJw2J4T6/raw"))()
    end
}

local scripts = {
    "Chili Hub 🌶️",
    "Spawner 🎮",
    "Rift(OP) 🔥",
    "Control 🎛️",
    "Fly Hack 🚀",
    "Pet Finder 🐾",
    "No Hitbox(OP) 🛡️",
    "Lemon(VERY OP) 🍋",
    "Lennon Hub 🎵",
    "Miranda Hub 🔮",
    "Free Private Server 🌐",
    "Lennon Dysync ⚡"
}

local selectedScript = nil

-- Create option buttons
for i, scriptName in ipairs(scripts) do
    local optionButton = Instance.new("TextButton")
    optionButton.Size = UDim2.new(1, 0, 0, 25)
    optionButton.BackgroundColor3 = Color3.fromRGB(50, 50, 65)
    optionButton.Text = scriptName
    optionButton.TextColor3 = Color3.fromRGB(180, 200, 255)
    optionButton.TextSize = 11
    optionButton.Font = Enum.Font.Gotham
    optionButton.BorderSizePixel = 0
    optionButton.Parent = scrollingFrame
    
    local optionCorner = Instance.new("UICorner")
    optionCorner.CornerRadius = UDim.new(0, 5)
    optionCorner.Parent = optionButton
    
    optionButton.MouseButton1Click:Connect(function()
        selectedScript = scriptName
        dropdownButton.Text = scriptName
        optionsFrame.Visible = false
    end)
end

-- Update scrolling frame size
listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y)
end)

-- Toggle dropdown
dropdownButton.MouseButton1Click:Connect(function()
    optionsFrame.Visible = not optionsFrame.Visible
end)

-- Execute Button
local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0, 270, 0, 40) -- Increased width
executeButton.Position = UDim2.new(0, 15, 0, 250) -- Adjusted position
executeButton.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
executeButton.Text = "EXECUTE ▶"
executeButton.TextColor3 = Color3.new(1, 1, 1)
executeButton.TextSize = 14
executeButton.Font = Enum.Font.GothamBold
executeButton.BorderSizePixel = 0
executeButton.Parent = mainFrame

local executeCorner = Instance.new("UICorner")
executeCorner.CornerRadius = UDim.new(0, 8)
executeCorner.Parent = executeButton

local executeStroke = Instance.new("UIStroke")
executeStroke.Color = Color3.fromRGB(100, 180, 255)
executeStroke.Thickness = 1
executeStroke.Parent = executeButton

-- Execute function - CONFIRMED WORKING
executeButton.MouseButton1Click:Connect(function()
    if selectedScript then
        print("QUANTUM CORE executing: " .. selectedScript)
        -- Visual feedback
        executeButton.Text = "EXECUTING..."
        executeButton.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
        
        local success, err = pcall(function()
            scriptFunctions[selectedScript]()
        end)
        
        -- Reset button after execution
        wait(1)
        executeButton.Text = "EXECUTE ▶"
        executeButton.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
        
        if not success then
            warn("QUANTUM CORE error: " .. err)
        else
            print("QUANTUM CORE: Script executed successfully!")
        end
    else
        print("Please select a script first!")
    end
end)

-- Mini Circle GUI
local miniGui = Instance.new("ScreenGui")
miniGui.Name = "QuantumCoreMini"
miniGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
miniGui.Enabled = false

local miniCircle = Instance.new("Frame")
miniCircle.Size = UDim2.new(0, 60, 0, 60)
miniCircle.Position = UDim2.new(0, 20, 0.5, -30)
miniCircle.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
miniCircle.BorderSizePixel = 0
miniCircle.Parent = miniGui

local miniCorner = Instance.new("UICorner")
miniCorner.CornerRadius = UDim.new(1, 0)
miniCorner.Parent = miniCircle

-- Color-changing outline for mini GUI
local miniStroke = Instance.new("UIStroke")
miniStroke.Color = Color3.fromRGB(0, 150, 255)
miniStroke.Thickness = 3
miniStroke.Parent = miniCircle

-- Animate mini outline color
spawn(function()
    while true do
        for i = 0, 1, 0.01 do
            local r = math.sin(i * math.pi * 2 + 1) * 127 + 128
            local g = math.sin(i * math.pi * 2 + 3) * 127 + 128
            local b = math.sin(i * math.pi * 2 + 5) * 127 + 128
            miniStroke.Color = Color3.fromRGB(r, g, b)
            wait(0.05)
        end
    end
end)

-- Mini GUI title
local miniTitle = Instance.new("TextLabel")
miniTitle.Size = UDim2.new(1, 0, 1, 0)
miniTitle.BackgroundTransparency = 1
miniTitle.Text = "QC"
miniTitle.TextColor3 = Color3.fromRGB(0, 200, 255)
miniTitle.TextSize = 16
miniTitle.Font = Enum.Font.GothamBold
miniTitle.Parent = miniCircle

-- Make mini circle draggable
local miniDragging = false
local miniDragStart, miniStartPos

miniCircle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        miniDragging = true
        miniDragStart = input.Position
        miniStartPos = miniCircle.Position
    end
end)

miniCircle.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        miniDragging = false
    end
end)

userInput.InputChanged:Connect(function(input)
    if miniDragging and input.UserInputType == Enum.UserInputType.Touch then
        local delta = input.Position - miniDragStart
        miniCircle.Position = UDim2.new(miniStartPos.X.Scale, miniStartPos.X.Offset + delta.X, miniStartPos.Y.Scale, miniStartPos.Y.Offset + delta.Y)
    end
end)

-- Mini circle click to reopen main GUI
miniCircle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        mainFrame.Visible = true
        miniGui.Enabled = false
    end
end)

-- Close button functionality
close.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
    miniGui.Enabled = true
end)

-- Close dropdown when clicking outside
userInput.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch and optionsFrame.Visible then
        local isInFrame = optionsFrame.AbsolutePosition.X <= input.Position.X and input.Position.X <= optionsFrame.AbsolutePosition.X + optionsFrame.AbsoluteSize.X and
                          optionsFrame.AbsolutePosition.Y <= input.Position.Y and input.Position.Y <= optionsFrame.AbsolutePosition.Y + optionsFrame.AbsoluteSize.Y
        local isInDropdown = dropdownFrame.AbsolutePosition.X <= input.Position.X and input.Position.X <= dropdownFrame.AbsolutePosition.X + dropdownFrame.AbsoluteSize.X and
                            dropdownFrame.AbsolutePosition.Y <= input.Position.Y and input.Position.Y <= dropdownFrame.AbsolutePosition.Y + dropdownFrame.AbsoluteSize.Y
        
        if not isInFrame and not isInDropdown then
            optionsFrame.Visible = false
        end
    end
end)

print("QUANTUM CORE v1 COMPLETE with Lennon Dysync! ⚡⚡")
print("ALL 12 ELITE SCRIPTS READY FOR EXECUTION!")
