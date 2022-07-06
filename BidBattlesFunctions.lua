local git = {}

git.items = require(game.ReplicatedStorage.Modules.Items)
git.FloatItemValue = Instance.new("BillboardGui")
git.ItemFrame = Instance.new("Frame")
git.ItemName = Instance.new("TextLabel")
git.ItemCorner = Instance.new("UICorner")

git.FloatItemValue.Name = "FloatItemValue"
git.FloatItemValue.Parent = nil
git.FloatItemValue.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
git.FloatItemValue.Active = true
git.FloatItemValue.AlwaysOnTop = true
git.FloatItemValue.ExtentsOffset = Vector3.new(0, 1.600000023841858, 0)
git.FloatItemValue.LightInfluence = 1.000
git.FloatItemValue.Size = UDim2.new(4.19999981, 0, 2.29999995, 0)

git.ItemFrame.Name = "ItemFrame"
git.ItemFrame.Parent = FloatItemValue
git.ItemFrame.BackgroundColor3 = Color3.fromRGB(14, 0, 62)
git.ItemFrame.Size = UDim2.new(1, 0, 1, 0)
git.ItemFrame.BackgroundTransparency = 1

git.ItemName.Name = "ItemName"
git.ItemName.Parent = ItemFrame
git.ItemName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
git.ItemName.BackgroundTransparency = 1.000
git.ItemName.Position = UDim2.new(0.150000006, 0, 0.150000006, 0)
git.ItemName.Size = UDim2.new(0.699999988, 0, 0.699999988, 0)
git.ItemName.Font = Enum.Font.GothamBlack
git.ItemName.Text = "Stool is 50$"
git.ItemName.TextColor3 = Color3.fromRGB(255, 255, 255)
git.ItemName.TextScaled = true
git.ItemName.TextSize = 30.000
git.ItemName.TextWrapped = true

git.ItemCorner.CornerRadius = UDim.new(0, 4)
git.ItemCorner.Name = "ItemCorner"
git.ItemCorner.Parent = ItemFrame
