local Player =  game:GetService("Players").LocalPlayer
local Character = Player.character or Player.characterAdded:Wait()

local u1 = game:GetService("RunService").RenderStepped:Connect(function()
	for i, part in pairs(Character:GetChildren())do
		if string.match(part.Name, "Left") or string.match(part.Name, "Right") or string.match(part.Name, "Lower") then
			part.LocalTransparencyModifier = 0
		end
	end
	Character.Humanoid.CameraOffset = Vector3.new(0,0.02,-.05)
end)

Character.Humanoid.Died:Connect(function()
	u1:Disconnect()
end)
