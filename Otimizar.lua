-- Delta Executor Script - TONY HUB 2026
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

-- Remove interface anterior se já estiver aberta
if CoreGui:FindFirstChild("GaaraBoostGUI") then
    CoreGui.GaaraBoostGUI:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "GaaraBoostGUI"
ScreenGui.Parent = CoreGui

-- 1. BOTÃO FLUTUANTE COM O SÍMBOLO DO GAARA E CONTORNO PRETO
local FloatingButton = Instance.new("TextButton")
FloatingButton.Name = "FloatingButton"
FloatingButton.Parent = ScreenGui
FloatingButton.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
FloatingButton.Position = UDim2.new(0.05, 0, 0.2, 0)
FloatingButton.Size = UDim2.new(0, 60, 0, 60)
FloatingButton.Font = Enum.Font.GothamBold
FloatingButton.Text = "愛"
FloatingButton.TextColor3 = Color3.fromRGB(240, 50, 50)
FloatingButton.TextSize = 35
FloatingButton.Draggable = true

local TextStroke = Instance.new("UIStroke")
TextStroke.Color = Color3.fromRGB(0, 0, 0)
TextStroke.Thickness = 3
TextStroke.Parent = FloatingButton

local UICornerBtn = Instance.new("UICorner")
UICornerBtn.CornerRadius = UDim.new(1, 0)
UICornerBtn.Parent = FloatingButton

local UIStrokeBtn = Instance.new("UIStroke")
UIStrokeBtn.Color = Color3.fromRGB(200, 50, 50)
UIStrokeBtn.Thickness = 2
UIStrokeBtn.Parent = FloatingButton

-- 2. PAINEL PRINCIPAL (TONY HUB - COMPACTO)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 28)
MainFrame.Position = UDim2.new(0.5, -110, 0.5, -115)
MainFrame.Size = UDim2.new(0, 220, 0, 230)
MainFrame.Visible = false
MainFrame.Active = true
MainFrame.Draggable = true

local UICornerMain = Instance.new("UICorner")
UICornerMain.CornerRadius = UDim.new(0, 12)
UICornerMain.Parent = MainFrame

local UIStrokeMain = Instance.new("UIStroke")
UIStrokeMain.Color = Color3.fromRGB(45, 45, 55)
UIStrokeMain.Thickness = 1.5
UIStrokeMain.Parent = MainFrame

-- Título do Painel (TONY HUB)
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0, 8)
Title.Size = UDim2.new(1, 0, 0, 20)
Title.Font = Enum.Font.GothamBold
Title.Text = "TONY HUB"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14

-- Botão Modo Massinha
local ClayButton = Instance.new("TextButton")
ClayButton.Parent = MainFrame
ClayButton.BackgroundColor3 = Color3.fromRGB(45, 25, 25)
ClayButton.Position = UDim2.new(0.1, 0, 0.18, 0)
ClayButton.Size = UDim2.new(0.8, 0, 0, 32)
ClayButton.Font = Enum.Font.GothamMedium
ClayButton.Text = "Modo Massinha: OFF"
ClayButton.TextColor3 = Color3.fromRGB(255, 100, 100)
ClayButton.TextSize = 11

local UICornerClay = Instance.new("UICorner")
UICornerClay.CornerRadius = UDim.new(0, 6)
UICornerClay.Parent = ClayButton

-- Botão Otimizar Ping
local PingButton = Instance.new("TextButton")
PingButton.Parent = MainFrame
PingButton.BackgroundColor3 = Color3.fromRGB(45, 25, 25)
PingButton.Position = UDim2.new(0.1, 0, 0.38, 0)
PingButton.Size = UDim2.new(0.8, 0, 0, 32)
PingButton.Font = Enum.Font.GothamMedium
PingButton.Text = "Otimizar Ping: OFF"
PingButton.TextColor3 = Color3.fromRGB(255, 100, 100)
PingButton.TextSize = 11

local UICornerPing = Instance.new("UICorner")
UICornerPing.CornerRadius = UDim.new(0, 6)
UICornerPing.Parent = PingButton

-- Botão Contador de FPS
local FpsButton = Instance.new("TextButton")
FpsButton.Parent = MainFrame
FpsButton.BackgroundColor3 = Color3.fromRGB(45, 25, 25)
FpsButton.Position = UDim2.new(0.1, 0, 0.58, 0)
FpsButton.Size = UDim2.new(0.8, 0, 0, 32)
FpsButton.Font = Enum.Font.GothamMedium
FpsButton.Text = "Contador FPS: OFF"
FpsButton.TextColor3 = Color3.fromRGB(255, 100, 100)
FpsButton.TextSize = 11

local UICornerFps = Instance.new("UICorner")
UICornerFps.CornerRadius = UDim.new(0, 6)
UICornerFps.Parent = FpsButton

-- Assinatura "Made in Gemini"
local GeminiLabel = Instance.new("TextLabel")
GeminiLabel.Parent = MainFrame
GeminiLabel.BackgroundTransparency = 1
GeminiLabel.Position = UDim2.new(0, 0, 0.81, 0)
GeminiLabel.Size = UDim2.new(1, 0, 0, 18)
GeminiLabel.Font = Enum.Font.GothamBold
GeminiLabel.Text = "Made in Gemini"
GeminiLabel.TextColor3 = Color3.fromRGB(130, 100, 255)
GeminiLabel.TextSize = 10

-- 3. DISPLAY DO CONTADOR DE FPS FORA DO PAINEL
local FpsDisplay = Instance.new("TextLabel")
FpsDisplay.Name = "FpsDisplay"
FpsDisplay.Parent = ScreenGui
FpsDisplay.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
FpsDisplay.BackgroundTransparency = 0.3
FpsDisplay.Position = UDim2.new(0.05, 0, 0.12, 0)
FpsDisplay.Size = UDim2.new(0, 100, 0, 26)
FpsDisplay.Font = Enum.Font.GothamBold
FpsDisplay.Text = "FPS: 60"
FpsDisplay.TextColor3 = Color3.fromRGB(100, 255, 100)
FpsDisplay.TextSize = 12
FpsDisplay.Visible = false

local UICornerDisplay = Instance.new("UICorner")
UICornerDisplay.CornerRadius = UDim.new(0, 6)
UICornerDisplay.Parent = FpsDisplay

-- Lógica para Abrir e Fechar o Painel ao clicar na bolinha do Gaara
local isOpen = false
FloatingButton.MouseButton1Click:Connect(function()
    isOpen = not isOpen
    MainFrame.Visible = isOpen
    
    TweenService:Create(FloatingButton, TweenInfo.new(0.08), {Size = UDim2.new(0, 53, 0, 53)}):Play()
    task.wait(0.08)
    TweenService:Create(FloatingButton, TweenInfo.new(0.08), {Size = UDim2.new(0, 60, 0, 60)}):Play()
end)

-- Função Modo Massinha
local function applyClayMode()
    local lighting = game:GetService("Lighting")
    local terrain = workspace:FindFirstChildOfClass("Terrain")

    lighting.GlobalShadows = false
    lighting.FogEnd = 999999
    pcall(function()
        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
    end)

    if terrain then
        terrain.WaterWaveSize = 0
        terrain.WaterWaveSpeed = 0
        terrain.WaterTransparency = 1
        terrain.WaterReflectance = 0
    end

    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Material = Enum.Material.SmoothPlastic
            v.Reflectance = 0
            v.CastShadow = false
        elseif v:IsA("Decal") or v:IsA("Texture") then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        end
    end
end

-- Função Otimizador de Ping
local pingConnection = nil
local function applyAdvancedPingOptimizer(state)
    pcall(function()
        if state then
            settings().Network.IncomingReplicationLag = 0
            pingConnection = RunService.Heartbeat:Connect(function()
                pcall(function()
                    settings().Network.SendRate = 60
                    settings().Network.IncomingReplicationLag = 0
                end)
            end)
        else
            if pingConnection then
                pingConnection:Disconnect()
                pingConnection = nil
            end
            settings().Network.IncomingReplicationLag = -1
        end
    end)
end

-- Função Contador de FPS
local fpsConnection = nil
local function toggleFpsCounter(state)
    if state then
        FpsDisplay.Visible = true
        local lastTick = tick()
        local frames = 0
        
        fpsConnection = RunService.RenderStepped:Connect(function()
            frames = frames + 1
            local currentTick = tick()
            if currentTick - lastTick >= 1 then
                local fps = math.floor(frames / (currentTick - lastTick))
                FpsDisplay.Text = "FPS: " .. tostring(fps)
                
                if fps >= 45 then
                    FpsDisplay.TextColor3 = Color3.fromRGB(100, 255, 100)
                elseif fps >= 20 then
                    FpsDisplay.TextColor3 = Color3.fromRGB(255, 255, 100)
                else
                    FpsDisplay.TextColor3 = Color3.fromRGB(255, 100, 100)
                end
                
                frames = 0
                lastTick = currentTick
            end
        end)
    else
        FpsDisplay.Visible = false
        if fpsConnection then
            fpsConnection:Disconnect()
            fpsConnection = nil
        end
    end
end

-- Ações dos Botões com Cores Dinâmicas
local clayActive = false
ClayButton.MouseButton1Click:Connect(function()
    clayActive = not clayActive
    if clayActive then
        ClayButton.Text = "Modo Massinha: ON"
        ClayButton.TextColor3 = Color3.fromRGB(100, 255, 100)
        ClayButton.BackgroundColor3 = Color3.fromRGB(25, 45, 25)
        applyClayMode()
    else
        ClayButton.Text = "Modo Massinha: OFF"
        ClayButton.TextColor3 = Color3.fromRGB(255, 100, 100)
        ClayButton.BackgroundColor3 = Color3.fromRGB(45, 25, 25)
    end
end)

local pingActive = false
PingButton.MouseButton1Click:Connect(function()
    pingActive = not pingActive
    if pingActive then
        PingButton.Text = "Otimizar Ping: ON"
        PingButton.TextColor3 = Color3.fromRGB(100, 255, 100)
        PingButton.BackgroundColor3 = Color3.fromRGB(25, 45, 25)
        applyAdvancedPingOptimizer(true)
    else
        PingButton.Text = "Otimizar Ping: OFF"
        PingButton.TextColor3 = Color3.fromRGB(255, 100, 100)
        PingButton.BackgroundColor3 = Color3.fromRGB(45, 25, 25)
        applyAdvancedPingOptimizer(false)
    end
end)

local fpsActive = false
FpsButton.MouseButton1Click:Connect(function()
    fpsActive = not fpsActive
    if fpsActive then
        FpsButton.Text = "Contador FPS: ON"
        FpsButton.TextColor3 = Color3.fromRGB(100, 255, 100)
        FpsButton.BackgroundColor3 = Color3.fromRGB(25, 45, 25)
        toggleFpsCounter(true)
    else
        FpsButton.Text = "Contador FPS: OFF"
        FpsButton.TextColor3 = Color3.fromRGB(255, 100, 100)
        FpsButton.BackgroundColor3 = Color3.fromRGB(45, 25, 25)
        toggleFpsCounter(false)
    end
end)
