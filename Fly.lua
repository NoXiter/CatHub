local player = game.Players.LocalPlayer
local character = player.Character

while true do
    character.Humanoid.Sit = false
    character.Humanoid.WalkSpeed = 0
    character.Humanoid.JumpPower = 50
    
    if character:FindFirstChild("Force") then
        character.Force:Destroy()
    end
    
    local force = Instance.new("BodyForce")
    force.Parent = character.HumanoidRootPart
    force.force = Vector3.new(0, 0, 50)
    
    wait(0.1)
    
    if not character:FindFirstChild("Force") then
        force:Destroy()
    end
end
