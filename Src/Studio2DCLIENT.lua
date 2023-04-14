local Scripting2D = require(game.ReplicatedStorage.Scripting2D)

--========--
--STUDIO2D--
--========--

--[[
 This will proccess Everything with the Engine!
]]


game.Players.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Connect(function(char)
		char.HumanoidRootPart.CFrame = CFrame.new(50,9999,50)
		char.HumanoidRootPart.Anchored = true
	end)
end)

--- Proccess Game
for Index,Folder in pairs(workspace.Layers:GetDescendants()) do
	for SecondIndex,Sprite in pairs(Folder:GetChildren()) do
		if Sprite:GetAttribute("RigidBody") then
			if Sprite:GetAttribute("RigidBody")  == true then
				Scripting2D:AddRigidBody(Sprite)
			end
		end
	end
end

for Index,Camera in pairs(workspace.CamFolder:GetChildren()) do
	Camera.Transparency = 1
	Camera.LocalTransparencyModifier = 0
end