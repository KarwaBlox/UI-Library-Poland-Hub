


--Services
local players = game:GetService("Players")
local tweenService = game:GetService("TweenService")
local runService = game:GetService("RunService")
local coreGui = game:GetService("CoreGui")
local uis = game:GetService("UserInputService")
local LP = players.LocalPlayer
local Mouse = LP:GetMouse()
---------------------------------------------------
--Vars
local viewport = workspace.CurrentCamera.ViewportSize
local DisplayName = players.LocalPlayer.DisplayName
local Rank = "Admin "
local Versio = "1.0.0"
local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

local Library = {}


function Library:Validate(deafults, options)
	options = options or {}
	for i, v in pairs(deafults) do
		if options[i] == nil then
			options[i] = v 
		end
	end
	return options
end

function Library:tween(object, goal, callback)
	local tween = tweenService:Create(object, tweenInfo, goal)
	tween.Completed:Connect(callback or function() end)
	tween:Play()
end

function Library:New(options)
	options = Library:Validate({
		name = "UI Library"
	}, options or {})
	
	local GUI = {
		CurrentTab = nil,
		dragToggle = nil,
		dragSpeed = 0.10,
		dragStart = nil,
		startPos = nil,
		MouseDown = false,
		Hover = false,
		MouseDown1 = false,
		Hover1 = false,
	}
	
do	--main
	-- StarterGui.ScreenGui
		-- StarterGui.UIlib(2nd)
		GUI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
		GUI["1"]["Name"] = [[UIlib(2nd)]];
		GUI["1"]["IgnoreGuiInset"] = true;

		-- StarterGui.UIlib(2nd).MainFrame
		GUI["2"] = Instance.new("Frame", GUI["1"]);
		GUI["2"]["BorderSizePixel"] = 0;
		GUI["2"]["BackgroundColor3"] = Color3.fromRGB(41, 40, 45);
		GUI["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["2"]["Size"] = UDim2.new(0, 450, 0, 350);
		GUI["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
		GUI["2"]["Name"] = [[MainFrame]];

		-- StarterGUI.UIlib(2nd).MainFrame.UICorner
		GUI["3"] = Instance.new("UICorner", GUI["2"]);
		GUI["3"]["CornerRadius"] = UDim.new(0, 3);

		-- StarterGUI.UIlib(2nd).MainFrame.DropShadowHolder
		GUI["4"] = Instance.new("Frame", GUI["2"]);
		GUI["4"]["ZIndex"] = 0;
		GUI["4"]["BorderSizePixel"] = 0;
		GUI["4"]["BackgroundTransparency"] = 1;
		GUI["4"]["Size"] = UDim2.new(1, 0, 1, 0);
		GUI["4"]["Name"] = [[DropShadowHolder]];

		-- StarterGUI.UIlib(2nd).MainFrame.DropShadowHolder.DropShadow
		GUI["5"] = Instance.new("ImageLabel", GUI["4"]);
		GUI["5"]["ZIndex"] = 0;
		GUI["5"]["BorderSizePixel"] = 0;
		GUI["5"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
		GUI["5"]["ScaleType"] = Enum.ScaleType.Slice;
		GUI["5"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["5"]["ImageTransparency"] = 0.5;
		GUI["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["5"]["Image"] = [[rbxassetid://6014261993]];
		GUI["5"]["Size"] = UDim2.new(1, 47, 1, 47);
		GUI["5"]["Name"] = [[DropShadow]];
		GUI["5"]["BackgroundTransparency"] = 1;
		GUI["5"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

		-- StarterGUI.UIlib(2nd).MainFrame.TopInfo
		GUI["6"] = Instance.new("Frame", GUI["2"]);
		GUI["6"]["BorderSizePixel"] = 0;
		GUI["6"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
		GUI["6"]["Size"] = UDim2.new(1, 0, 0, 30);
		GUI["6"]["Name"] = [[TopInfo]];

		-- StarterGUI.UIlib(2nd).MainFrame.TopInfo.UICorner
		GUI["7"] = Instance.new("UICorner", GUI["6"]);
		GUI["7"]["CornerRadius"] = UDim.new(0, 6);

		-- StarterGUI.UIlib(2nd).MainFrame.TopInfo.TopInfoLayer
		GUI["8"] = Instance.new("Frame", GUI["6"]);
		GUI["8"]["BorderSizePixel"] = 0;
		GUI["8"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
		GUI["8"]["Size"] = UDim2.new(1, 0, 0, -15);
		GUI["8"]["Position"] = UDim2.new(0, 0, 1, 0);
		GUI["8"]["Name"] = [[TopInfoLayer]];

		-- StarterGUI.UIlib(2nd).MainFrame.TopInfo.Title
		GUI["9"] = Instance.new("TextLabel", GUI["6"]);
		GUI["9"]["ZIndex"] = 2;
		GUI["9"]["BorderSizePixel"] = 0;
		GUI["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		GUI["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["9"]["TextSize"] = 14;
		GUI["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["9"]["Size"] = UDim2.new(1, 0, 0, 30);
		GUI["9"]["Text"] = options.name;
		GUI["9"]["Name"] = [[Title]];
		GUI["9"]["Font"] = Enum.Font.Ubuntu;
		GUI["9"]["BackgroundTransparency"] = 1;

		-- StarterGUI.UIlib(2nd).MainFrame.TopInfo.Title.UIPadding
		GUI["a"] = Instance.new("UIPadding", GUI["9"]);
		GUI["a"]["PaddingLeft"] = UDim.new(0, 8);

		-- StarterGUI.UIlib(2nd).MainFrame.TopInfo.Title.UIStroke
		GUI["b"] = Instance.new("UIStroke", GUI["9"]);
		GUI["b"]["Thickness"] = 0.800000011920929;
		GUI["b"]["LineJoinMode"] = Enum.LineJoinMode.Bevel;

		-- StarterGUI.UIlib(2nd).MainFrame.TopInfo.Close
		GUI["c"] = Instance.new("ImageLabel", GUI["6"]);
		GUI["c"]["ZIndex"] = 2;
		GUI["c"]["BorderSizePixel"] = 0;
		GUI["c"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
		GUI["c"]["ImageColor3"] = Color3.fromRGB(255, 61, 64);
		GUI["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["c"]["Image"] = [[rbxassetid://12195649193]];
		GUI["c"]["Size"] = UDim2.new(0, 16, 0, 16);
		GUI["c"]["Name"] = [[Close]];
		GUI["c"]["BackgroundTransparency"] = 1;
		GUI["c"]["Position"] = UDim2.new(0.8999999761581421, 28, 0.5, 0);

		-- StarterGUI.UIlib(2nd).MainFrame.TopInfo.Line
		GUI["d"] = Instance.new("Frame", GUI["6"]);
		GUI["d"]["BorderSizePixel"] = 0;
		GUI["d"]["BackgroundColor3"] = Color3.fromRGB(123, 145, 191);
		GUI["d"]["Size"] = UDim2.new(1, 0, 0, 1);
		GUI["d"]["Position"] = UDim2.new(0, 0, 1, 0);
		GUI["d"]["Name"] = [[Line]];

		-- StarterGUI.UIlib(2nd).MainFrame.TopInfo.Minimize
		GUI["e"] = Instance.new("ImageLabel", GUI["6"]);
		GUI["e"]["ZIndex"] = 2;
		GUI["e"]["BorderSizePixel"] = 0;
		GUI["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["e"]["Image"] = [[rbxassetid://12195614424]];
		GUI["e"]["Size"] = UDim2.new(0, 20, 0, 20);
		GUI["e"]["Name"] = [[Minimize]];
		GUI["e"]["BackgroundTransparency"] = 1;
		GUI["e"]["Position"] = UDim2.new(0.8999999761581421, 4, 0.5, 0);
		
		-- StarterGUI.UIlib(2nd).MainFrame.ContentCointainer
		GUI["1f"] = Instance.new("Frame", GUI["2"]);
		GUI["1f"]["BorderSizePixel"] = 0;
		GUI["1f"]["BackgroundColor3"] = Color3.fromRGB(40, 40, 45);
		GUI["1f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["1f"]["Size"] = UDim2.new(1, -120, 1, -60);
		GUI["1f"]["Position"] = UDim2.new(0, 272, 0, 187);
		GUI["1f"]["Name"] = [[ContentCointainer]];		
		
		
end
	
do  --Navigation
		-- StarterGui.UIlib(2nd).MainFrame.Navigation
		GUI["f"] = Instance.new("Frame", GUI["2"]);
		GUI["f"]["BorderSizePixel"] = 0;
		GUI["f"]["BackgroundColor3"] = Color3.fromRGB(80, 85, 92);
		GUI["f"]["Size"] = UDim2.new(0, 90, 1, -31);
		GUI["f"]["Position"] = UDim2.new(0, 0, 0, 31);
		GUI["f"]["Name"] = [[Navigation]];

		-- StarterGui.UIlib(2nd).MainFrame.Navigation.UICorner
		GUI["10"] = Instance.new("UICorner", GUI["f"]);
		GUI["10"]["CornerRadius"] = UDim.new(0, 3);

		-- StarterGui.UIlib(2nd).MainFrame.Navigation.ScrollingFrame
		GUI["11"] = Instance.new("ScrollingFrame", GUI["f"]);
		GUI["11"]["Active"] = true;
		GUI["11"]["BorderSizePixel"] = 0;
		GUI["11"]["BackgroundColor3"] = Color3.fromRGB(41, 40, 45);
		GUI["11"]["Size"] = UDim2.new(1, 0, 1, 0);
		GUI["11"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["11"]["ScrollBarThickness"] = 0;
		
		-- StarterGui.UIlib(2nd).MainFrame.Navigation.ScrollingFrame.UIListLayout
		GUI["16"] = Instance.new("UIListLayout", GUI["11"]);
		GUI["16"]["Padding"] = UDim.new(0, 2);
		GUI["16"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
		
		-- StarterGui.UIlib(2nd).MainFrame.Navigation.ScrollingFrame.UIPadding
		GUI["1b"] = Instance.new("UIPadding", GUI["11"]);
		GUI["1b"]["PaddingTop"] = UDim.new(0, 2);
		
		-- StarterGui.UIlib(2nd).MainFrame.Navigation.Line
		GUI["1c"] = Instance.new("Frame", GUI["f"]);
		GUI["1c"]["BorderSizePixel"] = 0;
		GUI["1c"]["BackgroundColor3"] = Color3.fromRGB(123, 145, 191);
		GUI["1c"]["Size"] = UDim2.new(0, 1, 1, 0);
		GUI["1c"]["Position"] = UDim2.new(1, 0, 0, 0);
		GUI["1c"]["Name"] = [[Line]];

		-- StarterGui.UIlib(2nd).MainFrame.Navigation.Cover
		GUI["1d"] = Instance.new("Frame", GUI["f"]);
		GUI["1d"]["ZIndex"] = 0;
		GUI["1d"]["BorderSizePixel"] = 0;
		GUI["1d"]["BackgroundColor3"] = Color3.fromRGB(80, 85, 92);
		GUI["1d"]["Size"] = UDim2.new(0, 90, 0, 10);
		GUI["1d"]["Name"] = [[Cover]];

		-- StarterGui.UIlib(2nd).MainFrame.Navigation.Cover2
		GUI["1e"] = Instance.new("Frame", GUI["f"]);
		GUI["1e"]["ZIndex"] = 0;
		GUI["1e"]["BorderSizePixel"] = 0;
		GUI["1e"]["BackgroundColor3"] = Color3.fromRGB(80, 85, 92);
		GUI["1e"]["Size"] = UDim2.new(0, -45, 0, 10);
		GUI["1e"]["Position"] = UDim2.new(1, 0, 1, -10);
		GUI["1e"]["Name"] = [[Cover2]];
		

	end
	
	-- logic
do
	local function updateInput(input)
		local delta = input.Position - GUI.dragStart
		local position = UDim2.new(GUI.startPos.X.Scale, GUI.startPos.X.Offset + delta.X,
			GUI.startPos.Y.Scale, GUI.startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(GUI["2"], TweenInfo.new(GUI.dragSpeed), {Position = position}):Play()
	end
	

	GUI["6"].InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			GUI.dragToggle = true
			GUI.dragStart = input.Position
			GUI.startPos = GUI["2"].Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					GUI.dragToggle = false
				end
			end)
		end
	end)

	uis.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if GUI.dragToggle then
				updateInput(input)
			end
		end
	end)
		
		GUI["c"].MouseEnter:Connect(function()
			GUI.Hover = true
		end)

		GUI["c"].MouseLeave:Connect(function()
			GUI.Hover = false
		end)

		
		
		uis.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 and GUI.Hover then
				GUI.MouseDown = true
				Library:tween(GUI["c"], {ImageColor3 = Color3.fromRGB(205, 21, 24)})
			end			
		end)
		
		uis.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 and GUI.Hover then
				GUI.MouseDown = false
				GUI["1"]:Destroy()
			end			
		end)
		
		
		
		
		GUI["e"].MouseEnter:Connect(function()
			if GUI["1"].Enabled then
				GUI.Hover1 = true
			end
		end)

		GUI["e"].MouseLeave:Connect(function()
			GUI.Hover1 = false
		end)



		uis.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 and GUI.Hover1 and GUI["1"].Enabled) then
				GUI.MouseDown1 = true
				Library:tween(GUI["e"], {ImageColor3 = Color3.fromRGB(175, 175, 175)})
			end	
			if not GUI["1"].Enabled then
				GUI.Hover1 = false
				GUI.MouseDown1 = false
				GUI["e"]["ImageColor3"] = Color3.fromRGB(255, 255, 255)
			end
		end)

		uis.InputEnded:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 and GUI.Hover1 and GUI["1"].Enabled) then
				GUI["1"].Enabled = false
				GUI.MouseDown1 = false
			end			
			if not GUI["1"].Enabled then
				GUI.Hover1 = false
				GUI.MouseDown1 = false
				GUI["e"]["ImageColor3"] = Color3.fromRGB(255, 255, 255)
			end
		end)

		uis.InputBegan:Connect(function(inputObject)
			if inputObject.KeyCode == Enum.KeyCode.RightShift then
				if GUI["1"].Enabled then
					GUI["1"].Enabled = false
				else
					GUI["1"].Enabled = true
				end
			end
		end)
		
		
end
		
	function GUI:CreateTab(options)
		options = Library:Validate({
			name = "Deafult",
			icon = "rbxassetid://11945335252"
		}, options or {})
		local Tab = {
			Hover = false,
			Active = false 
		}
		
		
		
		--Render
do
			
			-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab
			Tab["20"] = Instance.new("ScrollingFrame", GUI["1f"]);
			Tab["20"]["Active"] = true;
			Tab["20"]["BorderSizePixel"] = 0;
			Tab["20"]["CanvasSize"] = UDim2.new(0, 0, 12, 0);
			Tab["20"]["BackgroundColor3"] = Color3.fromRGB(41, 40, 45);
			Tab["20"]["BackgroundTransparency"] = 1;
			Tab["20"]["Size"] = UDim2.new(1, 0, 1, 0);
			Tab["20"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
			Tab["20"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
			Tab["20"]["ScrollBarThickness"] = 0;
			Tab["20"]["Name"] = options.name;
			Tab["20"]["Visible"] = false

			-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.UIStroke
			Tab["21"] = Instance.new("UIStroke", Tab["20"]);
			Tab["21"]["Color"] = Color3.fromRGB(123, 145, 191);
			Tab["21"]["Thickness"] = 0.699999988079071;
			Tab["21"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
			
			-- StarterTab.ScreenTab.MainFrame.ContentCointainer.HomeTab.UIListLayout
			Tab["28"] = Instance.new("UIListLayout", Tab["20"]);
			Tab["28"]["Padding"] = UDim.new(0, 8);
			Tab["28"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

			-- StarterTab.ScreenTab.MainFrame.ContentCointainer.HomeTab.UIPadding
			Tab["29"] = Instance.new("UIPadding", Tab["20"]);
			Tab["29"]["PaddingTop"] = UDim.new(0, 8);
			Tab["29"]["PaddingRight"] = UDim.new(0, 8);
			Tab["29"]["PaddingLeft"] = UDim.new(0, 8);
			
		-- StarterTab.ScreenGui.MainFrame.Navigation.ScrollingFrame.HomeInActive
		Tab["16"] = Instance.new("TextLabel", GUI["11"]);
		Tab["16"]["BorderSizePixel"] = 0;
		Tab["16"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		Tab["16"]["BackgroundColor3"] = Color3.fromRGB(126, 134, 145);
		Tab["16"]["TextSize"] = 16;
		Tab["16"]["TextColor3"] = Color3.fromRGB(217, 217, 217);
		Tab["16"]["Size"] = UDim2.new(1, 0, 0, 25);
		Tab["16"]["Text"] = options.name;
		Tab["16"]["Name"] = options.name;
		Tab["16"]["Font"] = Enum.Font.Nunito;
		Tab["16"]["BackgroundTransparency"] = 1;

		-- StarterGui.ScreenGui.MainFrame.Navigation.ScrollingFrame.HomeInActive.UIPadding
		Tab["17"] = Instance.new("UIPadding", Tab["16"]);
		Tab["17"]["PaddingLeft"] = UDim.new(0, 28);

		-- StarterGui.ScreenGui.MainFrame.Navigation.ScrollingFrame.HomeInActive.UIStroke
		Tab["18"] = Instance.new("UIStroke", Tab["16"]);
		Tab["18"]["Thickness"] = 0.45;

		-- StarterGui.ScreenGui.MainFrame.Navigation.ScrollingFrame.HomeInActive.Icon
		Tab["19"] = Instance.new("ImageLabel", Tab["16"]);
		Tab["19"]["ZIndex"] = 2;
		Tab["19"]["BorderSizePixel"] = 0;
		Tab["19"]["BackgroundColor3"] = Color3.fromRGB(217, 217, 217);
		Tab["19"]["ImageColor3"] = Color3.fromRGB(217, 217, 217);
		Tab["19"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		Tab["19"]["Image"] = options.icon;
		Tab["19"]["Size"] = UDim2.new(0, 20, 0, 20);
		Tab["19"]["Name"] = [[Icon]];
		Tab["19"]["BackgroundTransparency"] = 1;
		Tab["19"]["Position"] = UDim2.new(0, -14, 0.5, 0);
			
		
end
		--methods
		function Tab:Activate()
			if not Tab.Active then
				if GUI.CurrentTab ~= nil then
					GUI.CurrentTab:Deactivate()
				end
				Tab.Active = true 
				Library:tween(Tab["16"], {BackgroundTransparency = .8})
				Library:tween(Tab["16"], {TextColor3 = Color3.fromRGB(255,255,255)})
				Library:tween(Tab["19"], {ImageColor3 = Color3.fromRGB(255,255,255)})
				GUI.CurrentTab = Tab
				Tab["20"]["Visible"] = true
			end
		end
		
		function Tab:Deactivate()
			if Tab.Active then
				Tab.Active = false 
				Tab.Hover = false
				Library:tween(Tab["16"], {TextColor3 = Color3.fromRGB(217,217,217)})
				Library:tween(Tab["19"], {ImageColor3 = Color3.fromRGB(217,217,217)})
				Library:tween(Tab["16"], {BackgroundTransparency = 1})
				Tab["20"]["Visible"] = false
			end
		end

		--logic
do
		Tab["16"].MouseEnter:Connect(function()
			Tab.Hover = true
			if not Tab.Active then
				Library:tween(Tab["16"], {TextColor3 = Color3.fromRGB(255,255,255)})
				Library:tween(Tab["19"], {ImageColor3 = Color3.fromRGB(255,255,255)})
			end
		end)

		Tab["16"].MouseLeave:Connect(function()
			Tab.Hover = false

			if not Tab.Active then
				Library:tween(Tab["16"], {TextColor3 = Color3.fromRGB(217,217,217)})
				Library:tween(Tab["19"], {ImageColor3 = Color3.fromRGB(217,217,217)})
			end
		end)
		
		uis.InputBegan:Connect(function(Input)
			
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				if Tab.Hover then
					Tab:Activate()
				end
			end
		end)
		
		if GUI.CurrentTab == nil then
			Tab:Activate()
		end		
	end
		
		function Tab:Button(options)
			options = Library:Validate({
				name = "Deafult",
				callback = function() end
			}, options or {})
			
			
			local Button = {
				Hover = false,
				MouseDown = false
			}
			
			
			--render
			do 
				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Button
				Button["22"] = Instance.new("Frame", Tab["20"]);
				Button["22"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 30);
				Button["22"]["Size"] = UDim2.new(1, 0, 0, 30);
				Button["22"]["Name"] = [[Button]];

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Button.Title
				Button["23"] = Instance.new("TextLabel", Button["22"]);
				Button["23"]["BorderSizePixel"] = 0;
				Button["23"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Button["23"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
				Button["23"]["TextSize"] = 16;
				Button["23"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Button["23"]["Size"] = UDim2.new(1, 0, 1, 0);
				Button["23"]["ClipsDescendants"] = true;
				Button["23"]["Text"] = options.name;
				Button["23"]["Name"] = options.name;
				Button["23"]["Font"] = Enum.Font.Nunito;
				Button["23"]["BackgroundTransparency"] = 1;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Button.Title.UIStroke
				Button["24"] = Instance.new("UIStroke", Button["23"]);
				Button["24"]["LineJoinMode"] = Enum.LineJoinMode.Bevel;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Button.UIPadding
				Button["25"] = Instance.new("UIPadding", Button["22"]);
				Button["25"]["PaddingRight"] = UDim.new(0, 12);
				Button["25"]["PaddingLeft"] = UDim.new(0, 10);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Button.UICorner
				Button["26"] = Instance.new("UICorner", Button["22"]);
				Button["26"]["CornerRadius"] = UDim.new(0, 3);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Button.Click
				Button["27"] = Instance.new("ImageLabel", Button["22"]);
				Button["27"]["BorderSizePixel"] = 0;
				Button["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Button["27"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Button["27"]["Image"] = [[rbxassetid://12195820883]];
				Button["27"]["Size"] = UDim2.new(0, 16, 0, 16);
				Button["27"]["Name"] = [[Click]];
				Button["27"]["BackgroundTransparency"] = 1;
				Button["27"]["Position"] = UDim2.new(1, 0, 0, 15);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Button.UIStroke
				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Button.UIStroke
				Button["28"] = Instance.new("UIStroke", Button["22"]);
				Button["28"]["Color"] = Color3.fromRGB(50, 50, 58);
				Button["28"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
			end
			
			--Methods
			do
				function Button:SetText(text)
					Button["23"].Text = text
				end
				
				function Button:SetCallback(fn)
					options.callback = fn
				end
				
			end
			
			--logic
			do
				Button["22"].MouseEnter:Connect(function()
					Button.Hover = true
					Library:tween(Button["28"], {Color = Color3.fromRGB(70, 70, 78)})
				end)

				Button["22"].MouseLeave:Connect(function()
					Button.Hover = false
					Library:tween(Button["28"], {Color = Color3.fromRGB(50, 50, 58)})
					Library:tween(Button["22"], {BackgroundColor3 = Color3.fromRGB(26, 26, 30)})

				end)
			end
			
			uis.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and Button.Hover then
					Button.MouseDown = true
					Library:tween(Button["28"], {Color = Color3.fromRGB(80, 80, 88)})
					Library:tween(Button["22"], {BackgroundColor3 = Color3.fromRGB(46, 46, 50)})
				end			
			end)
			
			
			uis.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1  then
					Button.MouseDown = false
					
					if Button.Hover then
						Library:tween(Button["28"], {Color = Color3.fromRGB(70, 70, 78)})
						Library:tween(Button["22"], {BackgroundColor3 = Color3.fromRGB(26, 26, 30)})
					end
					
					else
					--reset
					Library:tween(Button["28"], {Color = Color3.fromRGB(50, 50, 58)})
					Library:tween(Button["22"], {BackgroundColor3 = Color3.fromRGB(26, 26, 30)})
				end			
			end)
			
			uis.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and Button.Hover then
					options.callback()
				end
			end)
				
			return Button
		end
		
		function Tab:Label(options)
			options = Library:Validate({
				name = "Label",
			}, options or {})


			local Label = {}	
			
			--Render
			do 
				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Label
				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Label
				Label["62"] = Instance.new("Frame", Tab["20"]);
				Label["62"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 30);
				Label["62"]["Size"] = UDim2.new(1, 0, 0, 30);
				Label["62"]["Name"] = [[Label]];
				Label["62"]["ClipsDescendants"] = true;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Label.Title
				Label["63"] = Instance.new("TextLabel", Label["62"]);
				Label["63"]["BorderSizePixel"] = 0;
				Label["63"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Label["63"]["TextYAlignment"] = Enum.TextYAlignment.Top;
				Label["63"]["ClipsDescendants"] = true;
				Label["63"]["TextWrapped"] = true;
				Label["63"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
				Label["63"]["TextSize"] = 16;
				Label["63"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Label["63"]["Size"] = UDim2.new(1, 0, 1, 0);
				Label["63"]["Name"] = options.name
				Label["63"]["Text"] = options.name
				Label["63"]["Font"] = Enum.Font.Nunito;
				Label["63"]["BackgroundTransparency"] = 1;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Label.Title.UIStroke
				Label["64"] = Instance.new("UIStroke", Label["63"]);


				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Label.Title.UIPadding
				Label["65"] = Instance.new("UIPadding", Label["63"]);
				Label["65"]["PaddingLeft"] = UDim.new(0, 29);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Label.UIPadding
				Label["66"] = Instance.new("UIPadding", Label["62"]);
				Label["66"]["PaddingTop"] = UDim.new(0, 7);
				Label["66"]["PaddingRight"] = UDim.new(0, 0);
				Label["66"]["PaddingBottom"] = UDim.new(0, 7);
				Label["66"]["PaddingLeft"] = UDim.new(0, 2);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Label.UICorner
				Label["67"] = Instance.new("UICorner", Label["62"]);
				Label["67"]["CornerRadius"] = UDim.new(0, 3);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Label.UIStroke
				Label["68"] = Instance.new("UIStroke", Label["62"]);
				Label["68"]["Color"] = Color3.fromRGB(50, 50, 58);
				Label["68"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Label.Label
				Label["69"] = Instance.new("ImageLabel", Label["62"]);
				Label["69"]["BorderSizePixel"] = 0;
				Label["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Label["69"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Label["69"]["Image"] = [[rbxassetid://11954508977]];
				Label["69"]["Size"] = UDim2.new(0, 16, 0, 16);
				Label["69"]["Name"] = [[Label]];
				Label["69"]["BackgroundTransparency"] = 1;
				Label["69"]["Position"] = UDim2.new(0, 15, 0, 8);
			end
			
			--Methods
			function Label:SetText(text)
				options.name = text
				Label:_update()
			end
			
			function Label:_update()
				Label["63"].Text = options.name
				
				Label["63"].Size = UDim2.new(Label["63"].Size.X.Scale, Label["63"].Size.X.Offset, 0, math.huge)
				Label["63"].Size = UDim2.new(Label["63"].Size.X.Scale, Label["63"].Size.X.Offset, 0, Label["63"].TextBounds.Y)
				Library:tween(Label["62"], {Size = UDim2.new(Label["62"].Size.X.Scale, Label["62"].Size.X.Offset, 0, Label["63"].TextBounds.Y + 12)})
				
			end
			
			Label:_update()
			
			return Label
		end
		
		
		function Tab:Slider(options)
			options = Library:Validate({
				name = "Slider",
				min = 0,
				max = 100,
				deafult = 50,
				callback = function(v) print(v) end
			}, options or {})
			
			local Slider = {
				MouseDown = false,
				Hover = false,
				Connection = nil,
				Options = options
			}
			
			do --render
				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Slider
				Slider["41"] = Instance.new("Frame", Tab["20"]);
				Slider["41"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 30);
				Slider["41"]["Size"] = UDim2.new(1, 0, 0, 40);
				Slider["41"]["Name"] = [[Slider]];

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Slider.Title
				Slider["42"] = Instance.new("TextLabel", Slider["41"]);
				Slider["42"]["BorderSizePixel"] = 0;
				Slider["42"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Slider["42"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
				Slider["42"]["TextSize"] = 16;
				Slider["42"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["42"]["Size"] = UDim2.new(1, 0, 0, 20);
				Slider["42"]["Text"] = options.name;
				Slider["42"]["Name"] = options.name;
				Slider["42"]["Font"] = Enum.Font.Nunito;
				Slider["42"]["BackgroundTransparency"] = 1;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Slider.Title.UIStroke
				Slider["43"] = Instance.new("UIStroke", Slider["42"]);
				Slider["43"]["Thickness"] = 0.699999988079071;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Slider.UIPadding
				Slider["44"] = Instance.new("UIPadding", Slider["41"]);
				Slider["44"]["PaddingLeft"] = UDim.new(0, 8);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Slider.UICorner
				Slider["45"] = Instance.new("UICorner", Slider["41"]);
				Slider["45"]["CornerRadius"] = UDim.new(0, 3);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Slider.UIStroke
				Slider["46"] = Instance.new("UIStroke", Slider["41"]);
				Slider["46"]["Color"] = Color3.fromRGB(50, 50, 58);
				Slider["46"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Slider.Value
				Slider["47"] = Instance.new("TextLabel", Slider["41"]);
				Slider["47"]["BorderSizePixel"] = 0;
				Slider["47"]["TextXAlignment"] = Enum.TextXAlignment.Right;
				Slider["47"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
				Slider["47"]["TextSize"] = 16;
				Slider["47"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["47"]["Size"] = UDim2.new(0, 25, 0, 20);
				Slider["47"]["Text"] = tostring(options.deafult);
				Slider["47"]["Name"] = [[Value]];
				Slider["47"]["Font"] = Enum.Font.Nunito;
				Slider["47"]["BackgroundTransparency"] = 1;
				Slider["47"]["Position"] = UDim2.new(1, -25, 0, 0);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Slider.Value.UIStroke
				Slider["48"] = Instance.new("UIStroke", Slider["47"]);
				Slider["48"]["Thickness"] = 0.699999988079071;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Slider.Value.UIPadding
				Slider["49"] = Instance.new("UIPadding", Slider["47"]);
				Slider["49"]["PaddingRight"] = UDim.new(0, 6);
				Slider["49"]["PaddingLeft"] = UDim.new(0, 8);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Slider.SliderBack
				Slider["4a"] = Instance.new("Frame", Slider["41"]);
				Slider["4a"]["BorderSizePixel"] = 0;
				Slider["4a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["4a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Slider["4a"]["Size"] = UDim2.new(0, 250, 0, 5);
				Slider["4a"]["Position"] = UDim2.new(0, 125, 1, -15);
				Slider["4a"]["Name"] = [[SliderBack]];

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Slider.SliderBack.UICorner
				Slider["4b"] = Instance.new("UICorner", Slider["4a"]);
				Slider["4b"]["CornerRadius"] = UDim.new(0, 2);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Slider.SliderBack.UIStroke
				Slider["4c"] = Instance.new("UIStroke", Slider["4a"]);
				Slider["4c"]["Color"] = Color3.fromRGB(50, 50, 58);
				Slider["4c"]["Thickness"] = 0.699999988079071;
				Slider["4c"]["Transparency"] = 0.5;
				Slider["4c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Slider.SliderBack.Draggable
				Slider["4d"] = Instance.new("Frame", Slider["4a"]);
				Slider["4d"]["BorderSizePixel"] = 0;
				Slider["4d"]["BackgroundColor3"] = Color3.fromRGB(123, 145, 191);
				Slider["4d"]["Size"] = UDim2.new(0, 125, 0, 5);
				Slider["4d"]["Name"] = [[Draggable]];
			end
			
			--methods
			function Slider:SetValue(v)
				if v == nil then
					local percentage = math.clamp((Mouse.X - Slider["4a"].AbsolutePosition.X) / (Slider["4a"].AbsoluteSize.X), 0, 1)
					local value = math.floor(((options.max - options.min) * percentage) + options.min)
					Slider["47"].Text = tostring(value)
				
					Slider["4d"].Size = UDim2.fromScale(percentage, 1)
				else
					Slider["47"].Text = tostring(v)
					Slider["4d"].Size = UDim2.fromScale(((v - options.min) / (options.max - options.min)), 1)
					
				end
				options.callback(Slider:GetValue())
			end
			
			function Slider:GetValue(v)
				return tonumber(Slider["47"].Text)
			end
			
			-- logic
			do
				Slider["41"].MouseEnter:Connect(function()
					Slider.Hover = true
					Library:tween(Slider["46"], {Color = Color3.fromRGB(70, 70, 78)})
					Library:tween(Slider["4c"], {Color = Color3.fromRGB(70, 70, 78)})
					Library:tween(Slider["4d"], {BackgroundColor3 = Color3.fromRGB(123, 145, 191)})
				end)
				
				Slider["41"].MouseLeave:Connect(function()
					Slider.Hover = false
					Library:tween(Slider["46"], {Color = Color3.fromRGB(50, 50, 58)})
					Library:tween(Slider["4c"], {Color = Color3.fromRGB(50, 50, 58)})
					Library:tween(Slider["4d"], {BackgroundColor3 = Color3.fromRGB(123, 145, 191)})
				end)


			uis.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and Slider.Hover  then
					Slider.MouseDown = true
					Library:tween(Slider["4c"], {Color = Color3.fromRGB(90, 90, 98)})
					Library:tween(Slider["4d"], {BackgroundColor3 = Color3.fromRGB(143, 165, 211)})
					
					if not Slider.Connection then
						Slider.Connection = runService.RenderStepped:Connect(function()
							Slider:SetValue()
						end)
					end
				end			
			end)


			uis.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					Slider.MouseDown = false
						
						if Slider.Connection then Slider.Connection:Disconnect()
							Slider.Connection = nil
						end	
						
					if Slider.Hover then
						Library:tween(Slider["4c"], {Color = Color3.fromRGB(70, 70, 78)})
						Library:tween(Slider["4d"], {BackgroundColor3 = Color3.fromRGB(123, 145, 191)})
					end

				else 
					--reset
					Library:tween(Slider["4c"], {Color = Color3.fromRGB(50, 50, 58)})
					Library:tween(Slider["4d"], {BackgroundColor3 = Color3.fromRGB(123, 145, 191)})
						
				end
				

			end)
			

		end
			
			return Slider
		end
		
		function Tab:Toggle(options)
			options = Library:Validate({
				name = "Toggle",
				callback = function() end
			}, options or {})
				
			local Toggle = {
				Hover = false,
				MouseDown = false,
				State = false
			}
			
			-- render
			do 
				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.ToggleInActive
				Toggle["6a"] = Instance.new("Frame", Tab["20"]);
				Toggle["6a"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 30);
				Toggle["6a"]["Size"] = UDim2.new(1, 0, 0, 30);
				Toggle["6a"]["Name"] = [[ToggleInActive]];

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.ToggleInActive.Title
				Toggle["6b"] = Instance.new("TextLabel", Toggle["6a"]);
				Toggle["6b"]["BorderSizePixel"] = 0;
				Toggle["6b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Toggle["6b"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
				Toggle["6b"]["TextSize"] = 16;
				Toggle["6b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["6b"]["Size"] = UDim2.new(1, 0, 1, 0);
				Toggle["6b"]["Text"] = options.name;
				Toggle["6b"]["Name"] = options.name;
				Toggle["6b"]["Font"] = Enum.Font.Nunito;
				Toggle["6b"]["BackgroundTransparency"] = 1;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.ToggleInActive.Title.UIStroke
				Toggle["6c"] = Instance.new("UIStroke", Toggle["6b"]);
				Toggle["6c"]["Thickness"] = 0.699999988079071;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.ToggleInActive.UIPadding
				Toggle["6d"] = Instance.new("UIPadding", Toggle["6a"]);
				Toggle["6d"]["PaddingLeft"] = UDim.new(0, 10);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.ToggleInActive.UICorner
				Toggle["6e"] = Instance.new("UICorner", Toggle["6a"]);
				Toggle["6e"]["CornerRadius"] = UDim.new(0, 3);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.ToggleInActive.UIStroke
				Toggle["6f"] = Instance.new("UIStroke", Toggle["6a"]);
				Toggle["6f"]["Color"] = Color3.fromRGB(50, 50, 58);
				Toggle["6f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.ToggleInActive.Checkmark Container
				Toggle["70"] = Instance.new("Frame", Toggle["6a"]);
				Toggle["70"]["BorderSizePixel"] = 0;
				Toggle["70"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 40);
				Toggle["70"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Toggle["70"]["Size"] = UDim2.new(0, 16, 0, 16);
				Toggle["70"]["Position"] = UDim2.new(1, -16, 0.5, 0);
				Toggle["70"]["Name"] = [[Checkmark Container]];

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.ToggleInActive.Checkmark Container.Checkmark
				Toggle["71"] = Instance.new("ImageLabel", Toggle["70"]);
				Toggle["71"]["BorderSizePixel"] = 0;
				Toggle["71"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["71"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Toggle["71"]["Size"] = UDim2.new(0, 14, 0, 14);
				Toggle["71"]["Name"] = [[Checkmark]];
				Toggle["71"]["BackgroundTransparency"] = 1;
				Toggle["71"]["Position"] = UDim2.new(1, -8, 0, 8);
				Toggle["71"]["Image"] = "";

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.ToggleInActive.Checkmark Container.UICorner
				Toggle["72"] = Instance.new("UICorner", Toggle["70"]);
				Toggle["72"]["CornerRadius"] = UDim.new(0, 2);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.ToggleInActive.Checkmark Container.UIStroke
				Toggle["73"] = Instance.new("UIStroke", Toggle["70"]);
				Toggle["73"]["Color"] = Color3.fromRGB(50, 50, 58);
				Toggle["73"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
			end
			
			-- Methods
			do
				function Toggle:Toggle(b)
					if b == nil then
						Toggle.State = not Toggle.State
					else 
						Toggle.State = b 
					end
					
					if Toggle.State then
					Library:tween(Toggle["70"], {BackgroundColor3 = Color3.fromRGB(34, 34, 40)})
					Toggle["71"].Image = "rbxassetid://11956641232"
					else
					Library:tween(Toggle["73"], {Color = Color3.fromRGB(34, 34, 40)})
					Toggle["71"].Image = ""
					end
					options.callback(Toggle.State)
				end
			end
			
			--logic
			do
				Toggle["6a"].MouseEnter:Connect(function()
					Toggle.Hover = true
					Library:tween(Toggle["6f"], {Color = Color3.fromRGB(70, 70, 78)})
					Library:tween(Toggle["73"], {Color = Color3.fromRGB(70, 70, 78)})	
				end)

				Toggle["6a"].MouseLeave:Connect(function()
					Toggle.Hover = false
					Library:tween(Toggle["6f"], {Color = Color3.fromRGB(50, 50, 58)})
					Library:tween(Toggle["73"], {Color = Color3.fromRGB(50, 50, 58)})	

				end)

			uis.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and Toggle.Hover then
					Toggle.MouseDown = true
						Library:tween(Toggle["6f"], {Color = Color3.fromRGB(80, 80, 88)})
						Library:tween(Toggle["73"], {Color = Color3.fromRGB(80, 80, 88)})	
				end			
			end)


			uis.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1  then
					Toggle.MouseDown = false

					if Toggle.Hover then
							Library:tween(Toggle["6f"], {Color = Color3.fromRGB(70, 70, 78)})
							Library:tween(Toggle["73"], {Color = Color3.fromRGB(70, 70, 78)})	
					end

				else
					--reset
						Library:tween(Toggle["6f"], {Color = Color3.fromRGB(50, 50, 58)})
						Library:tween(Toggle["73"], {Color = Color3.fromRGB(50, 50, 58)})	
				end			
			end)
			end
			
			uis.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and Toggle.Hover then
					Toggle:Toggle()	
				end
			end)
				
			
			return Toggle	
		end
		
		function Tab:Dropdown(options)
			options = Library:Validate({
				name = "Deafult",
				callback = function(v) print(v) end,
				items = {}
			}, options or {})
			
			
			local Dropdown = {
				Items = {
					["id"] = {
						{},
						"Value"
					}
				},
				Open = false,
				MouseDown = false,
				Hover = false,
				HoveringItem = false,
			}			
			
			
			--render
			do
								
				Dropdown["2b"] = Instance.new("Frame", Tab["20"]);
				Dropdown["2b"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 30);
				Dropdown["2b"]["Size"] = UDim2.new(1, 0, 0, 30);
				Dropdown["2b"]["ClipsDescendants"] = true;
				Dropdown["2b"]["Position"] = UDim2.new(0, 0, 0.13475172221660614, 0);
				Dropdown["2b"]["Name"] = [[Dropdown]];

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Dropdown.Title
				Dropdown["2c"] = Instance.new("TextLabel", Dropdown["2b"]);
				Dropdown["2c"]["BorderSizePixel"] = 0;
				Dropdown["2c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Dropdown["2c"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
				Dropdown["2c"]["TextSize"] = 16;
				Dropdown["2c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown["2c"]["Size"] = UDim2.new(1, 0, 0, 30);
				Dropdown["2c"]["Text"] = options.name;
				Dropdown["2c"]["Name"] = options.name;
				Dropdown["2c"]["Font"] = Enum.Font.Nunito;
				Dropdown["2c"]["BackgroundTransparency"] = 1;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Dropdown.Title.UIStroke
				Dropdown["2d"] = Instance.new("UIStroke", Dropdown["2c"]);
				Dropdown["2d"]["Thickness"] = 0.699999988079071;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Dropdown.UIPadding
				Dropdown["2e"] = Instance.new("UIPadding", Dropdown["2b"]);
				Dropdown["2e"]["PaddingRight"] = UDim.new(0, 12);
				Dropdown["2e"]["PaddingLeft"] = UDim.new(0, 10);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Dropdown.UICorner
				Dropdown["2f"] = Instance.new("UICorner", Dropdown["2b"]);
				Dropdown["2f"]["CornerRadius"] = UDim.new(0, 3);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Dropdown.UIStroke
				Dropdown["30"] = Instance.new("UIStroke", Dropdown["2b"]);
				Dropdown["30"]["Color"] = Color3.fromRGB(50, 50, 58);
				Dropdown["30"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Dropdown.Dropdown
				Dropdown["31"] = Instance.new("ImageLabel", Dropdown["2b"]);
				Dropdown["31"]["BorderSizePixel"] = 0;
				Dropdown["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown["31"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Dropdown["31"]["Image"] = [[rbxassetid://11954728818]];
				Dropdown["31"]["Size"] = UDim2.new(0, 16, 0, 16);
				Dropdown["31"]["Name"] = [[Dropdown]];
				Dropdown["31"]["BackgroundTransparency"] = 1;
				Dropdown["31"]["Position"] = UDim2.new(1, -3, 0, 15);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Dropdown.OptionHolder
				Dropdown["32"] = Instance.new("Frame", Dropdown["2b"]);
				Dropdown["32"]["BorderSizePixel"] = 0;
				Dropdown["32"]["BackgroundColor3"] = Color3.fromRGB(73, 73, 73);
				Dropdown["32"]["BackgroundTransparency"] = 1;
				Dropdown["32"]["Size"] = UDim2.new(1, -15, 1, -30);
				Dropdown["32"]["ClipsDescendants"] = true;
				Dropdown["32"]["Position"] = UDim2.new(0, 5, 0, 30);
				Dropdown["32"]["Name"] = [[OptionHolder]];
				Dropdown["32"]["Visible"] = true;

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Dropdown.OptionHolder.UIListLayout
				Dropdown["33"] = Instance.new("UIListLayout", Dropdown["32"]);
				Dropdown["33"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
				Dropdown["33"]["Padding"] = UDim.new(0, 5);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Dropdown.OptionHolder.UIPadding
				Dropdown["34"] = Instance.new("UIPadding", Dropdown["32"]);
				Dropdown["34"]["PaddingTop"] = UDim.new(0, 4);
				Dropdown["34"]["PaddingRight"] = UDim.new(0, 4);
				Dropdown["34"]["PaddingLeft"] = UDim.new(0, 4);
				
			end
			
			
			--Methods
			function Dropdown:Toggle()
				if Dropdown.Open then
					Library:tween(Dropdown["2b"], {Size = UDim2.new(1,0,0,30)})
				else
					local count = 0
					for i, v in pairs(Dropdown.Items) do
						if v ~= nil then
							count += 1
						end
					end
					Library:tween(Dropdown["2b"], {Size = UDim2.new(1,0,0,30 + (count * 25) - 5)})
				end
				Dropdown.Open = not Dropdown.Open
			end
			
			
			function Dropdown:Add(id, value)
				local Item = {
					Hover = false,
					MouseDown = false,
				}
				
				if Dropdown.Items[id] ~= nil then
					return
				end
				
				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Dropdown.OptionHolder.Option3InActive
				Dropdown.Items[id] = {
					instance = {},
					value = value
				}
				
				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Dropdown.OptionHolder.Option3InActive
				Dropdown.Items[id].instance["39"] = Instance.new("TextLabel", Dropdown["32"]);
				Dropdown.Items[id].instance["39"]["BorderSizePixel"] = 0;
				Dropdown.Items[id].instance["39"]["BackgroundColor3"] = Color3.fromRGB(17, 17, 17);
				Dropdown.Items[id].instance["39"]["TextSize"] = 14;
				Dropdown.Items[id].instance["39"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Dropdown.Items[id].instance["39"]["Size"] = UDim2.new(1, 0, 0, 20);
				Dropdown.Items[id].instance["39"]["Text"] = id;
				Dropdown.Items[id].instance["39"]["Name"] = id;
				Dropdown.Items[id].instance["39"]["Font"] = Enum.Font.SourceSans;
				Dropdown.Items[id].instance["39"]["BackgroundTransparency"] = 0.6000000238418579;
				Dropdown.Items[id].instance["39"]["Position"] = UDim2.new(0, 8, 0, 0);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Dropdown.OptionHolder.Option3InActive.UIStroke
				Dropdown.Items[id].instance["3a"] = Instance.new("UIStroke", Dropdown.Items[id].instance["39"]);


				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Dropdown.OptionHolder.Option3InActive.UICorner
				Dropdown.Items[id].instance["3b"] = Instance.new("UICorner", Dropdown.Items[id].instance["39"]);
				Dropdown.Items[id].instance["3b"]["CornerRadius"] = UDim.new(0, 3);

				-- StarterGui.UIlib(2nd).MainFrame.ContentCointainer.HomeTab.Dropdown.OptionHolder.Option3InActive.UIStroke
				Dropdown.Items[id].instance["3c"] = Instance.new("UIStroke", Dropdown.Items[id].instance["39"]);
				Dropdown.Items[id].instance["3c"]["Color"] = Color3.fromRGB(37, 37, 37);
				Dropdown.Items[id].instance["3c"]["Thickness"] = 1;
				Dropdown.Items[id].instance["3c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
				
				Dropdown.Items[id].instance["39"].MouseEnter:Connect(function()
					Item.Hover = true
					Dropdown.HoveringItem = true
					Library:tween(Dropdown.Items[id].instance["3c"], {Color = Color3.fromRGB(57, 57, 57)})
				end)

				Dropdown.Items[id].instance["39"].MouseLeave:Connect(function()
					Item.Hover = false
					Dropdown.HoveringItem = false
					
					if Dropdown.Items[id].instance["39"]["BackgroundColor3"] == Color3.fromRGB(17, 17, 17) then
						Library:tween(Dropdown.Items[id].instance["3c"], {Color = Color3.fromRGB(37, 37, 37)})
					else
						Library:tween(Dropdown.Items[id].instance["3c"], {Color = Color3.fromRGB(65, 65, 65)})
					end
				end)

				uis.InputBegan:Connect(function(input)
					if Dropdown.Items[id] == nil then return end
					
					if input.UserInputType == Enum.UserInputType.MouseButton1 and Item.Hover then
						Item.MouseDown = true
						Library:tween(Dropdown.Items[id].instance["3c"], {Color = Color3.fromRGB(65, 65, 65)})
						Library:tween(Dropdown.Items[id].instance["39"], {BackgroundColor3 = Color3.fromRGB(25, 25, 25)})
						
					else if input.UserInputType == Enum.UserInputType.MouseButton1 and Dropdown.HoveringItem then
							Library:tween(Dropdown.Items[id].instance["3c"], {Color = Color3.fromRGB(37, 37, 37)})
							Library:tween(Dropdown.Items[id].instance["39"], {BackgroundColor3 = Color3.fromRGB(17, 17, 17)})	
						end
					end	
				end)


				uis.InputEnded:Connect(function(input)
					if Dropdown.Items[id] == nil then return end
					
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Item.MouseDown = false

						if Item.Hover then
							options.callback(id)
							Library:tween(Dropdown.Items[id].instance["3c"], {Color = Color3.fromRGB(65, 65, 65)})
							Library:tween(Dropdown.Items[id].instance["39"], {BackgroundColor3 = Color3.fromRGB(25, 25, 25)})
							Dropdown["2c"]["Text"] = options.name .. " | " .. id 
							wait(0.3)
							Dropdown:Toggle()
							
						else if input.UserInputType == Enum.UserInputType.MouseButton1 and Dropdown.HoveringItem then
								Library:tween(Dropdown.Items[id].instance["3c"], {Color = Color3.fromRGB(37, 37, 37)})
								Library:tween(Dropdown.Items[id].instance["39"], {BackgroundColor3 = Color3.fromRGB(17, 17, 17)})	
							end
						end
						
	
					end			
				end)

				
			end
			
			
			function Dropdown:Remove(id)
				if Dropdown.Items[id] ~= nil then
					if Dropdown.Items[id].instance ~= nil then
						if id ~= nil then
						for i, v in pairs(Dropdown.Items[id].instance)  do
							v:Destroy()
							end
						end
					end
					Dropdown.Items[id] = nil
					local count = 0
					for i, v in pairs(Dropdown.Items) do
						if v ~= nil then
							count += 1
						end
					end
					if Dropdown.Open then
						Library:tween(Dropdown["2b"], {Size = UDim2.new(1,0,0,30 + (count * 25) - 5)})
					end
				end
			end
			
			function Dropdown:Clear(id)
				for i, v in pairs(Dropdown.Items)  do
					Dropdown:Remove(i)
				end
			end
			
			
			--logic
			Dropdown["2b"].MouseEnter:Connect(function()
				Dropdown.Hover = true
				Library:tween(Dropdown["30"], {Color = Color3.fromRGB(70, 70, 78)})
			end)

			Dropdown["2b"].MouseLeave:Connect(function()
				Dropdown.Hover = false
				Library:tween(Dropdown["30"], {Color = Color3.fromRGB(50, 50, 58)})
				Library:tween(Dropdown["2b"], {BackgroundColor3 = Color3.fromRGB(26, 26, 30)})
			end)

		uis.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 and Dropdown.Hover then
				Dropdown.MouseDown = true
				if not Dropdown.HoveringItem then
					Library:tween(Dropdown["30"], {Color = Color3.fromRGB(80, 80, 88)})
					Library:tween(Dropdown["2b"], {BackgroundColor3 = Color3.fromRGB(46, 46, 50)})
				end
			end			
		end)


		uis.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
					Dropdown.MouseDown = false

				if Dropdown.Hover then
					Library:tween(Dropdown["30"], {Color = Color3.fromRGB(70, 70, 78)})
					Library:tween(Dropdown["2b"], {BackgroundColor3 = Color3.fromRGB(26, 26, 30)})
				end

			else
				--reset
				Library:tween(Dropdown["30"], {Color = Color3.fromRGB(50, 50, 58)})
				Library:tween(Dropdown["2b"], {BackgroundColor3 = Color3.fromRGB(26, 26, 30)})
			end			
		end)
			
			uis.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					if (not Dropdown.HoveringItem) and (Dropdown.MouseDown) then
						Dropdown:Toggle()
					end
				end
			end)
			
			


			
			return Dropdown
		end

			
		return Tab
	end
	
	
	return GUI
end



return Library
