-- Carregar a library do hub
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Systeam3214/REDZHUBV2/refs/heads/main/REDZHUBV2.lua")))()

-- Criando o hub principal com sistema de chave
MakeWindow({
  Hub = {
    Title = " SYSTEM HUB | V 1.1 ",
    Animation = "by : System Community"
  },
  Key = {
    KeySystem = true, -- Sistema de chave ativado
    Title = "Bem-vindo Senhor", -- Título do sistema de chave
    Description = "Insira a senha para acessar o hub.",
    KeyLink = "https://example.com", -- Link opcional (alterar conforme necessário)
    Keys = {"pass1"}, -- Chave configurada
    Notifi = {
      Success = "Acesso concedido. Bem-vindo!",
      Failure = "Senha incorreta. Tente novamente."
    }
  }
})

-- Botão para minimizar o hub com a imagem fornecida
MinimizeButton({
  Image = "rbxassetid://116156830177501", -- Link da imagem
  Size = {35, 35},
  Color = Color3.fromRGB(10, 10, 10),
  Corner = true,
  Stroke = true,
  StrokeColor = Color3.fromRGB(255, 255, 255)
})

-- Criando a aba "Início"
local Inicio = MakeTab({Name = "Início"})
AddSection(Inicio, {"Ei! Administrador"})
AddSection(Inicio, {"Lembre-se, Use Este Hub Com Respeito e Ética."})
AddSection(Inicio, {"O Abuso Deste Script Resultará Em Banimento Do Grupo!"})

-- Criando a aba "House"
local HouseTab = MakeTab({Name = "House"})
AddSection(HouseTab, {"Banimento"})
AddButton(HouseTab, {
  Name = "Anti Ban (No Anti Kill)",
  Callback = function()
    local bannedLots = game:GetService("ReplicatedStorage"):FindFirstChild("BannedLots")
    if bannedLots then
      bannedLots:Destroy()
      MakeNotifi({
        Title = "🎩 SYSTEM HUB⚙️",
        Text = "Auto UnBan Executado.",
        Time = 5
      })
    else
      MakeNotifi({
        Title = "🎩 SYSTEM HUB⚙️",
        Text = "Ação Indisponível.",
        Time = 5
      })
    end
  end
})

-- Criando a aba "Troll"
local TrollTab = MakeTab({Name = "Troll"})
AddSection(TrollTab, {"Troll"})
AddButton(TrollTab, {
  Name = "Pegar Sofá",
  Callback = function()
    local sofaPos = CFrame.new(-82.61, 22.09, -129.98)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = sofaPos
    MakeNotifi({
      Title = "🎩 SYSTEM HUB⚙️",
      Text = "Sucesso!",
      Time = 5
    })
  end
})

-- Criando a aba "Scripts"
local ScriptsTab = MakeTab({Name = "Scripts"})
AddSection(ScriptsTab, {"Scripts"})
AddButton(ScriptsTab, {
  Name = "Infinit Yield",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    MakeNotifi({
      Title = "Sistema:",
      Text = "Infinit Yield Executado.",
      Time = 5
    })
  end
})
AddButton(ScriptsTab, {
  Name = "System Fling Gui V 1.1 | NEW VERSION!!",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Systeam3214/SYSTEMFLINGGUIV1.0/refs/heads/main/B-16.14A"))()
  end
})

-- Criando a aba "Teleportes"
local TeleportsTab = MakeTab({Name = "Teleportes"})
AddSection(TeleportsTab, {"Teleportes"})
AddButton(TeleportsTab, {Name = "Centro/Lobby", Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-35.43, 3.56, -20.51) end})
AddButton(TeleportsTab, {Name = "Delegacia", Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-118.72, 3.49, 8.13) end})
AddButton(TeleportsTab, {Name = "Hospital", Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-304.03, 3.49, 32.86) end})
AddButton(TeleportsTab, {Name = "Escola", Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-310.54, 3.46, 212.90) end})
AddButton(TeleportsTab, {Name = "Shopping", Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(156.54, 1.81, -151.05) end})
AddButton(TeleportsTab, {Name = "Mercado", Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8.16, 1.71, -118.04) end})
AddButton(TeleportsTab, {Name = "Hambúrgueria", Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.35, 2.85, 23.20) end})
AddButton(TeleportsTab, {Name = "Aeroporto", Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(305.39, 2.24, 32.17) end})

-- Criando a aba "Info" (sempre embaixo de todas as abas)
local InfoTab = MakeTab({Name = "Info"})
AddSection(InfoTab, {"Hub Info:"})
AddSection(InfoTab, {"Hub Name: 🎩 SYSTEM HUB ⚙️"})
AddSection(InfoTab, {"Creator: System"})
AddSection(InfoTab, {"Community: System Hub Community"})
AddSection(InfoTab, {"Hub Version: V 1.1"})
AddSection(InfoTab, {"User Info:"})
local userName = game.Players.LocalPlayer.Name
local userId = game.Players.LocalPlayer.UserId
AddSection(InfoTab, {"Nick: " .. userName})
AddSection(InfoTab, {"ID: " .. userId})
AddSection(InfoTab, {"Status: Admin"})
