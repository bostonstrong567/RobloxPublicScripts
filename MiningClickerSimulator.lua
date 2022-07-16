if game:GetService("CoreGui"):FindFirstChild("Mining Clicker Simulator") then
    game:GetService("CoreGui")["Mining Clicker Simulator"]:Destroy()
else
end

local player = game.Players.LocalPlayer
local character = player.Character
local inventoryCon = require(game:GetService("ReplicatedStorage").Modules.inventoryController)
local mod = require(game:GetService("ReplicatedStorage").Modules.statModule)
local picks = require(game:GetService("ReplicatedStorage").Modules.pickaxesModule)

local pets = {
"Starter Egg",
"Spotted Egg",
"Floral Egg",
"Desert Egg",
"Snow Egg",
"Cave Egg",
"Ocean Egg",
"Jungle Egg",
"Volcano Egg",
"Space Egg",
"Undead Egg",
"Heavenly Egg",
"Devil Egg",
"Fossil Egg",
"Tentacle Egg",
"1M Visits Egg",
"Exclusive Egg 1"
}

local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Venyx-UI-Library/main/source2.lua"))()
local UI = Venyx.new({
title = "Mining Clicker Simulator"
})

local Tools = UI:addPage({
title = "Tools",
icon = 5012544693
})

local Pets = UI:addPage({
title = "Pets",
icon = 5012544693
})

local Misc = UI:addPage({
title = "Misc",
icon = 5012544693
})

local toolsSection = Tools:addSection({
title = "Mining"
})

local rebirthSection = Tools:addSection({
title = "Rebirth"
})


local EggsSection = Pets:addSection({
title = "Eggs"
})


local PetsSection = Pets:addSection({
title = "Pets"
})

local MiscSection = Misc:addSection({
title = "Misc"
})

toolsSection:addToggle({
title = "Toggle Clicker",
callback = function(value)
    _G.toggleClick = value

    while _G.toggleClick do task.wait()
        if _G.toggleClick then
            character:FindFirstChildWhichIsA("Tool"):Activate()
            game:GetService("ReplicatedStorage").Remotes.Click:InvokeServer()
        end
    end
end
})

EggsSection:addToggle({
title = "Auto Purchase Eggs",
callback = function(value)
    _G.toggleAutoBuyEgg = value

    while _G.toggleAutoBuyEgg do task.wait(0.1)
        if _G.toggleAutoBuyEgg then
            game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(_G.SelectedPet, 1)
        end
    end
end
})

EggsSection:addDropdown({
title = "Egg List",
list = pets,
callback = function(text)
    _G.SelectedPet = text
end
})

PetsSection:addToggle({
title = "Auto Equip Best Pets",
callback = function(value)

    _G.equipBest = value
    while _G.equipBest do task.wait(1)
        if _G.equipBest then
            inventoryCon.equipBest()
        end
    end
end
})

MiscSection:addToggle({
title = "Auto Claim Achievements",
callback = function(value)
    _G.autoAchievements = value
    while _G.autoAchievements do task.wait(1)
        if _G.autoAchievements then
            for i, v in pairs(player.PlayerGui.rewards.achievementsPanel.RebirthCounter.scrollingFrame:GetChildren()) do
                if v:IsA("Frame") then
                game:GetService("ReplicatedStorage").Remotes.claimAchievment:FireServer(v.Name)
            end
        end
    end
end
end
})

rebirthSection:addToggle({
title = "Auto Rebirth",
callback = function(value)
_G.autoRebirth = value
    while _G.autoRebirth do task.wait(1)
        if _G.autoRebirth then
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
    end
end
end
})

MiscSection:addToggle({
title = "Auto Buy Pickaxes",
callback = function(value)
_G.autoBuyPick = value

while _G.autoBuyPick do task.wait(1)
    if _G.autoBuyPick then
        for i, pick in pairs(picks.picks) do
            game:GetService("ReplicatedStorage").Remotes.BuyPickaxe:InvokeServer(i)
        end
    end
    end
end
})
