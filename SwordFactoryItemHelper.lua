-- Gui to Lua
-- Version: 3.2

-- Instances:

local SwordFactory = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Top = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local ImageButton_2 = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local Template = Instance.new("Frame")
local Temp = Instance.new("Frame")
local UIGridLayout_2 = Instance.new("UIGridLayout")
local CurrentOwner = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local _5 = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local SellingTime = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local ITEMID = Instance.new("TextLabel")
local UICorner_8 = Instance.new("UICorner")
local Level = Instance.new("TextLabel")
local UICorner_9 = Instance.new("UICorner")
local _10 = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")
local _11 = Instance.new("TextLabel")
local UICorner_11 = Instance.new("UICorner")
local _3 = Instance.new("TextLabel")
local UICorner_12 = Instance.new("UICorner")
local _6 = Instance.new("TextLabel")
local UICorner_13 = Instance.new("UICorner")
local _2 = Instance.new("TextLabel")
local UICorner_14 = Instance.new("UICorner")
local UISizeConstraint = Instance.new("UISizeConstraint")
local _12 = Instance.new("TextLabel")
local UICorner_15 = Instance.new("UICorner")
local UICorner_16 = Instance.new("UICorner")
local UICorner_17 = Instance.new("UICorner")
local Glow = Instance.new("ImageLabel")
local open = Instance.new("ImageButton")
local UICorner_18 = Instance.new("UICorner")
local Open = Instance.new("ImageButton")

--Properties:

SwordFactory.Name = "Sword Factory"
SwordFactory.Parent = game.CoreGui
SwordFactory.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = SwordFactory
Main.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Main.Position = UDim2.new(0.242443323, 0, 0.167848691, 0)
Main.Size = UDim2.new(0.514483631, 0, 0.663120568, 0)

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Top.BackgroundTransparency = 1.000
Top.BorderSizePixel = 0
Top.Size = UDim2.new(1, 0, 0.0962566957, 0)

TextBox.Parent = Top
TextBox.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
TextBox.Position = UDim2.new(0.0611995123, 0, 0.212418169, 0)
TextBox.Size = UDim2.new(0.875153005, 0, 0.556644917, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(255, 223, 170)
TextBox.PlaceholderText = "Search..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 223, 170)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 14)
UICorner.Parent = TextBox

ImageButton.Parent = Top
ImageButton.BackgroundColor3 = Color3.fromRGB(48, 210, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.0109999999, 0, 0.217999995, 0)
ImageButton.Size = UDim2.new(0.0419999994, 0, 0.550000012, 0)
ImageButton.Image = "rbxassetid://9095873413"

UICorner_2.CornerRadius = UDim.new(0, 14)
UICorner_2.Parent = ImageButton

ImageButton_2.Parent = Top
ImageButton_2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
ImageButton_2.BackgroundTransparency = 1.000
ImageButton_2.Position = UDim2.new(0.947000027, 0, 0.217999995, 0)
ImageButton_2.Size = UDim2.new(0.0419999994, 0, 0.550000012, 0)
ImageButton_2.Image = "rbxassetid://9095899284"

UICorner_3.CornerRadius = UDim.new(0, 14)
UICorner_3.Parent = ImageButton_2

Frame.Parent = Top
Frame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
Frame.Position = UDim2.new(0.00367200794, 0, 0.881592453, 0)
Frame.Size = UDim2.new(0.99000001, 0, 0.100000001, 0)

UICorner_4.CornerRadius = UDim.new(0, 999999)
UICorner_4.Parent = Frame

ScrollingFrame.Parent = Main
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.00611995114, 0, 0.114081994, 0)
ScrollingFrame.Size = UDim2.new(0.987105846, 0, 0.875222862, 0)
ScrollingFrame.ScrollBarThickness = 6

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 20, 0, 10)
UIGridLayout.CellSize = UDim2.new(0, 785, 0, 78)

Template.Name = "Template"
Template.Parent = ScrollingFrame
Template.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Template.BorderSizePixel = 0
Template.Position = UDim2.new(0.00586848101, 0, 0, 0)
Template.Size = UDim2.new(0.973383307, 0, 0.137982652, 0)

Temp.Name = "Temp"
Temp.Parent = Template
Temp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Temp.BackgroundTransparency = 1.000
Temp.BorderSizePixel = 0
Temp.Position = UDim2.new(0.00627352577, 0, 0.0749999955, 0)
Temp.Size = UDim2.new(0.987452984, 0, 0.837499976, 0)

UIGridLayout_2.Parent = Temp
UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_2.CellSize = UDim2.new(0, 125, 0, 31)

CurrentOwner.Name = "CurrentOwner"
CurrentOwner.Parent = Temp
CurrentOwner.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CurrentOwner.LayoutOrder = 1
CurrentOwner.Size = UDim2.new(0.161258996, 0, 0.474550337, 0)
CurrentOwner.Font = Enum.Font.Gotham
CurrentOwner.Text = "Owner:"
CurrentOwner.TextColor3 = Color3.fromRGB(255, 223, 170)
CurrentOwner.TextScaled = true
CurrentOwner.TextSize = 14.000
CurrentOwner.TextStrokeColor3 = Color3.fromRGB(159, 159, 159)
CurrentOwner.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 4)
UICorner_5.Parent = CurrentOwner

_5.Name = "5"
_5.Parent = Temp
_5.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
_5.LayoutOrder = 2
_5.Size = UDim2.new(0.161258996, 0, 0.474550337, 0)
_5.Font = Enum.Font.Gotham
_5.Text = "Worth:"
_5.TextColor3 = Color3.fromRGB(255, 223, 170)
_5.TextScaled = true
_5.TextSize = 14.000
_5.TextStrokeColor3 = Color3.fromRGB(159, 159, 159)
_5.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 4)
UICorner_6.Parent = _5

SellingTime.Name = "SellingTime"
SellingTime.Parent = Temp
SellingTime.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SellingTime.LayoutOrder = 4
SellingTime.Size = UDim2.new(0.161258996, 0, 0.474550337, 0)
SellingTime.Font = Enum.Font.Gotham
SellingTime.Text = "Selling time:"
SellingTime.TextColor3 = Color3.fromRGB(255, 223, 170)
SellingTime.TextScaled = true
SellingTime.TextSize = 14.000
SellingTime.TextStrokeColor3 = Color3.fromRGB(159, 159, 159)
SellingTime.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 4)
UICorner_7.Parent = SellingTime

ITEMID.Name = "ITEMID"
ITEMID.Parent = Temp
ITEMID.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ITEMID.LayoutOrder = 7
ITEMID.Size = UDim2.new(0.161258996, 0, 0.474550337, 0)
ITEMID.Font = Enum.Font.Gotham
ITEMID.Text = "ITEMID:"
ITEMID.TextColor3 = Color3.fromRGB(255, 223, 170)
ITEMID.TextScaled = true
ITEMID.TextSize = 14.000
ITEMID.TextStrokeColor3 = Color3.fromRGB(159, 159, 159)
ITEMID.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0, 4)
UICorner_8.Parent = ITEMID

Level.Name = "Level"
Level.Parent = Temp
Level.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Level.LayoutOrder = 3
Level.Size = UDim2.new(0.161258996, 0, 0.474550337, 0)
Level.Font = Enum.Font.Gotham
Level.Text = "Level:"
Level.TextColor3 = Color3.fromRGB(255, 223, 170)
Level.TextScaled = true
Level.TextSize = 14.000
Level.TextStrokeColor3 = Color3.fromRGB(159, 159, 159)
Level.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(0, 4)
UICorner_9.Parent = Level

_10.Name = "10"
_10.Parent = Temp
_10.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
_10.LayoutOrder = 8
_10.Size = UDim2.new(0.161258996, 0, 0.474550337, 0)
_10.Font = Enum.Font.Gotham
_10.Text = "Enchant1:"
_10.TextColor3 = Color3.fromRGB(255, 223, 170)
_10.TextScaled = true
_10.TextSize = 14.000
_10.TextStrokeColor3 = Color3.fromRGB(159, 159, 159)
_10.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0, 4)
UICorner_10.Parent = _10

_11.Name = "11"
_11.Parent = Temp
_11.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
_11.LayoutOrder = 9
_11.Size = UDim2.new(0.161258996, 0, 0.474550337, 0)
_11.Font = Enum.Font.Gotham
_11.Text = "Enchant2:"
_11.TextColor3 = Color3.fromRGB(255, 223, 170)
_11.TextScaled = true
_11.TextSize = 14.000
_11.TextStrokeColor3 = Color3.fromRGB(159, 159, 159)
_11.TextWrapped = true

UICorner_11.CornerRadius = UDim.new(0, 4)
UICorner_11.Parent = _11

_3.Name = "3"
_3.Parent = Temp
_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
_3.LayoutOrder = 11
_3.Size = UDim2.new(0.161258996, 0, 0.474550337, 0)
_3.Font = Enum.Font.Gotham
_3.Text = "Class:"
_3.TextColor3 = Color3.fromRGB(255, 223, 170)
_3.TextScaled = true
_3.TextSize = 14.000
_3.TextStrokeColor3 = Color3.fromRGB(159, 159, 159)
_3.TextWrapped = true

UICorner_12.CornerRadius = UDim.new(0, 4)
UICorner_12.Parent = _3

_6.Name = "6"
_6.Parent = Temp
_6.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
_6.LayoutOrder = 34
_6.Size = UDim2.new(0.161258996, 0, 0.474550337, 0)
_6.Font = Enum.Font.Gotham
_6.Text = "Mold:"
_6.TextColor3 = Color3.fromRGB(255, 223, 170)
_6.TextScaled = true
_6.TextSize = 14.000
_6.TextStrokeColor3 = Color3.fromRGB(159, 159, 159)
_6.TextWrapped = true

UICorner_13.CornerRadius = UDim.new(0, 4)
UICorner_13.Parent = _6

_2.Name = "2"
_2.Parent = Temp
_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
_2.LayoutOrder = 5
_2.Size = UDim2.new(0.328968346, 0, 0.474550337, 0)
_2.Font = Enum.Font.Gotham
_2.Text = "Rarity: / Quality:"
_2.TextColor3 = Color3.fromRGB(255, 223, 170)
_2.TextScaled = true
_2.TextSize = 14.000
_2.TextStrokeColor3 = Color3.fromRGB(159, 159, 159)
_2.TextWrapped = true

UICorner_14.CornerRadius = UDim.new(0, 4)
UICorner_14.Parent = _2

UISizeConstraint.Parent = _2
UISizeConstraint.MaxSize = Vector2.new(500, 300)
UISizeConstraint.MinSize = Vector2.new(255, 31)

_12.Name = "12"
_12.Parent = Temp
_12.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
_12.BorderColor3 = Color3.fromRGB(27, 42, 53)
_12.LayoutOrder = 10
_12.Size = UDim2.new(0.161258996, 0, 0.474550337, 0)
_12.Font = Enum.Font.Gotham
_12.Text = "Enchant3:"
_12.TextColor3 = Color3.fromRGB(255, 223, 170)
_12.TextScaled = true
_12.TextSize = 14.000
_12.TextStrokeColor3 = Color3.fromRGB(159, 159, 159)
_12.TextWrapped = true

UICorner_15.CornerRadius = UDim.new(0, 4)
UICorner_15.Parent = _12

UICorner_16.CornerRadius = UDim.new(0, 3)
UICorner_16.Parent = Template

UICorner_17.CornerRadius = UDim.new(0, 6)
UICorner_17.Parent = Main

Glow.Name = "Glow"
Glow.Parent = Main
Glow.BackgroundTransparency = 1.000
Glow.BorderSizePixel = 0
Glow.Position = UDim2.new(-0.0539650507, 0, -0.0530436859, 0)
Glow.Size = UDim2.new(1.10878861, 0, 1.10817635, 0)
Glow.ZIndex = 0
Glow.Image = "rbxassetid://5028857084"
Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow.SliceCenter = Rect.new(24, 24, 276, 276)

open.Name = "open"
open.Parent = Main
open.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
open.BackgroundTransparency = 1.000
open.Size = UDim2.new(1, 0, 1.00000024, 0)
open.Visible = false

UICorner_18.CornerRadius = UDim.new(0, 6)
UICorner_18.Parent = open

Open.Name = "Open"
Open.Parent = open
Open.Active = false
Open.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Open.BackgroundTransparency = 1.000
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.470012248, 0, 0.0201607086, 0)
Open.Selectable = false
Open.Size = UDim2.new(0.0571083017, 0, 0.965726852, 0)
Open.Image = "rbxassetid://9098000768"

-- Scripts:

local function KLTCUPP_fake_script() -- ImageButton_2.LocalScript 
	local script = Instance.new('LocalScript', ImageButton_2)

	local Button = script.Parent
	local GUI = script.Parent.Parent.Parent
	
	local otherButton = GUI.open
	
	local function work(complete)
		if complete then
		otherButton.Visible = true
		end
	end
	
	Button.MouseButton1Click:Connect(function()
		GUI.ScrollingFrame.Visible = false
		GUI.Top.Visible = false
		GUI:TweenSize(
			UDim2.new(0.514, 0,0.049, 0),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Quart,
			1,
			true,
			work
		)
	end)
end
coroutine.wrap(KLTCUPP_fake_script)()
local function EYQXW_fake_script() -- ScrollingFrame.LocalScript 
	local script = Instance.new('LocalScript', ScrollingFrame)

	local player = game.Players.LocalPlayer
	local char = player.Character
	local human = char.HumanoidRootPart
	local base
	local template = script.Parent.Template
	script.Parent.AutomaticCanvasSize = Enum.AutomaticSize.XY
	
	for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
		if v.Name == player.Name.. "'s" .. " Base" then
			base = v
		end
	end
	
	local partFolder = Instance.new("Folder")
	partFolder.Parent = base
	partFolder.Name = "My Items"
	
	base.ItemMachine.Molder.Main.Touched:Connect(function(Part)
		task.wait(0.2)
		local part = Part.Parent
		if part.Parent == game:GetService("Workspace").Items then
	
			local names = 0
			for i,v in pairs(part.Main.Gui:GetChildren()) do
				v.Name = tostring(names)
				names = names + 1
			end
	
			local values = 9
			for i,v in pairs(part.Main.Gui[4]:GetChildren()) do
				v.Name = tostring(values)
				values = values + 1
			end
	
			local temp = template:Clone()
			temp.BackgroundColor3 = Color3.fromRGB(73, 73, 255)
			
			for i,v in pairs(temp.Temp:GetChildren()) do
				if v:IsA("TextLabel") then
					v.TextColor3 = Color3.fromRGB(154, 154, 154)
				end
			end
			
			part.Parent = partFolder
			temp.Parent = script.Parent
			for _,Sword in pairs(part:GetDescendants()) do
				for i,v in pairs(temp.Temp:GetChildren()) do
					if Sword.Name == v.Name then
						Sword.Changed:Connect(function()
							if Sword.Name == "SellingTime" and Sword.Value < 1 then temp:Destroy()
	
							elseif Sword.Name == "Level" then
								v.Text = tostring(Sword.Value)
								v.TextColor3 = Color3.fromRGB(125, 255, 69)
	
							elseif Sword.Name == "SellingTime" then
								v.Text = tostring(Sword.Value)
								v.TextColor3 = Color3.fromRGB(255, 11, 88)
	
							elseif Sword.Name == "ITEMID" then
								v.Text = tostring(Sword.Value)
								v.TextColor3 = Color3.fromRGB(0, 59, 255)
	
							elseif Sword.Name == "CurrentOwner" then
								v.Text = tostring(Sword.Value)
								v.TextColor3 = Color3.fromRGB(0, 255, 29)
	
							elseif Sword:IsA("TextLabel") then
								v.Text = Sword.Text
								if v.Name ~= "5" then
									v.TextColor3 = Sword.TextColor3
								elseif v.Name == "5" then
									v.TextColor3 = Color3.fromRGB(255, 226, 0)
								end
							end
						end)
					end
				end
			end
		end
	end)
end
coroutine.wrap(EYQXW_fake_script)()
local function NDJAT_fake_script() -- Main.SmoothDrag 
	local script = Instance.new('LocalScript', Main)

	local Drag = script.Parent.Parent.Main
	gsCoreGui = game:GetService("CoreGui")
	gsTween = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")
		local dragging
		local dragInput
		local dragStart
		local startPos
		local function update(input)
			local delta = input.Position - dragStart
			local dragTime = 0.04
			local SmoothDrag = {}
			SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			local dragSmoothFunction = gsTween:Create(Drag, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
			dragSmoothFunction:Play()
		end
		Drag.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = Drag.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		Drag.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging and Drag.Size then
				update(input)
			end
		end)
	
end
coroutine.wrap(NDJAT_fake_script)()
local function FWJFVMJ_fake_script() -- open.LocalScript 
	local script = Instance.new('LocalScript', open)

	local Button = script.Parent
	local GuiFrame = script.Parent.Parent
	
	local function work(complete)
		if complete then
			task.wait(0.1)
			GuiFrame.ScrollingFrame.Visible = true
			GuiFrame.Top.Visible = true
		end
	end
	
	Button.MouseButton1Click:Connect(function()
		Button.Visible = false
		local tween = GuiFrame:TweenSize(
			UDim2.new(0.514, 0,0.663, 0),
			Enum.EasingDirection.In,
			Enum.EasingStyle.Quad,
			1,
			true,
			work
		)
	end)
end
coroutine.wrap(FWJFVMJ_fake_script)()
