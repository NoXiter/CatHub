_G.HeadSize = 10
_G.Disabled = true

game:GetService("StarterGui"):SetCore("SendNotification", { 
Title = "CatHub Hitbox";
Text = "tbhnoxiter#0000";
Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 6; 

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really white")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
