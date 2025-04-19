-- Mage Battlegrounds Script
-- Crea la GUI principal
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AtomicShadowUI"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- Función para crear botones fácilmente
local function createButton(name, position, color, callback)
    local button = Instance.new("TextButton")
    button.Name = name .. "Button"
    button.Parent = ScreenGui
    button.BackgroundColor3 = color
    button.Position = position
    button.Size = UDim2.new(0, 100, 0, 40)
    button.Font = Enum.Font.GothamBold
    button.Text = name
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextScaled = true
    button.AutoButtonColor = true
    button.MouseButton1Click:Connect(callback)
    return button
end

-- Crea el botón de activación para "Atomic" y "Shadow"
local function createToggleAtomicButtons()
    local toggleButton = Instance.new("TextButton")
    toggleButton.Name = "AtomicToggleButton"
    toggleButton.Parent = ScreenGui
    toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
    toggleButton.Position = UDim2.new(1, -110, 0, -40)
    toggleButton.Size = UDim2.new(0, 100, 0, 40)
    toggleButton.Font = Enum.Font.GothamBold
    toggleButton.Text = "Shadow"
    toggleButton.TextColor3 = Color3.new(1, 1, 1)
    toggleButton.TextScaled = true
    toggleButton.AutoButtonColor = true

    local atomicButtons = {}
    local buttonsVisible = false

    toggleButton.MouseButton1Click:Connect(function()
        buttonsVisible = not buttonsVisible

        if buttonsVisible then
            atomicButtons["IAmAtomic"] = createButton("I Am Atomic", UDim2.new(0, 210, 0.5, -150), Color3.fromRGB(255, 0, 255), function()
                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("I Am Atomic").LocalScript.Event:FireServer()
            end)

            atomicButtons["Shadow"] = createButton("Shadow", UDim2.new(0, 110, 0.5, -150), Color3.fromRGB(255, 0, 255), function()
                game:GetService("ReplicatedStorage").Attribute:FireServer("Character", "Shadow", "Select")
            end)
        else
            for _, btn in pairs(atomicButtons) do
                btn:Destroy()
            end
            atomicButtons = {}
        end
    end)
end

-- Llama la función que crea el botón de activación
createToggleAtomicButtons()

-- Crea la GUI principal
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "FinalGojoUI"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- Función para crear botones fácilmente
local function createButton(name, position, color, callback)
    local button = Instance.new("TextButton")
    button.Name = name .. "Button"
    button.Parent = ScreenGui
    button.BackgroundColor3 = color
    button.Position = position
    button.Size = UDim2.new(0, 100, 0, 40)
    button.Font = Enum.Font.GothamBold
    button.Text = name
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextScaled = true
    button.AutoButtonColor = true
    button.MouseButton1Click:Connect(callback)
    return button
end

-- Crea un botón que alterna la visibilidad de los botones "Final Gojo" y "Purple"
local function createToggleGojoButtons()
    local toggleButton = Instance.new("TextButton")
    toggleButton.Name = "GojoToggleButton"
    toggleButton.Parent = ScreenGui
    toggleButton.BackgroundColor3 = Color3.fromRGB(200, 0, 200)
    toggleButton.Position = UDim2.new(0.5, 50, 0, -40)
    toggleButton.Size = UDim2.new(0, 100, 0, 40)
    toggleButton.Font = Enum.Font.GothamBold
    toggleButton.Text = "Final Gojo"
    toggleButton.TextColor3 = Color3.new(1, 1, 1)
    toggleButton.TextScaled = true
    toggleButton.AutoButtonColor = true

    local gojoButtons = {}
    local buttonsVisible = false

    toggleButton.MouseButton1Click:Connect(function()
        buttonsVisible = not buttonsVisible

        if buttonsVisible then
            -- Crear los botones si no existen
            gojoButtons["FinalGojo"] = createButton("Final Gojo", UDim2.new(0.5, 150, 0, -40), Color3.fromRGB(128, 0, 128), function()
                game:GetService("ReplicatedStorage").Attribute:FireServer("Character", "FinalGojo", "Select")
            end)

            gojoButtons["Purple"] = createButton("Purple", UDim2.new(0.5, -150, 0, -40), Color3.fromRGB(128, 0, 128), function()
                game:GetService("Players").LocalPlayer.Backpack.FinalHollowPurple.LocalScript.Event:FireServer()
            end)
        else
            -- Eliminar los botones si ya existen
            for _, btn in pairs(gojoButtons) do
                btn:Destroy()
            end
            gojoButtons = {}
        end
    end)
end

-- Llama la función que crea el botón de activación
createToggleGojoButtons()

-- Crea la GUI principal
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CustomAbilityButtons"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- Función para crear botones fácilmente
local function createButton(name, position, color, callback)
    local button = Instance.new("TextButton")
    button.Name = name .. "Button"
    button.Parent = ScreenGui
    button.BackgroundColor3 = color
    button.Position = position
    button.Size = UDim2.new(0, 100, 0, 40)
    button.Font = Enum.Font.GothamBold
    button.Text = name
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextScaled = true
    button.AutoButtonColor = true
    button.MouseButton1Click:Connect(callback)
    return button
end

-- Crea un botón que activa la creación de otros botones
local function createActivationButton()
    local activationButton = Instance.new("TextButton")
    activationButton.Name = "Sukuna Heian"
    activationButton.Parent = ScreenGui
    activationButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)  -- Color rojo para el botón de activación
    activationButton.Position = UDim2.new(0.5, -50, 0, -40)  -- Posición centrada
    activationButton.Size = UDim2.new(0, 100, 0, 40)
    activationButton.Font = Enum.Font.GothamBold
    activationButton.Text = "Sukuna Heian"
    activationButton.TextColor3 = Color3.new(1, 1, 1)
    activationButton.TextScaled = true
    activationButton.AutoButtonColor = true

    -- Variable para almacenar el estado de los botones de habilidades
    local abilityButtons = {}
    local buttonsVisible = false

    -- Función que alterna la visibilidad de los botones de habilidades
    activationButton.MouseButton1Click:Connect(function()
        buttonsVisible = not buttonsVisible  -- Alterna el estado de visibilidad

        if buttonsVisible then
            -- Si los botones no están visibles, los creamos y los mostramos
            abilityButtons["Sukuna Heian"] = createButton("Sukuna Heian", UDim2.new(0.5, 50, 0, -40), Color3.fromRGB(100, 100, 100), function()
                game:GetService("ReplicatedStorage").Attribute:FireServer("Character", "sukunaheian", "Select")
            end)

            abilityButtons["Awaken"] = createButton("Awaken", UDim2.new(0.5, 150, 0, -40), Color3.fromRGB(100, 100, 100), function()
                game:GetService("Workspace").Bayinboo.Awaken.ClientHandler.RemoteEvent:FireServer("BlindsOff")
            end)

            abilityButtons["Cleave"] = createButton("Cleave", UDim2.new(0, 10, 0.5, -150), Color3.fromRGB(255, 165, 0), function()
                for i = 1, 15 do
                    game:GetService("Players").LocalPlayer.Backpack.Cleave.LocalScript.Event:FireServer()
                end
            end)

            abilityButtons["Dismantle"] = createButton("Dismantle", UDim2.new(0, 10, 0.5, -100), Color3.fromRGB(255, 165, 0), function()
                for i = 1, 15 do
                    game:GetService("Players").LocalPlayer.Backpack.Dismantle.LocalScript.Event:FireServer()
                end
            end)

            abilityButtons["Arrow"] = createButton("Arrow", UDim2.new(1, -110, 0, 160), Color3.fromRGB(0, 255, 255), function()
                game:GetService("Players").LocalPlayer.Backpack.TrueFireArrow.LocalScript.Event:FireServer()
            end)

            abilityButtons["Kamutake"] = createButton("Kamutake", UDim2.new(1, -110, 0, -40), Color3.fromRGB(255, 0, 255), function()
                game:GetService("Players").LocalPlayer.Backpack.Kamutake.LocalScript.Event:FireServer()
            end)

            abilityButtons["Health"] = createButton("Health", UDim2.new(1, -110, 0, 60), Color3.fromRGB(0, 255, 0), function()
                for i = 1, 30 do
                    game:GetService("Workspace").Bayinboo.ReverseCursedTechnique.Script.Event:FireServer()
                end
            end)

            abilityButtons["Shrine"] = createButton("Shrine", UDim2.new(1, -110, 0, 110), Color3.fromRGB(0, 0, 255), function()
                game:GetService("Players").LocalPlayer.Backpack.IncompleteShrine.LocalScript.Event:FireServer()
            end)
        else
            -- Si los botones están visibles, los ocultamos
            for _, button in pairs(abilityButtons) do
                button:Destroy()
            end
            abilityButtons = {}  -- Limpiamos la tabla de botones
        end
    end)
end

-- Llama la función que crea el botón de activación
createActivationButton()

-- Crea la GUI principal
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CustomAbilityButtons"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- Función para crear botones fácilmente
local function createButton(name, position, color, callback)
	local button = Instance.new("TextButton")
	button.Name = name .. "Button"
	button.Parent = ScreenGui
	button.BackgroundColor3 = color
	button.Position = position
	button.Size = UDim2.new(0, 100, 0, 40)
	button.Font = Enum.Font.GothamBold
	button.Text = name
	button.TextColor3 = Color3.new(1, 1, 1)
	button.TextScaled = true
	button.AutoButtonColor = true
	button.MouseButton1Click:Connect(callback)
end

-- Botón FUGA (arriba derecha)
createButton("Fuga", UDim2.new(1, -110, 0, 10), Color3.fromRGB(255, 0, 0), function()
	game:GetService("ReplicatedStorage").Assets.Remtoes.Fire:FireServer()
end)

-- Botón VOID (parte superior central)
createButton("Void", UDim2.new(0.5, -250, 0, -40), Color3.fromRGB(128, 0, 128), function()
	game:GetService("ReplicatedStorage").EventsAllDomain.UnlimitedVoid:FireServer()
end)
