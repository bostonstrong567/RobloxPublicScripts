-- Variables Declaration
local player = game:GetService("Players").LocalPlayer
local workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local replicatedStorage = game:GetService("ReplicatedStorage")

local isMining = false
local selectedOre = ""
local isFighting = false

-- Function to Find Pickaxe Tool
local function findPickaxeTool()
    local timeout = tick() + 5
    while true do
        if tick() > timeout then
            warn("Could not find a pickaxe tool within the time limit")
            return nil
        end
        local backpack = player:FindFirstChild("Backpack")
        if backpack then
            for _, item in pairs(backpack:GetChildren()) do
                if item.Name:find("Pickaxe") then return item end
            end
        end
        task.wait(0.1)
    end
end

-- Function to Use Pickaxe Tool
local function usePickaxeTool(pickaxeTool)
    if not pickaxeTool then
        print("No pickaxe tool found to equip and activate.")
        return
    end
    player.Character.Humanoid:EquipTool(pickaxeTool)
    pickaxeTool:Activate()
    task.wait(1)
    player.Character.Humanoid:UnequipTools()
end

-- Function to Teleport to Target
local function teleportToTarget(target, distance, rotation, lookAt)
    distance = distance or Vector3.new(0, 0, 0)
    rotation = rotation or CFrame.Angles(0, 0, 0)
    if player.Character then
        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            local targetPart = target:IsA("Model") and target:FindFirstChildWhichIsA("BasePart") or target:FindFirstChildWhichIsA("BasePart") or target
            if targetPart then
                local targetPosition = targetPart.Position + distance
                local lookAtPosition = lookAt or targetPart.Position
                humanoidRootPart.CFrame = CFrame.new(targetPosition, lookAtPosition) * rotation
            end
        end
    end
end

-- Function to Locate Next Ore
local function locateNextOre()
    local pickaxeTool = findPickaxeTool()
    if not pickaxeTool then return nil end

    local pickaxePower = pickaxeTool.Power.Value
    local ores = workspace.Map.Ores:GetChildren()
    local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

    if #ores > 0 and humanoidRootPart then
        local closestOre
        local minDistance = math.huge

        for _, ore in pairs(ores) do
            local properties = ore:FindFirstChild("Properties")
            if properties then
                local oreToughness = properties:FindFirstChild("Toughness") and properties.Toughness.Value or 0
                local hitpoint = properties:FindFirstChild("Hitpoint") and properties.Hitpoint.Value or 0
                local meshPart = ore:FindFirstChildOfClass("MeshPart")
                if hitpoint > 0 and pickaxePower >= oreToughness and meshPart then
                    local base = ore:FindFirstChild("Base")
                    if not base or (base and not (base.Rotation.X == 0 and base.Rotation.Y == 90 and base.Rotation.Z == 0)) then
                        if selectedOre == "" or ore.Name:find(selectedOre) then
                            local distance = (humanoidRootPart.Position - meshPart.Position).Magnitude
                            if distance < minDistance then
                                minDistance = distance
                                closestOre = ore
                            end
                        end
                    end
                end
            end
        end

        if closestOre then
            return closestOre
        end
    end
end

-- Function to Handle Mining Main
local function miningMain()
    if not isMining then
        warn("Mining not enabled")
        return
    end

    local initialPickaxeTool = findPickaxeTool()
    if initialPickaxeTool then
        usePickaxeTool(initialPickaxeTool)
    end

    while isMining do
        local ore = locateNextOre()
        if ore then
            local connection
            connection = RunService.Heartbeat:Connect(function()
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    teleportToTarget(ore, Vector3.new(0, -6.5, 0), CFrame.Angles(math.rad(0), 0, math.rad(0)))
                else
                    connection:Disconnect()
                end
            end)

            local pickaxeTool = findPickaxeTool()
            local pickaxePower = pickaxeTool and pickaxeTool:FindFirstChild("Power") and pickaxeTool:FindFirstChild("Power").Value or 0
            local oreToughness = ore.Properties:FindFirstChild("Toughness") and ore.Properties:FindFirstChild("Toughness").Value or 0

            if pickaxePower >= oreToughness then
                if pickaxeTool:FindFirstChild("RemoteFunction") then
                    print("Mining "..ore.Name.." with "..pickaxeTool.Name.." with power "..pickaxePower)
                    while isMining and ore.Properties.Hitpoint.Value > 0 do
                        if player.Character and (player.Character:FindFirstChild("Torso") or player.Character:FindFirstChild("UpperTorso")) then
                            pickaxeTool.RemoteFunction:InvokeServer("mine")
                        else
                            print("Waiting for Torso or UpperTorso to be available...")
                            task.wait(0.5)
                        end
                        task.wait(0.1)
                    end
                else
                    warn("No pickaxe found in the backpack")
                end
            else
                warn("Pickaxe power is insufficient to break the ore")
            end

            if connection then
                connection:Disconnect()
            end

            task.wait()
        end
        task.wait()
    end
end
-- Function to Equip All Combat Tools
local function equipAllCombatTools()
    if not player.Character or not player.Backpack then
        return
    end
    for _, tool in pairs(player.Backpack:GetChildren()) do
        if tool:IsA("Tool") and tool:FindFirstChild("BladeMain") then
            tool.Parent = player.Character
        end
    end
end

-- Function to Handle Main Combat
local function combatMain()
    while isFighting do
        for _, target in pairs(workspace:GetChildren()) do
            local targetHumanoid = target:FindFirstChild("Humanoid")
            if target:FindFirstChild("EnemyMain") and targetHumanoid and targetHumanoid.Health > 0 then
                equipAllCombatTools()
                teleportToTarget(target, nil, nil, Vector3.new(target.Position.X, target.Position.Y - 2, target.Position.Z))
            end
        end
        task.wait()
    end
end

-- Function to Manage Hit Registration
local function manageHitRegistration()
    while isFighting do
        if not player.Character then
            task.wait(0.5)
            return
        end
        local swords = {}
        for _, sword in pairs(player.Character:GetChildren()) do
            if sword:IsA("Tool") and sword:FindFirstChild("RemoteFunction") then
                table.insert(swords, sword)
            end
        end

        for _, sword in pairs(swords) do
            spawn(function()
                sword.RemoteFunction:InvokeServer("hit", {0, 0})
                print("Invoked: " .. sword.Name)
            end)
        end

        task.wait(0.5) -- Adjust the wait time as necessary
    end
end

-- Function to Handle Player Character Addition
local function onPlayerCharacterAdded(character)
    task.wait(0.5)
    if isMining then
        miningMain()
    end
    spawn(combatMain)
    spawn(manageHitRegistration)
end

player.CharacterAdded:Connect(onPlayerCharacterAdded)

-- GUI Setup and Other Functionalities
local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Venyx-UI-Library/main/source2.lua"))()
local UI = Venyx.new({ title = "Balanced Craftwars Overhaul" })
local MiningPage = UI:addPage({ title = "Mining", icon = 5012544693 })
local MiningSection = MiningPage:addSection({ title = "Mining Controls" })
local FightingPage = UI:addPage({ title = "Fighting", icon = 5012544693 })
local FightingSection = FightingPage:addSection({ title = "Fighting Controls" })

MiningSection:addToggle({
    title = "Break All Ores",
    callback = function(value)
        isMining = value
        if value then
            miningMain()
        end
    end
})

local oreList = {}
for _, item in pairs(replicatedStorage.ViewItems:GetChildren()) do
    if item.Name:find("Ore") then
        table.insert(oreList, tostring(item.Name:gsub("Ore", "")))
    end
end

MiningSection:addDropdown({
    title = "Break Selected Ore",
    list = oreList,
    callback = function(value)
        selectedOre = value
        if isMining then
            miningMain()
        end
    end
})

FightingSection:addToggle({
    title = "Enable Fighting",
    callback = function(value)
        isFighting = value
        if value then
            spawn(combatMain)
            spawn(manageHitRegistration)
        end
    end
})
