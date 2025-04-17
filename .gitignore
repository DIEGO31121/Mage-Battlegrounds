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

-- Botón HEALTH (un poco debajo del de Fuga)
createButton("Health", UDim2.new(1, -110, 0, 60), Color3.fromRGB(0, 255, 0), function()
	for i = 1, 30 do
		game:GetService("Workspace").Bayinboo.ReverseCursedTechnique.Script.Event:FireServer()
	end
end)

-- Botón SHRINE (debajo del de Health)
createButton("Shrine", UDim2.new(1, -110, 0, 110), Color3.fromRGB(0, 0, 255), function()
	game:GetService("Players").LocalPlayer.Backpack.IncompleteShrine.LocalScript.Event:FireServer()
end)

-- Botón VOID (parte superior central)
createButton("Void", UDim2.new(0.5, -250, 0, -40), Color3.fromRGB(128, 0, 128), function()
	game:GetService("ReplicatedStorage").EventsAllDomain.UnlimitedVoid:FireServer()
end)

-- Botón ARROW (debajo del de Shrine)
createButton("Arrow", UDim2.new(1, -110, 0, 160), Color3.fromRGB(0, 255, 255), function()

game:GetService("Players").LocalPlayer.Backpack.TrueFireArrow.LocalScript.Event:FireServer()
end)

-- Botón Kamutake (arriba derecha)
createButton("Kamutake", UDim2.new(1, -110, 0, -40), Color3.fromRGB(255, 0, 255), function()

game:GetService("Players").LocalPlayer.Backpack.Kamutake.LocalScript.Event:FireServer()
end)

-- Botón FINAL GOJO (parte superior central)
createButton("Final Gojo", UDim2.new(0.5, -50, 0, -40), Color3.fromRGB(128, 0, 128), function()

game:GetService("ReplicatedStorage").Attribute:FireServer("Character","FinalGojo","Select")
end)

-- Botón PURPLE (parte superior central)
createButton("Purple", UDim2.new(0.5, -150, 0, -40), Color3.fromRGB(128, 0, 128), function()

game:GetService("Players").LocalPlayer.Backpack.FinalHollowPurple.LocalScript.Event:FireServer()
end)

-- Botón SUKUNA HEIAN (parte superior central)
createButton("Sukuna Heian", UDim2.new(0.5, 50, 0, -40), Color3.fromRGB(100, 100, 100), function()

game:GetService("ReplicatedStorage").Attribute:FireServer("Character","sukunaheian","Select")
end)

-- Botón AWAKEN (parte superior central)
createButton("Awaken", UDim2.new(0.5, 150, 0, -40), Color3.fromRGB(100, 100, 100), function()

game:GetService("Workspace").Bayinboo.Awaken.ClientHandler.RemoteEvent:FireServer("BlindsOff")
end)

-- Botón CLEAVE (parte izquierda al centro) - ejecuta 15 veces
createButton("Cleave", UDim2.new(0, 10, 0.5, -150), Color3.fromRGB(255, 165, 0), function()
	for i = 1, 15 do
		game:GetService("Players").LocalPlayer.Backpack.Cleave.LocalScript.Event:FireServer()
	end
end)

-- Botón Dismantle (parte izquierda al centro) - ejecuta 15 veces
createButton("Dismantle", UDim2.new(0, 10, 0.5, -100), Color3.fromRGB(255, 165, 0), function()
	for i = 1, 15 do
		game:GetService("Players").LocalPlayer.Backpack.Dismantle.LocalScript.Event:FireServer()
	end
end)
