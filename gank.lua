local Library = {}
function Library:CreateMain()
	local Main = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local TextButton = Instance.new("TextButton")

	Main.Name = "Main"
	Main.Parent = game:GetService("CoreGui")
	Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = Main
	Frame.BackgroundColor3 = Color3.fromRGB(0, 209, 255)
	Frame.Position = UDim2.new(0.0281690359, 0, 0.059766762, 0)
	Frame.Size = UDim2.new(0, 92, 0, 247)
	Frame.Active = true
	Frame.Draggable = true

	UIListLayout.Parent = Frame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	
	function onKeyPress(inputObject, gameProcessedEvent)
		if inputObject.KeyCode == Enum.KeyCode.RightControl then
			if Frame.Visible == false then
				Frame.Visible = true
			else
				Frame.Visible = false
			end
		end
	end

	game:GetService("UserInputService").InputBegan:connect(onKeyPress)
	
	local GamerLibrary = {}
	
	function GamerLibrary:NewButton(name)
		TextButton.Parent = Frame
		TextButton.BackgroundColor3 = Color3.fromRGB(0, 161, 193)
		TextButton.Size = UDim2.new(0, 92, 0, 24)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 14.000
		TextButton.Text = name
	end
	
	return GamerLibrary;
end

return Library;
