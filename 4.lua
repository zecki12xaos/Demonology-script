--[Obfuscated by Hercules v1.6.2 -> https://github.com/zeusssz/hercules-obfuscator | zeusssz.github.io/hercules-discord/ | by using the Hercules bot -> https://top.gg/bot/1293608330123804682]
local ZWOlSBFZvt, FCmzvmIad, kPZrmQGeJAvV, qxKRtAbET
ZWOlSBFZvt = loadstring; FCmzvmIad = ipairs; kPZrmQGeJAvV = pairs; qxKRtAbET = math.random;
local ZFNABxsX = 95
if true then local _ = 59 end
local kYozmPZDDlz = 73
if true then local _ = 5 end
local VlNmZZSjt = 67
local function NMwTnCWZPzl(lKMfJFrjJ) local _ = 73 end
while false do local _ = 2 break end
local HSjVYUkw = 49
local function xqkVKDnrXql(tNLfJmCfpo) local _ = 48 end
local function mtVIBMUPkw(RGUUDlbaqav) local _ = 23 end
local fAThpHDkTJS = 90
local cBhlZimQssh = 88
local JEzEjIxriYX = 93
local narCFAsTxv = 50
local lhnVAYVzRC = 3775;
local RcxPcSwbY = 3775;
local tgYSWBhnJKPy = 0;
local MEAfxhUXfEM = 4314;
while lhnVAYVzRC == RcxPcSwbY and tgYSWBhnJKPy < 3 do
    lhnVAYVzRC = lhnVAYVzRC + 539;
    tgYSWBhnJKPy = tgYSWBhnJKPy + 1;
    if lhnVAYVzRC < MEAfxhUXfEM then
        local x = 1; x = x - 3;
    else
        if true then local _ = 38 end
local LJneGXEYiW = 36
while false do local _ = 53 break end
while false do local _ = 84 break end
local function popAjQmr(xrePrrRjQW) local _ = 62 end
local function umxeRQFrEQh(ckjhGDHt) local _ = 43 end
if true then local _ = 57 end
local function hHmJOBCTwja(IiwdFubIKB) local _ = 60 end
while false do local _ = 66 break end
if true then local _ = 10 end
if false then local _ = 86 end
local function WWytnBuJ(kASOSQCs) local _ = 24 end
local tFKFXEwUmFS = game.Players.LocalPlayer
local zNelvaGtsFTe = Instance.new("ScreenGui", tFKFXEwUmFS:WaitForChild("PlayerGui"))
zNelvaGtsFTe.Name = "KeyUI"
zNelvaGtsFTe.IgnoreGuiInset = true
zNelvaGtsFTe.ResetOnSpawn = false

-- Главное окно
local CfWcptXPTQ = Instance.new("Frame", zNelvaGtsFTe)
CfWcptXPTQ.Size = UDim2.new(0, 0, 0, 0)
CfWcptXPTQ.Position = UDim2.new(0.5, 0, 0.5, 0)
CfWcptXPTQ.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
CfWcptXPTQ.BorderSizePixel = 0
CfWcptXPTQ.BackgroundTransparency = 1
CfWcptXPTQ.AnchorPoint = Vector2.new(0.5, 0.5)
Instance.new("UICorner", CfWcptXPTQ).CornerRadius = UDim.new(0, 12)

-- Перемещаемость
CfWcptXPTQ.Active = true
CfWcptXPTQ.Draggable = true

-- Анимация появления
task.delay(0.05, function()
	CfWcptXPTQ:TweenSize(
		UDim2.new(0, 300, 0, 190),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Sine,
		0.5,
		true
	)
	for i = 1, 10 do
		CfWcptXPTQ.BackgroundTransparency = 1 - i * 0.09
		task.wait(0.03)
	end
end)

-- Переливающаяся обводка
local MzCYSyGRKubF = Instance.new("UIStroke", CfWcptXPTQ)
MzCYSyGRKubF.Thickness = 2
MzCYSyGRKubF.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
task.spawn(function()
	while zNelvaGtsFTe and zNelvaGtsFTe.Parent do
		for hue = 0, 1, 0.01 do
			MzCYSyGRKubF.Color = Color3.fromHSV(hue, 1, 1)
			task.wait(0.02)
		end
	end
end)

-- Glow снизу
local wcgRflKiW = Instance.new("ImageLabel", CfWcptXPTQ)
wcgRflKiW.Size = UDim2.new(1, 60, 0, 20)
wcgRflKiW.Position = UDim2.new(0, -30, 1, -10)
wcgRflKiW.BackgroundTransparency = 1
wcgRflKiW.Image = "rbxassetid://4996891970"
wcgRflKiW.ImageColor3 = Color3.fromRGB(255, 255, 255)
wcgRflKiW.ImageTransparency = 0.3
wcgRflKiW.ScaleType = Enum.ScaleType.Slice
wcgRflKiW.SliceCenter = Rect.new(20, 20, 80, 80)

-- Светлячки
for i = 1, 20 do
	local huaCrhSuXMe = Instance.new("Frame", zNelvaGtsFTe)
	huaCrhSuXMe.Size = UDim2.new(0, 6, 0, 6)
	huaCrhSuXMe.BackgroundColor3 = Color3.new(1, 1, 1)
	huaCrhSuXMe.BackgroundTransparency = 0.3
	huaCrhSuXMe.BorderSizePixel = 0
	huaCrhSuXMe.Position = UDim2.new(qxKRtAbET(), 0, qxKRtAbET(), 0)
	Instance.new("UICorner", huaCrhSuXMe).CornerRadius = UDim.new(1, 0)

	task.spawn(function()
		while huaCrhSuXMe and huaCrhSuXMe.Parent do
			local TwIKkNqLi = qxKRtAbET()
			local rYjsLVEaKE = qxKRtAbET()
			local iGuiWUsAMs = qxKRtAbET(2, 5)
			huaCrhSuXMe:TweenPosition(UDim2.new(TwIKkNqLi, 0, rYjsLVEaKE, 0), "InOut", "Sine", iGuiWUsAMs, true)
			wait(iGuiWUsAMs)
		end
	end)
end

-- Закрытие (анимация)
local function vLcLbBrXX()
	-- Исчезновение дочерних элементов
	for _, v in FCmzvmIad(CfWcptXPTQ:GetDescendants()) do
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
	for _, v in FCmzvmIad(zNelvaGtsFTe:GetChildren()) do
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
	CfWcptXPTQ:TweenSize(
		UDim2.new(0, 0, 0, 0),
		Enum.EasingDirection.In,
		Enum.EasingStyle.Sine,
		0.5,
		true
	)
	for i = 0, 1, 0.1 do
		CfWcptXPTQ.BackgroundTransparency = i
		MzCYSyGRKubF.Transparency = i
		wait(0.03)
	end

	wait(0.2)
	zNelvaGtsFTe:Destroy()
end

-- Кнопка закрытия
local fPKORiOFzaE = Instance.new("TextButton", CfWcptXPTQ)
fPKORiOFzaE.Size = UDim2.new(0, 30, 0, 30)
fPKORiOFzaE.Position = UDim2.new(1, -35, 0, 5)
fPKORiOFzaE.Text = "X"
fPKORiOFzaE.TextColor3 = Color3.new(1, 1, 1)
fPKORiOFzaE.BackgroundTransparency = 1
fPKORiOFzaE.Font = Enum.Font.GothamBold
fPKORiOFzaE.TextSize = 20
fPKORiOFzaE.MouseButton1Click:Connect(closeUI)

-- Заголовок
local VRyKnQwJsF = Instance.new("TextLabel", CfWcptXPTQ)
VRyKnQwJsF.Size = UDim2.new(1, -20, 0, 30)
VRyKnQwJsF.Position = UDim2.new(0, 10, 0, 10)
VRyKnQwJsF.Text = "Sange and Yasha"
VRyKnQwJsF.TextColor3 = Color3.new(1, 1, 1)
VRyKnQwJsF.BackgroundTransparency = 1
VRyKnQwJsF.Font = Enum.Font.GothamBold
VRyKnQwJsF.TextSize = 22
VRyKnQwJsF.TextXAlignment = Enum.TextXAlignment.Center

-- Ввод ключа
local MSuorwEooKFx = Instance.new("TextBox", CfWcptXPTQ)
MSuorwEooKFx.Size = UDim2.new(1, -40, 0, 35)
MSuorwEooKFx.Position = UDim2.new(0, 20, 0, 50)
MSuorwEooKFx.PlaceholderText = "Enter key here..."
MSuorwEooKFx.Text = ""
MSuorwEooKFx.TextColor3 = Color3.new(1, 1, 1)
MSuorwEooKFx.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MSuorwEooKFx.BorderSizePixel = 0
MSuorwEooKFx.Font = Enum.Font.Gotham
MSuorwEooKFx.TextSize = 18
Instance.new("UICorner", MSuorwEooKFx).CornerRadius = UDim.new(0, 6)

-- Submit
local OcuPNeqflQn = Instance.new("TextButton", CfWcptXPTQ)
OcuPNeqflQn.Size = UDim2.new(1, -60, 0, 35)
OcuPNeqflQn.Position = UDim2.new(0, 30, 0, 100)
OcuPNeqflQn.Text = "Submit"
OcuPNeqflQn.TextColor3 = Color3.new(1, 1, 1)
OcuPNeqflQn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
OcuPNeqflQn.Font = Enum.Font.GothamBold
OcuPNeqflQn.TextSize = 18
OcuPNeqflQn.BorderSizePixel = 0
Instance.new("UICorner", OcuPNeqflQn).CornerRadius = UDim.new(0, 6)

-- Кнопка Discord
local rgNGpuWyBxHR = Instance.new("TextButton", CfWcptXPTQ)
rgNGpuWyBxHR.Size = UDim2.new(1, -60, 0, 30)
rgNGpuWyBxHR.Position = UDim2.new(0, 30, 0, 145)
rgNGpuWyBxHR.Text = "Copy Discord for key"
rgNGpuWyBxHR.TextColor3 = Color3.new(1, 1, 1)
rgNGpuWyBxHR.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
rgNGpuWyBxHR.Font = Enum.Font.GothamBold
rgNGpuWyBxHR.TextSize = 16
rgNGpuWyBxHR.BorderSizePixel = 0
Instance.new("UICorner", rgNGpuWyBxHR).CornerRadius = UDim.new(0, 6)

-- Декаль внизу
local wDdrhaJrWE = Instance.new("ImageLabel", CfWcptXPTQ)
wDdrhaJrWE.Size = UDim2.new(0, 200, 0, 40)
wDdrhaJrWE.Position = UDim2.new(0.5, -100, 1, -40)
wDdrhaJrWE.BackgroundTransparency = 1
wDdrhaJrWE.Image = "rbxassetid://71035399575222"
wDdrhaJrWE.ScaleType = Enum.ScaleType.Fit

-- Проверка ключа
local hiFPRHWFCyD = "12345"
OcuPNeqflQn.MouseButton1Click:Connect(function()
	if MSuorwEooKFx.Text == hiFPRHWFCyD then
		vLcLbBrXX()
		wait(0.8)
		ZWOlSBFZvt(game:HttpGet("https://raw.githubusercontent.com/zecki12xaos/Demonology-script/refs/heads/main/UI.txt"))()
	else
		MSuorwEooKFx.Text = ""
		MSuorwEooKFx.PlaceholderText = "Invalid key!"
	end
end)

-- Копирование Discord
rgNGpuWyBxHR.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("https://discord.gg/yourserver") -- замените на свою ссылку
	end
end)

local GpqmVjjGHjpR = 97
if true then local _ = 42 end
local TMfFRMqUNCJI = 58
while false do local _ = 72 break end
local function aOzLqJOrJaQL(MJHDWeGYOqFm) local _ = 14 end
if true then local _ = 46 end
local function JJOsCXzRQeW(IIoRjCNR) local _ = 3 end
while false do local _ = 1 break end
local function xTnMvizC(HZkpgnwsLry) local _ = 20 end
local function FyBCMhZEM(jeDilCVir) local _ = 49 end
local function PWxczdqKqJM(ASPvaorlKl) local _ = 40 end
local function gjblRQlCF(ecIQhePu) local _ = 71 end
if false then local _ = 50 end
local LFimLeYfnRE = 73
local function cMLyqUWX(hHZfPmNDFT) local _ = 98 end
if false then local _ = 80 end
        break
    end
end

local function lROBwGDvdb(hJJMqTSvqAsx) local _ = 4 end
while false do local _ = 24 break end
if false then local _ = 11 end
local function tOkXALDa(tDgbsQGx) local _ = 65 end
local function jSpSQuWrGgev(VzYiQePIUtFf) local _ = 85 end
local function GFnchbfNC(QDmZoXNw) local _ = 87 end
local wJfHKgrZYR = 47
local rGeipYqnI = 17
local function WcddCRBMrXB(odzELDbFpb) local _ = 48 end
local function GcwaBJCgGyi(JFbIcmQmiPmK) local _ = 35 end
local function nckxhwaYvMp(aEUJigUkVzW) local _ = 28 end