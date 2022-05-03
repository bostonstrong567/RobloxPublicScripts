   local Finity = loadstring(game:HttpGet("https://pastebin.com/raw/K9nEpwwS"))()

   local FinityWindow = Finity.new(true)
   FinityWindow.ChangeToggleKey(Enum.KeyCode.Delete)

   -- Catagorys
   local Farming = FinityWindow:Category("Farming")
   local Mobs = FinityWindow:Category("Mobs")
   local Totem = FinityWindow:Category("Totems")
   local Wood = FinityWindow:Category("Wood")

   -- Visuals Sectors
   local cropFarming = Farming:Sector("Crop Farming")
   local totemFarming = Totem:Sector("Totems")
   local woodFarming = Wood:Sector("Totems")

   totemFarming:Cheat(
   "Checkbox", -- Type
   "Auto upgrade totems", -- Name
   function(upgradealltotem) -- Callback function
      _G.upgradeallTotem = upgradealltotem
      totemfarmingAll()
   end)
  
      totemFarming:Cheat(
      "Checkbox", -- Type
      "Fast Harvest", -- Name
      function(State) -- Callback function
         print("Checkbox state changed:", State)
      end
      )

          woodFarming:Cheat(
      "Checkbox", -- Type
      "*FAST* Auto Harvest Wood", -- Name
      function(woodHarvest) -- Callback function
         _G.harvestTree = woodHarvest
         woodfarmingAll()
      end)
































      -----------------TOTEM FARMING---------------
      function totemfarmingAll()

         --Locals--
         local plr = game.Players.LocalPlayer
         local char = plr.Character
         local human = char.HumanoidRootPart
         local myIsland

         --Tables--
         local Totems = {}

         --stuff--
         for _,islands in pairs(game:GetService("Workspace").Islands:GetChildren()) do
            if plr.UserId == islands.Owners:FindFirstChildWhichIsA("NumberValue").Value then
               myIsland = islands
            end
         end

         for _,totems in pairs(myIsland.Blocks:GetChildren()) do
            if totems.Name:find("totem") then
               table.insert(Totems, totems)
            end
         end
         
        --function--
         spawn(function()
         while _G.upgradeallTotem == true do
            if _G.upgradeallTotem == true then
                  for _,Totems in pairs(Totems) do
                     if _G.upgradeallTotem == true then
                        human.CFrame = Totems.CFrame + Vector3.new(0,4,0)
                        local args = {
                           [1] = Totems,
                           [2] = "totem_crop",
                           [3] = "efficiency"
                        }
                        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
                        local args = {
                           [1] = Totems,
                           [2] = "totem_crop",
                           [3] = "utility"
                        }
                        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
                        local args = {
                           [1] = Totems,
                           [2] = "totem_crop",
                           [3] = "quality"
                        }
                        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
                     end
                  end
               end
            end
         end)
       end
-----------------TOTEM FARMING---------------


-----------------WOOD FARMING---------------
         function woodfarmingAll()
--Locals--
local plr = game.Players.LocalPlayer
local char = plr.Character
local human = char.HumanoidRootPart
local myIsland

--Tables--
local Tree = {}

--stuff--
for _,islands in pairs(game:GetService("Workspace").Islands:GetChildren()) do
    for _,owner in pairs(islands.Owners:GetChildren()) do
   if owner ~= plr.UserId then
      myIsland = islands
   end
end
end

--function--
spawn(function()

while _G.harvestTree == true do wait()
   for _,Trees in pairs(myIsland.Blocks:GetChildren()) do
      if Trees.Name:find("tree") then
            table.insert(Tree, Trees)
            if _G.harvestTree == true then
                     repeat 
                         if Trees then
                        human.CFrame = Trees.CFrame + Vector3.new(0,0,4)
                        local args = {
                           [1] = {
                              ["player_tracking_category"] = "join_from_web",
                              ["part"] = Trees,
                              ["block"] = Trees,
                              ["norm"] = Trees.Position,
                              ["pos"] = Trees.Position
                           }
                        }
                        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_BLOCK_HIT_REQUEST:InvokeServer(unpack(args))
                        end
                     until Trees.Parent == nil
                     end
      end
      end
    end
end)
end
-----------------WOOD FARMING---------------
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
