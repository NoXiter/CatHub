getgenv().Resolution = {
    ["cathub"] = 0.65
}

local Camera = workspace.CurrentCamera
if getgenv().cathub == nil then
    game:GetService("RunService").RenderStepped:Connect(
        function()
            Camera.CFrame = Camera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, getgenv().Resolution["cathub"], 0, 0, 0, 1)
        end
    )
end
getgenv().cathub = "CatHub"
