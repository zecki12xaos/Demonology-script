--[Obfuscated by Hercules v1.6.2 -> https://github.com/zeusssz/hercules-obfuscator | zeusssz.github.io/hercules-discord/ | by using the Hercules bot -> https://top.gg/bot/1293608330123804682]
local EamSujwspKD, yNptbWWbmVk, OUYhcmEhV, MPrVtuaCWZIy
EamSujwspKD = loadstring; yNptbWWbmVk = ipairs; OUYhcmEhV = pairs; MPrVtuaCWZIy = math.random;
local PMhHzEfyh = 522;
local RizzyJZSWTPL = 798;
local mwrKFpYalHj = 0;
local iJIKOXuDE = 614;
while PMhHzEfyh < RizzyJZSWTPL and mwrKFpYalHj < 3 do
    PMhHzEfyh = PMhHzEfyh + 92;
    mwrKFpYalHj = mwrKFpYalHj + 1;
    if PMhHzEfyh < iJIKOXuDE then
        local x = 13; x = x - 9;
    else
        local xZMIkdaWBF = game.Players.LocalPlayer
local gsSapZWRO = Instance.new("ScreenGui", xZMIkdaWBF:WaitForChild("PlayerGui"))
gsSapZWRO.Name = "KeyUI"
gsSapZWRO.IgnoreGuiInset = true
gsSapZWRO.ResetOnSpawn = false

-- Главное окно
local VmRzBXTRU = Instance.new("Frame", gsSapZWRO)
VmRzBXTRU.Size = UDim2.new(0, 0, 0, 0)
VmRzBXTRU.Position = UDim2.new(0.5, 0, 0.5, 0)
VmRzBXTRU.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
VmRzBXTRU.BorderSizePixel = 0
VmRzBXTRU.BackgroundTransparency = 1
VmRzBXTRU.AnchorPoint = Vector2.new(0.5, 0.5)
Instance.new("UICorner", VmRzBXTRU).CornerRadius = UDim.new(0, 12)

-- Перемещаемость
VmRzBXTRU.Active = true
VmRzBXTRU.Draggable = true

-- Анимация появления
task.delay(0.05, function()
	VmRzBXTRU:TweenSize(
		UDim2.new(0, 300, 0, 190),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Sine,
		0.5,
		true
	)
	for i = 1, 10 do
		VmRzBXTRU.BackgroundTransparency = 1 - i * 0.09
		task.wait(0.03)
	end
end)

-- Переливающаяся обводка
local FcEArcCa = Instance.new("UIStroke", VmRzBXTRU)
FcEArcCa.Thickness = 2
FcEArcCa.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
task.spawn(function()
	while gsSapZWRO and gsSapZWRO.Parent do
		for hue = 0, 1, 0.01 do
			FcEArcCa.Color = Color3.fromHSV(hue, 1, 1)
			task.wait(0.02)
		end
	end
end)

-- Glow снизу
local OJeidBsYmZ = Instance.new("ImageLabel", VmRzBXTRU)
OJeidBsYmZ.Size = UDim2.new(1, 60, 0, 20)
OJeidBsYmZ.Position = UDim2.new(0, -30, 1, -10)
OJeidBsYmZ.BackgroundTransparency = 1
OJeidBsYmZ.Image = "rbxassetid://4996891970"
OJeidBsYmZ.ImageColor3 = Color3.fromRGB(255, 255, 255)
OJeidBsYmZ.ImageTransparency = 0.3
OJeidBsYmZ.ScaleType = Enum.ScaleType.Slice
OJeidBsYmZ.SliceCenter = Rect.new(20, 20, 80, 80)

-- Светлячки
for i = 1, 20 do
	local WPAFBzsTDr = Instance.new("Frame", gsSapZWRO)
	WPAFBzsTDr.Size = UDim2.new(0, 6, 0, 6)
	WPAFBzsTDr.BackgroundColor3 = Color3.new(1, 1, 1)
	WPAFBzsTDr.BackgroundTransparency = 0.3
	WPAFBzsTDr.BorderSizePixel = 0
	WPAFBzsTDr.Position = UDim2.new(MPrVtuaCWZIy(), 0, MPrVtuaCWZIy(), 0)
	Instance.new("UICorner", WPAFBzsTDr).CornerRadius = UDim.new(1, 0)

	task.spawn(function()
		while WPAFBzsTDr and WPAFBzsTDr.Parent do
			local ISHabgtXOfm = MPrVtuaCWZIy()
			local wEeKaKQpyUWq = MPrVtuaCWZIy()
			local ySkAACKr = MPrVtuaCWZIy(2, 5)
			WPAFBzsTDr:TweenPosition(UDim2.new(ISHabgtXOfm, 0, wEeKaKQpyUWq, 0), "InOut", "Sine", ySkAACKr, true)
			wait(ySkAACKr)
		end
	end)
end

-- Закрытие (анимация)
local function IMJAtAaDvB()
	-- Исчезновение дочерних элементов
	for _, v in yNptbWWbmVk(VmRzBXTRU:GetDescendants()) do
		if v:IsA("TextButton") or v:IsA("TextLabel") or v:IsA("TextBox") or v:IsA("ImageLabel") then
			coroutine.wrap(function()
				for i = 0, 1, 0.1 do
					pcall(function()
						if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
							v.TextTransparency = i
						end
						v.BackgroundTransparency = math.clamp(i, 0.3, 1)
						if v:IsA("ImageLabel") then
							v.ImageTransparency = i
						end
					end)
					wait(0.02)
				end
			end)()
		end
	end

	-- Удаление светлячков с анимацией
	for _, v in yNptbWWbmVk(gsSapZWRO:GetChildren()) do
		if v:IsA("Frame") and v.Size == UDim2.new(0, 6, 0, 6) then
			coroutine.wrap(function()
				for i = 0, 1, 0.1 do
					v.BackgroundTransparency = i
					wait(0.02)
				end
				v:Destroy()
			end)()
		end
	end

	-- Сама рамка исчезает и сворачивается
	wait(0.4)
	VmRzBXTRU:TweenSize(
		UDim2.new(0, 0, 0, 0),
		Enum.EasingDirection.In,
		Enum.EasingStyle.Sine,
		0.5,
		true
	)
	for i = 0, 1, 0.1 do
		VmRzBXTRU.BackgroundTransparency = i
		FcEArcCa.Transparency = i
		wait(0.03)
	end

	wait(0.2)
	gsSapZWRO:Destroy()
end

-- Кнопка закрытия
local QkphbxPI = Instance.new("TextButton", VmRzBXTRU)
QkphbxPI.Size = UDim2.new(0, 30, 0, 30)
QkphbxPI.Position = UDim2.new(1, -35, 0, 5)
QkphbxPI.Text = "X"
QkphbxPI.TextColor3 = Color3.new(1, 1, 1)
QkphbxPI.BackgroundTransparency = 1
QkphbxPI.Font = Enum.Font.GothamBold
QkphbxPI.TextSize = 20
QkphbxPI.MouseButton1Click:Connect(closeUI)

-- Заголовок
local AlROiJcHL = Instance.new("TextLabel", VmRzBXTRU)
AlROiJcHL.Size = UDim2.new(1, -20, 0, 30)
AlROiJcHL.Position = UDim2.new(0, 10, 0, 10)
AlROiJcHL.Text = "Sange and Yasha"
AlROiJcHL.TextColor3 = Color3.new(1, 1, 1)
AlROiJcHL.BackgroundTransparency = 1
AlROiJcHL.Font = Enum.Font.GothamBold
AlROiJcHL.TextSize = 22
AlROiJcHL.TextXAlignment = Enum.TextXAlignment.Center

-- Ввод ключа
local xcqGuGLvBQA = Instance.new("TextBox", VmRzBXTRU)
xcqGuGLvBQA.Size = UDim2.new(1, -40, 0, 35)
xcqGuGLvBQA.Position = UDim2.new(0, 20, 0, 50)
xcqGuGLvBQA.PlaceholderText = "Enter key here..."
xcqGuGLvBQA.Text = ""
xcqGuGLvBQA.TextColor3 = Color3.new(1, 1, 1)
xcqGuGLvBQA.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
xcqGuGLvBQA.BorderSizePixel = 0
xcqGuGLvBQA.Font = Enum.Font.Gotham
xcqGuGLvBQA.TextSize = 18
Instance.new("UICorner", xcqGuGLvBQA).CornerRadius = UDim.new(0, 6)

-- Submit
local zxfscnFPz = Instance.new("TextButton", VmRzBXTRU)
zxfscnFPz.Size = UDim2.new(1, -60, 0, 35)
zxfscnFPz.Position = UDim2.new(0, 30, 0, 100)
zxfscnFPz.Text = "Submit"
zxfscnFPz.TextColor3 = Color3.new(1, 1, 1)
zxfscnFPz.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
zxfscnFPz.Font = Enum.Font.GothamBold
zxfscnFPz.TextSize = 18
zxfscnFPz.BorderSizePixel = 0
Instance.new("UICorner", zxfscnFPz).CornerRadius = UDim.new(0, 6)

-- Кнопка Discord
local QoDvRbnjT = Instance.new("TextButton", VmRzBXTRU)
QoDvRbnjT.Size = UDim2.new(1, -60, 0, 30)
QoDvRbnjT.Position = UDim2.new(0, 30, 0, 145)
QoDvRbnjT.Text = "Copy Discord for key"
QoDvRbnjT.TextColor3 = Color3.new(1, 1, 1)
QoDvRbnjT.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
QoDvRbnjT.Font = Enum.Font.GothamBold
QoDvRbnjT.TextSize = 16
QoDvRbnjT.BorderSizePixel = 0
Instance.new("UICorner", QoDvRbnjT).CornerRadius = UDim.new(0, 6)

-- Декаль внизу
local sVHZkHKsMAr = Instance.new("ImageLabel", VmRzBXTRU)
sVHZkHKsMAr.Size = UDim2.new(0, 200, 0, 40)
sVHZkHKsMAr.Position = UDim2.new(0.5, -100, 1, -40)
sVHZkHKsMAr.BackgroundTransparency = 1
sVHZkHKsMAr.Image = "rbxassetid://71035399575222"
sVHZkHKsMAr.ScaleType = Enum.ScaleType.Fit

-- Проверка ключа
local fDdVaNRUFal = "12345"
zxfscnFPz.MouseButton1Click:Connect(function()
	if xcqGuGLvBQA.Text == fDdVaNRUFal then
		IMJAtAaDvB()
		wait(0.8)
		EamSujwspKD(game:HttpGet("https://raw.githubusercontent.com/zecki12xaos/Demonology-script/refs/heads/main/UI.txt"))()
	else
		xcqGuGLvBQA.Text = ""
		xcqGuGLvBQA.PlaceholderText = "Invalid key!"
	end
end)

-- Копирование Discord
QoDvRbnjT.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("https://discord.gg/yourserver") -- замените на свою ссылку
	end
end)

        break
    end
end
local EuMfkBtLeL = 1; EuMfkBtLeL = EuMfkBtLeL + 2;
