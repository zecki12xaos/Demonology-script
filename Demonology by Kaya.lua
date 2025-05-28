local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Color constants
local COLOR_GREEN = Color3.fromRGB(0, 255, 0) -- Yes, Room, Temperature
local COLOR_RED = Color3.fromRGB(255, 0, 0) -- No
local COLOR_YELLOW = Color3.fromRGB(194, 108, 255) -- Checking..., Searching...
local COLOR_GRAY = Color3.fromRGB(200, 200, 200) -- Default (Not Found, Error)
local COLOR_WHITE = Color3.fromRGB(255, 255, 255) -- Default (Not Found, Error)

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GhostTrackerGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui

-- Create main Frame with black background + iridescent outline
local TweenService = game:GetService("TweenService")
local frame = Instance.new("Frame")
frame.Transparency = 1
frame.Size = UDim2.new(0, 300, 0, 280)
frame.Position = UDim2.new(0.5, -150, 0.1, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BorderSizePixel = 0 -- отключаем стандартную рамку
frame.Parent = screenGui

-- Кнопка закрытия (крестик)
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 40, 0, 15)
closeButton.Position = UDim2.new(1, -45, 0, 5) -- Немного отступим от края
closeButton.BackgroundColor3 = Color3.fromRGB(60, 43, 71)
closeButton.BackgroundTransparency = 0
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextSize = 25
closeButton.Font = Enum.Font.GothamBold
closeButton.BorderSizePixel = 0
closeButton.ZIndex = 10
closeButton.Parent = frame

-- Скругление для кнопки
local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 10)
closeCorner.Parent = closeButton

-- Обработчик нажатия
closeButton.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end)


-- Добавляем фоновое изображение
local backgroundImage = Instance.new("ImageLabel")
backgroundImage.Image = "http://www.roblox.com/asset/?id=74753068383460"
backgroundImage.Size = UDim2.new(1, 0, 1, 0) -- растянуть на весь frame
backgroundImage.Position = UDim2.new(0, 0, 0, 0)
backgroundImage.BackgroundTransparency = 1 -- прозрачный фон, чтобы не мешал
backgroundImage.ZIndex = 0 -- на заднем плане
backgroundImage.Parent = frame

-- Добавляем скругления к frame
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = frame

-- Добавляем обводку с анимацией цвета
local stroke = Instance.new("UIStroke")
stroke.Thickness = 3.6
stroke.Color = Color3.fromRGB(137, 184, 255) -- стартовый цвет
stroke.Parent = frame

local color1 = Color3.fromRGB(165, 124, 255)
local color2 = Color3.fromRGB(165, 124, 255)
local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true)
local strokeTween = TweenService:Create(stroke, tweenInfo, {
	Color = color2
})
strokeTween:Play()


-- Title label
local TweenService = game:GetService("TweenService")
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.Position = UDim2.new(0, 0, 0, 10)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "―――――  Keya v1  ―――――"
titleLabel.TextColor3 = Color3.fromRGB(255, 121, 255) -- Start with white
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextXAlignment = Enum.TextXAlignment.Center
titleLabel.Parent = frame
local white = Color3.fromRGB(165, 124, 255)
local blue = Color3.fromRGB(137, 184, 255)
local tweenInfo = TweenInfo.new(
	1, -- длительность (в секундах)
	Enum.EasingStyle.Sine,
	Enum.EasingDirection.InOut,
	-1, -- бесконечное повторение
	true -- реверс (туда-обратно)
)
local tween = TweenService:Create(titleLabel, tweenInfo, {
	TextColor3 = blue
})
tween:Play()


-- Favorite room label
local roomLabel = Instance.new("TextLabel")
roomLabel.Size = UDim2.new(1, 0, 0, 30)
roomLabel.Position = UDim2.new(0, 0, 0, 50)
roomLabel.BackgroundTransparency = 1
roomLabel.Text = "Favorite Room: Checking..."
roomLabel.TextColor3 = COLOR_YELLOW -- Initial yellow
roomLabel.TextSize = 16
roomLabel.Font = Enum.Font.Gotham
roomLabel.TextXAlignment = Enum.TextXAlignment.Center
roomLabel.Parent = frame

-- Temperature label
local tempLabel = Instance.new("TextLabel")
tempLabel.Size = UDim2.new(1, 0, 0, 30)
tempLabel.Position = UDim2.new(0, 0, 0, 80)
tempLabel.BackgroundTransparency = 1
tempLabel.Text = "Favorite Temp: Checking..."
tempLabel.TextColor3 = COLOR_YELLOW -- Initial yellow
tempLabel.TextSize = 16
tempLabel.Font = Enum.Font.Gotham
tempLabel.TextXAlignment = Enum.TextXAlignment.Center
tempLabel.Parent = frame

-- EMF 5 label
local emfLabel = Instance.new("TextLabel")
emfLabel.Size = UDim2.new(1, 0, 0, 30)
emfLabel.Position = UDim2.new(0, 0, 0, 110)
emfLabel.BackgroundTransparency = 1
emfLabel.Text = "EMF 5: Checking..."
emfLabel.TextColor3 = COLOR_YELLOW -- Initial yellow
emfLabel.TextSize = 16
emfLabel.Font = Enum.Font.Gotham
emfLabel.TextXAlignment = Enum.TextXAlignment.Center
emfLabel.Parent = frame

-- Ghost Orb label
local orbLabel = Instance.new("TextLabel")
orbLabel.Size = UDim2.new(1, 0, 0, 30)
orbLabel.Position = UDim2.new(0, 0, 0, 140)
orbLabel.BackgroundTransparency = 1
orbLabel.Text = "Ghost Orb: Checking..."
orbLabel.TextColor3 = COLOR_YELLOW -- Initial yellow
orbLabel.TextSize = 16
orbLabel.Font = Enum.Font.Gotham
orbLabel.TextXAlignment = Enum.TextXAlignment.Center
orbLabel.Parent = frame

-- Handprints label
local handprintsLabel = Instance.new("TextLabel")
handprintsLabel.Size = UDim2.new(1, 0, 0, 30)
handprintsLabel.Position = UDim2.new(0, 0, 0, 170)
handprintsLabel.BackgroundTransparency = 1
handprintsLabel.Text = "Handprints: Checking..."
handprintsLabel.TextColor3 = COLOR_YELLOW -- Initial yellow
handprintsLabel.TextSize = 16
handprintsLabel.Font = Enum.Font.Gotham
handprintsLabel.TextXAlignment = Enum.TextXAlignment.Center
handprintsLabel.Parent = frame

-- Laser Projector
local activityLabel = Instance.new("TextLabel")
activityLabel.Size = UDim2.new(1, 0, 0, 30)
activityLabel.Position = UDim2.new(0, 0, 0, 200)
activityLabel.BackgroundTransparency = 1
activityLabel.Text = "Laser Projector: Checking..."
activityLabel.TextColor3 = COLOR_YELLOW -- Initial yellow
activityLabel.TextSize = 16
activityLabel.Font = Enum.Font.Gotham
activityLabel.TextXAlignment = Enum.TextXAlignment.Center
activityLabel.Parent = frame

-- Fullbright toggle button
-- Обёртка под кнопку с обводкой
local buttonWrapper = Instance.new("Frame")
buttonWrapper.Size = UDim2.new(0.8, 0, 0, 30)
buttonWrapper.Position = UDim2.new(0.1, 0, 0.02, 230)
buttonWrapper.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
buttonWrapper.BorderSizePixel = 0
buttonWrapper.ZIndex = 1
buttonWrapper.Parent = frame

-- Скругление углов для обёртки
local wrapperCorner = Instance.new("UICorner")
wrapperCorner.CornerRadius = UDim.new(0, 6)
wrapperCorner.Parent = buttonWrapper

-- Обводка обёртки
local buttonStroke = Instance.new("UIStroke")
buttonStroke.Thickness = 2
buttonStroke.Color = Color3.fromRGB(137, 184, 255)
buttonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
buttonStroke.Parent = buttonWrapper

-- Кнопка внутри обёртки
local fullbrightButton = Instance.new("TextButton")
fullbrightButton.Size = UDim2.new(1, 0, 1, 0)
fullbrightButton.Position = UDim2.new(0, 0, 0, 0)
fullbrightButton.BackgroundTransparency = 1 -- Кнопка прозрачная, фон в wrapper'е
fullbrightButton.Text = "Enable Fullbright"
fullbrightButton.TextColor3 = COLOR_WHITE
fullbrightButton.TextSize = 14
fullbrightButton.Font = Enum.Font.Gotham
fullbrightButton.ZIndex = 2
fullbrightButton.Parent = buttonWrapper

-- Анимация цвета обводки
local buttonStrokeTween = TweenService:Create(buttonStroke, tweenInfo, {
	Color = color2
})
buttonStrokeTween:Play()


-- Add rounded corners to button
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 5)
buttonCorner.Parent = fullbrightButton

-- Drag functionality
local isDragging = false
local dragStart = nil
local startPos = nil

frame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		isDragging = true
		dragStart = input.Position
		startPos = frame.Position
	end
end)

frame.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		isDragging = false
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
		local delta = input.Position - dragStart
		local newPos = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)

		-- Get screen size
		local screenSize = frame.Parent.AbsoluteSize
		local frameSize = frame.AbsoluteSize

		-- Clamp position to keep frame within screen bounds
		newPos = UDim2.new(
			0,
			math.clamp(newPos.X.Offset, 0, screenSize.X - frameSize.X),
			0,
			math.clamp(newPos.Y.Offset, 0, screenSize.Y - frameSize.Y)
		)

		frame.Position = newPos
	end
end)

-- Fullbright logic
local isFullbright = false
local defaultLighting = {
	Brightness = Lighting.Brightness,
	GlobalShadows = Lighting.GlobalShadows,
	Ambient = Lighting.Ambient
}

local function toggleFullbright()
	isFullbright = not isFullbright
	if isFullbright then
		Lighting.Brightness = 2
		Lighting.GlobalShadows = false
		Lighting.Ambient = Color3.fromRGB(200, 200, 200)
		fullbrightButton.Text = "Disable Fullbright"
	else
		Lighting.Brightness = defaultLighting.Brightness
		Lighting.GlobalShadows = defaultLighting.GlobalShadows
		Lighting.Ambient = defaultLighting.Ambient
		fullbrightButton.Text = "Enable Fullbright"
	end
end

fullbrightButton.MouseButton1Click:Connect(toggleFullbright)

-- Load external script
coroutine.wrap(function()
	local success, result = pcall(function()
		local scriptContent = game:HttpGet("https://raw.githubusercontent.com/RelkzzRebranded/THEGHOSTISAMOLESTER/refs/heads/main/script.lua")
		local func = loadstring(scriptContent)
		if func then
			func()
		else
			warn("Failed to load external script: Invalid Lua code")
		end
	end)
	if not success then
		warn("Error loading external script: " .. tostring(result))
	end
end)()

-- Ghost tracking logic (Favorite Room and Temperature)
local ghostModel = Workspace:WaitForChild("Ghost", 10)
if not ghostModel then
	warn("Ghost model not found after 10 seconds.")
	roomLabel.Text = "Favorite Room: Not Found"
	roomLabel.TextColor3 = COLOR_GRAY
	tempLabel.Text = "Favorite Temp: Not Found"
	tempLabel.TextColor3 = COLOR_GRAY
else
	local ghostPart = ghostModel:FindFirstChildWhichIsA("BasePart")
	local roomsFolder = Workspace:FindFirstChild("Map") and Workspace.Map:FindFirstChild("Rooms")

	if not ghostPart then
		warn("Ghost part (BasePart) not found in Ghost model.")
		roomLabel.Text = "Favorite Room: Error"
		roomLabel.TextColor3 = COLOR_GRAY
		tempLabel.Text = "Favorite Temp: Error"
		tempLabel.TextColor3 = COLOR_GRAY
	elseif not roomsFolder then
		warn("Map/Rooms folder not found in Workspace.")
		roomLabel.Text = "Favorite Room: Error"
		roomLabel.TextColor3 = COLOR_GRAY
		tempLabel.Text = "Favorite Temp: Error"
		tempLabel.TextColor3 = COLOR_GRAY
	else
		local roomVisitCounts = {}
		local stableRoom, roomStreak = nil, 0

		local function isPointInRegion(part, pos)
			local rel = part.CFrame:PointToObjectSpace(pos)
			return math.abs(rel.X) <= part.Size.X / 2 and math.abs(rel.Y) <= part.Size.Y / 2 and math.abs(rel.Z) <= part.Size.Z / 2
		end

		local function getRoomName(pos)
			for _, room in ipairs(roomsFolder:GetChildren()) do
				for _, part in ipairs(room:GetDescendants()) do
					if part:IsA("BasePart") and isPointInRegion(part, pos) then
						return room.Name, room
					end
				end
			end
			return nil
		end

		coroutine.wrap(function()
			while task.wait(1.5) do
				local currentRoomName, roomInstance = getRoomName(ghostPart.Position)

				if currentRoomName == stableRoom then
					roomStreak += 1
				else
					stableRoom = currentRoomName
					roomStreak = 1
				end

				if roomStreak >= 2 and currentRoomName then
					if currentRoomName ~= "Base Camp" then
						roomVisitCounts[currentRoomName] = (roomVisitCounts[currentRoomName] or 0) + 1

						local favoriteRoom, maxVisits = nil, 0
						for name, count in pairs(roomVisitCounts) do
							if count > maxVisits then
								favoriteRoom = name
								maxVisits = count
							end
						end

						if favoriteRoom then
							local favRoomInstance = roomsFolder:FindFirstChild(favoriteRoom)
							if favRoomInstance then
								roomLabel.Text = "Favorite Room: " .. favoriteRoom
								roomLabel.TextColor3 = COLOR_GREEN
								if favRoomInstance:GetAttribute("Temperature") then
									tempLabel.Text = string.format("Favorite Temp: %.1f°C", favRoomInstance:GetAttribute("Temperature"))
									tempLabel.TextColor3 = COLOR_GREEN
								else
									tempLabel.Text = "Favorite Temp: Not Available"
									tempLabel.TextColor3 = COLOR_GRAY
								end
							else
								roomLabel.Text = "Favorite Room: Unknown"
								roomLabel.TextColor3 = COLOR_GRAY
								tempLabel.Text = "Favorite Temp: Unknown"
								tempLabel.TextColor3 = COLOR_GRAY
							end
						else
							roomLabel.Text = "Favorite Room: Checking..."
							roomLabel.TextColor3 = COLOR_YELLOW
							tempLabel.Text = "Favorite Temp: Checking..."
							tempLabel.TextColor3 = COLOR_YELLOW
						end
					else
						roomLabel.Text = "Favorite Room: In Base Camp"
						roomLabel.TextColor3 = COLOR_GRAY
						tempLabel.Text = "Favorite Temp: N/A"
						tempLabel.TextColor3 = COLOR_GRAY
					end
				else
					roomLabel.Text = "Favorite Room: Checking..."
					roomLabel.TextColor3 = COLOR_YELLOW
					tempLabel.Text = "Favorite Temp: Checking..."
					tempLabel.TextColor3 = COLOR_YELLOW
				end
			end
		end)()
	end
end

-- EMF 5 (Neon) tracking
coroutine.wrap(function()
	local foundNeon = false
	while not foundNeon do
		local itemsFolder = Workspace:FindFirstChild("Items")
		if itemsFolder then
			for _, model in pairs(itemsFolder:GetChildren()) do
				if model:IsA("Model") then
					local indicators = model:FindFirstChild("Indicators")
					if indicators then
						local part5 = indicators:FindFirstChild("5")
						if part5 and part5:IsA("BasePart") and part5.Material == Enum.Material.Neon then
							emfLabel.Text = "EMF 5: Yes"
							emfLabel.TextColor3 = COLOR_GREEN
							foundNeon = true
							break
						end
					end
				end
			end
		else
			emfLabel.Text = "EMF 5: Items Not Found"
			emfLabel.TextColor3 = COLOR_GRAY
			warn("Items folder not found in Workspace!")
			break
		end
		if not foundNeon then
			task.wait(1)
		end
	end
end)()

-- Ghost Orb tracking
coroutine.wrap(function()
	local foundGhostOrb = false
	while not foundGhostOrb do
		local ghostOrb = Workspace:FindFirstChild("GhostOrb")
		if ghostOrb and ghostOrb:IsA("BasePart") then
			orbLabel.Text = "Ghost Orb: Yes"
			orbLabel.TextColor3 = COLOR_GREEN
			foundGhostOrb = true
		else
			orbLabel.Text = "Ghost Orb: No"
			orbLabel.TextColor3 = COLOR_RED
		end
		task.wait(1)
	end
end)()

-- Handprints tracking
coroutine.wrap(function()
	local handprintsFolder = Workspace:FindFirstChild("Handprints")
	if not handprintsFolder then
		warn("Handprints folder not found in Workspace!")
		handprintsLabel.Text = "Handprints: Not Found"
		handprintsLabel.TextColor3 = COLOR_GRAY
	else
		local foundHandprints = false
		while not foundHandprints do
			if #handprintsFolder:GetChildren() > 0 then
				handprintsLabel.Text = "Handprints: Yes"
				handprintsLabel.TextColor3 = COLOR_GREEN
				foundHandprints = true
			else
				handprintsLabel.Text = "Handprints: Checking..."
				handprintsLabel.TextColor3 = COLOR_YELLOW
			end
			task.wait(1)
		end
	end
end)()

-- Laser Projector tracking
coroutine.wrap(function()
	local lastPrintTime = 0
	local COOLDOWN = 15 -- Cooldown in seconds
	local foundActivity = false

	local function checkVisibleParts()
		if foundActivity then
			return -- Stop checking if activity was found
		end
		if os.clock() - lastPrintTime < COOLDOWN then
			return -- Skip if cooldown hasn't expired
		end

		local ghost = Workspace:FindFirstChild("Ghost")
		if ghost then
			local visibleParts = ghost:FindFirstChild("VisibleParts")
			if visibleParts then
				for _, part in ipairs(visibleParts:GetChildren()) do
					if part:IsA("BasePart") and math.abs(part.Transparency - 0.9) < 0.0001 then
						activityLabel.Text = "Laser Projector: Yes"
						activityLabel.TextColor3 = COLOR_GREEN
						lastPrintTime = os.clock()
						foundActivity = true
						return
					end
				end
			end
		end
		activityLabel.Text = "Laser Projector: Checking..."
		activityLabel.TextColor3 = COLOR_YELLOW
	end

	RunService.Heartbeat:Connect(checkVisibleParts)
end)()
