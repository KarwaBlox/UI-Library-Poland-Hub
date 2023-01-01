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
		name = "Poland Hub  |  "..DisplayName.."  |  ".. "Version: "  .. Rank .. Versio
	}, options or {})
	
	local GUI = {
		CurrentTab = nil
	}
	
do	--main
	-- StarterGui.ScreenGui
	GUI["1"] = Instance.new("ScreenGui",runService:IsStudio() and players.LocalPlayer:WaitForChild("PlayerGui") or coreGui);


	-- StarterGui.ScreenGui.MainFrame
	GUI["2"] = Instance.new("Frame", GUI["1"]);
	GUI["2"]["BorderSizePixel"] = 0;
	GUI["2"]["BackgroundColor3"] = Color3.fromRGB(60, 64, 69);
	GUI["2"]["AnchorPoint"] = Vector2.new(0, 0);
	GUI["2"]["Size"] = UDim2.new(0, 400, 0, 300);
	GUI["2"]["Position"] = UDim2.fromOffset((viewport.X / 2) - GUI["2"].Size.X.Offset / 2, (viewport.Y / 2) - GUI["2"].Size.Y.Offset / 2 );
	GUI["2"]["Name"] = [[MainFrame]];

	-- StarterGui.ScreenGui.MainFrame.UICorner
	GUI["3"] = Instance.new("UICorner", GUI["2"]);
	GUI["3"]["CornerRadius"] = UDim.new(0, 5);
	
	-- StarterGui.ScreenGui.MainFrame.DropShadowHolder
	GUI["4"] = Instance.new("Frame", GUI["2"]);
	GUI["4"]["ZIndex"] = 0;
	GUI["4"]["BorderSizePixel"] = 0;
	GUI["4"]["BackgroundTransparency"] = 1;
	GUI["4"]["Size"] = UDim2.new(1, 0, 1, 0);
	GUI["4"]["Name"] = [[DropShadowHolder]];

	-- StarterGui.ScreenGui.MainFrame.DropShadowHolder.DropShadow
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
	
	-- StarterGui.ScreenGui.MainFrame.TopInfo
	GUI["6"] = Instance.new("Frame", GUI["2"]);
	GUI["6"]["BorderSizePixel"] = 0;
	GUI["6"]["BackgroundColor3"] = Color3.fromRGB(48, 50, 55);
	GUI["6"]["Size"] = UDim2.new(1, 0, 0, 30);
	GUI["6"]["Name"] = [[TopInfo]];

	-- StarterGui.ScreenGui.MainFrame.TopInfo.UICorner
	GUI["7"] = Instance.new("UICorner", GUI["6"]);
	GUI["7"]["CornerRadius"] = UDim.new(0, 6);

	-- StarterGui.ScreenGui.MainFrame.TopInfo.TopInfoLayer
	GUI["8"] = Instance.new("Frame", GUI["6"]);
	GUI["8"]["BorderSizePixel"] = 0;
	GUI["8"]["BackgroundColor3"] = Color3.fromRGB(48, 50, 55);
	GUI["8"]["Size"] = UDim2.new(1, 0, 0, -15);
	GUI["8"]["Position"] = UDim2.new(0, 0, 1, 0);
	GUI["8"]["Name"] = [[TopInfoLayer]];

	-- StarterGui.ScreenGui.MainFrame.TopInfo.Title
	GUI["9"] = Instance.new("TextLabel", GUI["6"]);
	GUI["9"]["ZIndex"] = 2;
	GUI["9"]["BorderSizePixel"] = 0;
	GUI["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	GUI["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	GUI["9"]["TextSize"] = 16;
	GUI["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	GUI["9"]["Size"] = UDim2.new(1, 0, 0, 30);
	GUI["9"]["Text"] = options["name"]
	GUI["9"]["Name"] = [[Title]];
	GUI["9"]["Font"] = Enum.Font.Nunito;
	GUI["9"]["BackgroundTransparency"] = 1;

	-- StarterGui.ScreenGui.MainFrame.TopInfo.Title.UIPadding
	GUI["a"] = Instance.new("UIPadding", GUI["9"]);
	GUI["a"]["PaddingLeft"] = UDim.new(0, 8);

	-- StarterGui.ScreenGui.MainFrame.TopInfo.Title.UIStroke
	GUI["b"] = Instance.new("UIStroke", GUI["9"]);
	GUI["b"]["Thickness"] = 0.5;
	GUI["b"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

	-- StarterGui.ScreenGui.MainFrame.TopInfo.Close
	GUI["c"] = Instance.new("ImageLabel", GUI["6"]);
	GUI["c"]["ZIndex"] = 2;
	GUI["c"]["BorderSizePixel"] = 0;
	GUI["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	GUI["c"]["ImageColor3"] = Color3.fromRGB(255, 61, 64);
	GUI["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	GUI["c"]["Image"] = [[rbxassetid://11944881026]];
	GUI["c"]["Size"] = UDim2.new(0, 20, 0, 20);
	GUI["c"]["Name"] = [[Close]];
	GUI["c"]["BackgroundTransparency"] = 1;
	GUI["c"]["Position"] = UDim2.new(0.8999999761581421, 22, 0.5, 0);

	-- StarterGui.ScreenGui.MainFrame.TopInfo.Line
	GUI["d"] = Instance.new("Frame", GUI["6"]);
	GUI["d"]["BorderSizePixel"] = 0;
	GUI["d"]["BackgroundColor3"] = Color3.fromRGB(123, 145, 191);
	GUI["d"]["Size"] = UDim2.new(1, 0, 0, 1);
	GUI["d"]["Position"] = UDim2.new(0, 0, 1, 0);
	GUI["d"]["Name"] = [[Line]];
		
		-- StarterGui.ScreenGui.MainFrame.ContentCointainer
		GUI["1e"] = Instance.new("Frame", GUI["2"]);
		GUI["1e"]["BorderSizePixel"] = 0;
		GUI["1e"]["BackgroundColor3"] = Color3.fromRGB(60, 64, 69);
		GUI["1e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["1e"]["Size"] = UDim2.new(1, -120, 1, -60);
		GUI["1e"]["Position"] = UDim2.new(1, -154, 0, 165);
		GUI["1e"]["Name"] = [[ContentCointainer]];		
end
	
do  --Navigation
		-- StarterGui.ScreenGui.MainFrame.Navigation
		GUI["e"] = Instance.new("Frame", GUI["2"]);
		GUI["e"]["BorderSizePixel"] = 0;
		GUI["e"]["BackgroundColor3"] = Color3.fromRGB(80, 85, 92);
		GUI["e"]["Size"] = UDim2.new(0, 90, 1, -31);
		GUI["e"]["Position"] = UDim2.new(0, 0, 0, 31);
		GUI["e"]["Name"] = [[Navigation]];

		-- StarterGui.ScreenGui.MainFrame.Navigation.UICorner
		GUI["f"] = Instance.new("UICorner", GUI["e"]);
		GUI["f"]["CornerRadius"] = UDim.new(0, 5);

		-- StarterGui.ScreenGui.MainFrame.Navigation.ScrollingFrame
		GUI["10"] = Instance.new("ScrollingFrame", GUI["e"]);
		GUI["10"]["Active"] = true;
		GUI["10"]["BorderSizePixel"] = 0;
		GUI["10"]["BackgroundColor3"] = Color3.fromRGB(80, 85, 92);
		GUI["10"]["Size"] = UDim2.new(1, 0, 1, 0);
		GUI["10"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["10"]["ScrollBarThickness"] = 0;


		-- StarterGui.ScreenGui.MainFrame.Navigation.ScrollingFrame.UIListLayout
		GUI["15"] = Instance.new("UIListLayout", GUI["10"]);
		GUI["15"]["Padding"] = UDim.new(0, 2);
		GUI["15"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

		-- StarterGui.ScreenGui.MainFrame.Navigation.ScrollingFrame.UIPadding
		GUI["1a"] = Instance.new("UIPadding", GUI["10"]);
		GUI["1a"]["PaddingTop"] = UDim.new(0, 2);

		-- StarterGui.ScreenGui.MainFrame.Navigation.Line
		GUI["1b"] = Instance.new("Frame", GUI["e"]);
		GUI["1b"]["BorderSizePixel"] = 0;
		GUI["1b"]["BackgroundColor3"] = Color3.fromRGB(123, 145, 191);
		GUI["1b"]["Size"] = UDim2.new(0, 1, 1, 0);
		GUI["1b"]["Position"] = UDim2.new(1, 0, 0, 0);
		GUI["1b"]["Name"] = [[Line]];

		-- StarterGui.ScreenGui.MainFrame.Navigation.Cover
		GUI["1c"] = Instance.new("Frame", GUI["e"]);
		GUI["1c"]["BorderSizePixel"] = 0;
		GUI["1c"]["BackgroundColor3"] = Color3.fromRGB(80, 85, 92);
		GUI["1c"]["Size"] = UDim2.new(0, 90, 0, 10);
		GUI["1c"]["Name"] = [[Cover]];
		GUI["1c"]["ZIndex"] = 0;
		

		-- StarterGui.ScreenGui.MainFrame.Navigation.Cover2
		GUI["1d"] = Instance.new("Frame", GUI["e"]);
		GUI["1d"]["BorderSizePixel"] = 0;
		GUI["1d"]["BackgroundColor3"] = Color3.fromRGB(80, 85, 92);
		GUI["1d"]["Size"] = UDim2.new(0, -45, 0, 10);
		GUI["1d"]["Position"] = UDim2.new(1, 0, 1, -10);
		GUI["1d"]["Name"] = [[Cover2]];	
		GUI["1d"]["ZIndex"] = 0;
		
		-- StarterGui.ScreenGui.MainFrame.ContentCointainer
		GUI["1e"] = Instance.new("Frame", GUI["2"]);
		GUI["1e"]["BorderSizePixel"] = 0;
		GUI["1e"]["BackgroundColor3"] = Color3.fromRGB(60, 64, 69);
		GUI["1e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		GUI["1e"]["Size"] = UDim2.new(1, -120, 1, -60);
		GUI["1e"]["Position"] = UDim2.new(1, -154, 0, 165);
		GUI["1e"]["Name"] = [[ContentCointainer]];

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
			
			-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab
			Tab["1f"] = Instance.new("ScrollingFrame", GUI["1e"]);
			Tab["1f"]["Active"] = true;
			Tab["1f"]["BorderSizePixel"] = 0;
			Tab["1f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
			Tab["1f"]["BackgroundTransparency"] = 0.800000011920929;
			Tab["1f"]["Size"] = UDim2.new(1, 0, 1, 0);
			Tab["1f"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
			Tab["1f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
			Tab["1f"]["ScrollBarThickness"] = 0;
			Tab["1f"]["Name"] = options.name;
			Tab["1f"]["Visible"] = false

			-- StarterTab.ScreenTab.MainFrame.ContentCointainer.HomeTab.UIStroke
			Tab["20"] = Instance.new("UIStroke", Tab["1f"]);
			Tab["20"]["Thickness"] = 2.700000047683716;
			Tab["20"]["Transparency"] = 0.800000011920929;
			Tab["20"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
			
			-- StarterTab.ScreenTab.MainFrame.ContentCointainer.HomeTab.UIListLayout
			Tab["28"] = Instance.new("UIListLayout", Tab["1f"]);
			Tab["28"]["Padding"] = UDim.new(0, 8);
			Tab["28"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

			-- StarterTab.ScreenTab.MainFrame.ContentCointainer.HomeTab.UIPadding
			Tab["29"] = Instance.new("UIPadding", Tab["1f"]);
			Tab["29"]["PaddingTop"] = UDim.new(0, 8);
			Tab["29"]["PaddingRight"] = UDim.new(0, 8);
			Tab["29"]["PaddingLeft"] = UDim.new(0, 8);
			
		-- StarterTab.ScreenGui.MainFrame.Navigation.ScrollingFrame.HomeInActive
		Tab["16"] = Instance.new("TextLabel", GUI["10"]);
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
				Tab["1f"]["Visible"] = true
			end
		end
		
		function Tab:Deactivate()
			if Tab.Active then
				Tab.Active = false 
				Tab.Hover = false
				Library:tween(Tab["16"], {TextColor3 = Color3.fromRGB(217,217,217)})
				Library:tween(Tab["19"], {ImageColor3 = Color3.fromRGB(217,217,217)})
				Library:tween(Tab["16"], {BackgroundTransparency = 1})
				Tab["1f"]["Visible"] = false
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
				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Button
				Button["21"] = Instance.new("Frame", Tab["1f"]);
				Button["21"]["BackgroundColor3"] = Color3.fromRGB(33, 41, 44);
				Button["21"]["Size"] = UDim2.new(1, 0, 0, 30);
				Button["21"]["Name"] = [[Button]];

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Button.Title
				Button["22"] = Instance.new("TextLabel", Button["21"]);
				Button["22"]["BorderSizePixel"] = 0;
				Button["22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Button["22"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
				Button["22"]["TextSize"] = 16;
				Button["22"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Button["22"]["Size"] = UDim2.new(1, 0, 1, 0);
				Button["22"]["Text"] = options.name;
				Button["22"]["Name"] = options.name;
				Button["22"]["Font"] = Enum.Font.Nunito;
				Button["22"]["BackgroundTransparency"] = 1;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Button.Title.UIStroke
				Button["23"] = Instance.new("UIStroke", Button["22"]);
				Button["23"]["Thickness"] = 0.699999988079071;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Button.UIPadding
				Button["24"] = Instance.new("UIPadding", Button["21"]);
				Button["24"]["PaddingLeft"] = UDim.new(0, 8);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Button.UICorner
				Button["25"] = Instance.new("UICorner", Button["21"]);
				Button["25"]["CornerRadius"] = UDim.new(0, 5);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Button.UIStroke
				Button["26"] = Instance.new("UIStroke", Button["21"]);
				Button["26"]["Color"] = Color3.fromRGB(123, 145, 191);
				Button["26"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
				Button["26"]["Thickness"] = 0.7;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Button.Click
				Button["27"] = Instance.new("ImageLabel", Button["21"]);
				Button["27"]["BorderSizePixel"] = 0;
				Button["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Button["27"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Button["27"]["Image"] = [[rbxassetid://11945663771]];
				Button["27"]["Size"] = UDim2.new(0, 16, 0, 16);
				Button["27"]["Name"] = [[Click]];
				Button["27"]["BackgroundTransparency"] = 1;
				Button["27"]["Position"] = UDim2.new(1, -15, 1, -15);
			end
			
			--Methods
			do
				function Button:SetText(text)
					Button["22"].Text = text
				end
				
				function Button:SetCallback(fn)
					options.callback = fn
				end
				
			end
			
			--logic
			do
				Button["21"].MouseEnter:Connect(function()
					Button.Hover = true
					Library:tween(Button["26"], {Color = Color3.fromRGB(153, 175, 221)})
				end)

				Button["21"].MouseLeave:Connect(function()
					Button.Hover = false
						Library:tween(Button["26"], {Color = Color3.fromRGB(123, 145, 191)})
						Library:tween(Button["21"], {BackgroundColor3 = Color3.fromRGB(33, 41, 44)})

				end)
			end
			
			uis.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and Button.Hover then
					Button.MouseDown = true
					Library:tween(Button["26"], {Color = Color3.fromRGB(183, 205, 251)})
					Library:tween(Button["21"], {BackgroundColor3 = Color3.fromRGB(43, 51, 54)})
					options.callback()
				end			
			end)
			
			
			uis.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1  then
					Button.MouseDown = false
					
					if Button.Hover then
						Library:tween(Button["26"], {Color = Color3.fromRGB(153, 175, 221)})
						Library:tween(Button["21"], {BackgroundColor3 = Color3.fromRGB(33, 41, 44)})
					end
					
					else
					--reset
					Library:tween(Button["26"], {Color = Color3.fromRGB(123, 145, 191)})
					Library:tween(Button["21"], {BackgroundColor3 = Color3.fromRGB(33, 41, 44)})
					Library:tween(Button["26"], {Thickness = 0.7})
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
				Label["3a"] = Instance.new("Frame", Tab["1f"]);
				Label["3a"]["BackgroundColor3"] = Color3.fromRGB(157, 157, 157);
				Label["3a"]["BackgroundTransparency"] = 0.699999988079071;
				Label["3a"]["Size"] = UDim2.new(1, 0, 0, 25);
				Label["3a"]["Name"] = [[Label]];

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Label.Title
				Label["3b"] = Instance.new("TextLabel", Label["3a"]);
				Label["3b"]["BorderSizePixel"] = 0;
				Label["3b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Label["3b"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
				Label["3b"]["Text"] = options.name;
				Label["3b"]["TextSize"] = 16;
				Label["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Label["3b"]["Size"] = UDim2.new(1, 0, 1, 0);
				Label["3b"]["Name"] = options.name;
				Label["3b"]["Font"] = Enum.Font.Nunito;
				Label["3b"]["BackgroundTransparency"] = 1;
				Label["3b"]["TextWrapped"] = true;
				Label["3b"]["TextYAlignment"] = Enum.TextYAlignment.Top;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Label.Title.UIStroke
				Label["3c"] = Instance.new("UIStroke", Label["3b"]);
				Label["3c"]["Thickness"] = 0.5;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Label.Title.UIPadding
				Label["3d"] = Instance.new("UIPadding", Label["3b"]);
				Label["3d"]["PaddingLeft"] = UDim.new(0, 29);
				Label["3d"]["PaddingTop"] = UDim.new(0, 5);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Label.UIPadding
				Label["3e"] = Instance.new("UIPadding", Label["3a"]);
				Label["3e"]["PaddingRight"] = UDim.new(0, 8);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Label.UICorner
				Label["3f"] = Instance.new("UICorner", Label["3a"]);
				Label["3f"]["CornerRadius"] = UDim.new(0, 5);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Label.UIStroke
				Label["40"] = Instance.new("UIStroke", Label["3a"]);
				Label["40"]["Color"] = Color3.fromRGB(171, 177, 182);
				Label["40"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Label.Label
				Label["41"] = Instance.new("ImageLabel", Label["3a"]);
				Label["41"]["BorderSizePixel"] = 0;
				Label["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Label["41"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Label["41"]["Image"] = [[rbxassetid://11954508977]];
				Label["41"]["Size"] = UDim2.new(0, 16, 0, 16);
				Label["41"]["Name"] = [[Label]];
				Label["41"]["BackgroundTransparency"] = 1;
				Label["41"]["Position"] = UDim2.new(0, 15, 0, 14);
			end
			
			--Methods
			function Label:SetText(text)
				options.message = text
				Label:_update()
			end
			
			function Label:_update()
				Label["3b"].Text = options.name
				Label["3a"].Size = UDim2.new(1, 0, Label["3b"].TextBounds.Y - 15)
				Label["3a"].Size = UDim2.new(Label["3a"].Size.Y.Scale, Label["3a"].Size.Y.Offset, 0, Label["3b"].TextBounds.Y + 10)
			end
			
			Label:_update()
			
			return Label
		end
		
		function Tab:Warning(options)
			options = Library:Validate({
				name = "Warning",
			}, options or {})


			local Warning = {}	

			--Render
			do 
				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Warning
				Warning["2a"] = Instance.new("Frame", Tab["1f"]);
				Warning["2a"]["BackgroundColor3"] = Color3.fromRGB(86, 55, 55);
				Warning["2a"]["BackgroundTransparency"] = 0.25;
				Warning["2a"]["Size"] = UDim2.new(1, 0, 0, 25);
				Warning["2a"]["Name"] = [[Warning]];

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Warning.Title
				Warning["2b"] = Instance.new("TextLabel", Warning["2a"]);
				Warning["2b"]["BorderSizePixel"] = 0;
				Warning["2b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Warning["2b"]["BackgroundColor3"] = Color3.fromRGB(49, 49, 49);
				Warning["2b"]["TextSize"] = 16;
				Warning["2b"]["TextColor3"] = Color3.fromRGB(255, 153, 128);
				Warning["2b"]["Size"] = UDim2.new(1, 0, 1, 0);
				Warning["2b"]["Text"] = options.name;
				Warning["2b"]["Name"] = options.name;
				Warning["2b"]["Font"] = Enum.Font.Nunito;
				Warning["2b"]["BackgroundTransparency"] = 1;
				Warning["2b"]["TextWrapped"] = true;
				Warning["2b"]["TextYAlignment"] = Enum.TextYAlignment.Top;


				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Warning.Title.UIStroke
				Warning["2c"] = Instance.new("UIStroke", Warning["2b"]);
				Warning["2c"]["Thickness"] = 0.5;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Warning.Title.UIPadding
				Warning["2d"] = Instance.new("UIPadding", Warning["2b"]);
				Warning["2d"]["PaddingLeft"] = UDim.new(0, 29);
				Warning["2d"]["PaddingRight"] = UDim.new(0, 0);
				Warning["2d"]["PaddingTop"] = UDim.new(0, 5);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Warning.UIPadding
				Warning["2e"] = Instance.new("UIPadding", Warning["2a"]);
				Warning["2e"]["PaddingRight"] = UDim.new(0, 8);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Warning.UICorner
				Warning["2f"] = Instance.new("UICorner", Warning["2a"]);
				Warning["2f"]["CornerRadius"] = UDim.new(0, 5);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Warning.UIStroke
				Warning["30"] = Instance.new("UIStroke", Warning["2a"]);
				Warning["30"]["Color"] = Color3.fromRGB(181, 54, 54);
				Warning["30"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Warning.Warning
				Warning["31"] = Instance.new("ImageLabel", Warning["2a"]);
				Warning["31"]["BorderSizePixel"] = 0;
				Warning["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Warning["31"]["ImageColor3"] = Color3.fromRGB(255, 124, 84);
				Warning["31"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Warning["31"]["Image"] = [[rbxassetid://11950391904]];
				Warning["31"]["Size"] = UDim2.new(0, 16, 0, 16);
				Warning["31"]["Name"] = [[Warning]];
				Warning["31"]["BackgroundTransparency"] = 1;
				Warning["31"]["Position"] = UDim2.new(0, 15, 0, 14);
			end
			
			--Methods
			function Warning:SetText(text)
				options.message = text
				Warning:_update()
			end

			function Warning:_update()
				Warning["2b"].Text = options.name
				Warning["2a"].Size = UDim2.new(1, 0, Warning["2b"].TextBounds.Y - 15)
				Warning["2a"].Size = UDim2.new(Warning["2a"].Size.Y.Scale, Warning["2a"].Size.Y.Offset, 0, Warning["2b"].TextBounds.Y + 10)
			end

			Warning:_update()

			return Warning
		end
		
		function Tab:Info(options)
			options = Library:Validate({
				name = "Info",
			}, options or {})


			local Info = {}	

			--Render
			do 
				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Info
				Info["32"] = Instance.new("Frame", Tab["1f"]);
				Info["32"]["BackgroundColor3"] = Color3.fromRGB(87, 103, 135);
				Info["32"]["BackgroundTransparency"] = 0.699999988079071;
				Info["32"]["Size"] = UDim2.new(1, 0, 0, 25);
				Info["32"]["Name"] = [[Info]];

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Info.Title
				Info["33"] = Instance.new("TextLabel", Info["32"]);
				Info["33"]["BorderSizePixel"] = 0;
				Info["33"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Info["33"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
				Info["33"]["TextSize"] = 16;
				Info["33"]["TextColor3"] = Color3.fromRGB(165, 195, 255);
				Info["33"]["Size"] = UDim2.new(1, 0, 1, 0);
				Info["33"]["Text"] = options.name;
				Info["33"]["Name"] = options.name;
				Info["33"]["Font"] = Enum.Font.Nunito;
				Info["33"]["BackgroundTransparency"] = 1;
				Info["33"]["TextWrapped"] = true;
				Info["33"]["TextYAlignment"] = Enum.TextYAlignment.Top;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Info.Title.UIStroke
				Info["34"] = Instance.new("UIStroke", Info["33"]);
				Info["34"]["Thickness"] = 0.5;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Info.Title.UIPadding
				Info["35"] = Instance.new("UIPadding", Info["33"]);
				Info["35"]["PaddingLeft"] = UDim.new(0, 29);
				Info["35"]["PaddingTop"] = UDim.new(0, 5);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Info.UIPadding
				Info["36"] = Instance.new("UIPadding", Info["32"]);
				Info["36"]["PaddingRight"] = UDim.new(0, 8);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Info.UICorner
				Info["37"] = Instance.new("UICorner", Info["32"]);
				Info["37"]["CornerRadius"] = UDim.new(0, 5);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Info.UIStroke
				Info["38"] = Instance.new("UIStroke", Info["32"]);
				Info["38"]["Color"] = Color3.fromRGB(123, 145, 191);
				Info["38"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Info.Info
				Info["39"] = Instance.new("ImageLabel", Info["32"]);
				Info["39"]["BorderSizePixel"] = 0;
				Info["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Info["39"]["ImageColor3"] = Color3.fromRGB(123, 145, 191);
				Info["39"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Info["39"]["Image"] = [[rbxassetid://11954471446]];
				Info["39"]["Size"] = UDim2.new(0, 16, 0, 16);
				Info["39"]["Name"] = [[Info]];
				Info["39"]["BackgroundTransparency"] = 1;
				Info["39"]["Position"] = UDim2.new(0, 15, 0, 14);
			end

			--Methods
			function Info:SetText(text)
				options.message = text
				Info:_update()
			end

			function Info:_update()
				Info["33"].Text = options.name
				Info["32"].Size = UDim2.new(1, 0, Info["33"].TextBounds.Y - 15)
				Info["32"].Size = UDim2.new(Info["32"].Size.Y.Scale, Info["32"].Size.Y.Offset, 0, Info["33"].TextBounds.Y + 10)
			end

			Info:_update()
			
			
			return Info
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
				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Slider
				Slider["42"] = Instance.new("Frame", Tab["1f"]);
				Slider["42"]["BackgroundColor3"] = Color3.fromRGB(87, 84, 98);
				Slider["42"]["BackgroundTransparency"] = 0.5;
				Slider["42"]["Size"] = UDim2.new(1, 0, 0, 40);
				Slider["42"]["Name"] = [[Slider]];

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Slider.Title
				Slider["43"] = Instance.new("TextLabel", Slider["42"]);
				Slider["43"]["BorderSizePixel"] = 0;
				Slider["43"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Slider["43"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
				Slider["43"]["TextSize"] = 16;
				Slider["43"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["43"]["Size"] = UDim2.new(1, 0, 0, 20);
				Slider["43"]["Text"] = options.name;
				Slider["43"]["Name"] = options.name;
				Slider["43"]["Font"] = Enum.Font.Nunito;
				Slider["43"]["BackgroundTransparency"] = 1;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Slider.Title.UIStroke
				Slider["44"] = Instance.new("UIStroke", Slider["43"]);
				Slider["44"]["Thickness"] = 0.699999988079071;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Slider.UIPadding
				Slider["45"] = Instance.new("UIPadding", Slider["42"]);
				Slider["45"]["PaddingLeft"] = UDim.new(0, 8);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Slider.UICorner
				Slider["46"] = Instance.new("UICorner", Slider["42"]);
				Slider["46"]["CornerRadius"] = UDim.new(0, 5);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Slider.UIStroke
				Slider["47"] = Instance.new("UIStroke", Slider["42"]);
				Slider["47"]["Color"] = Color3.fromRGB(92, 106, 122);
				Slider["47"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Slider.Value
				Slider["48"] = Instance.new("TextLabel", Slider["42"]);
				Slider["48"]["BorderSizePixel"] = 0;
				Slider["48"]["TextXAlignment"] = Enum.TextXAlignment.Right;
				Slider["48"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
				Slider["48"]["TextSize"] = 16;
				Slider["48"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["48"]["Size"] = UDim2.new(0, 25, 0, 20);
				Slider["48"]["Text"] = tostring(options.deafult);
				Slider["48"]["Name"] = [[Value]];
				Slider["48"]["Font"] = Enum.Font.Nunito;
				Slider["48"]["BackgroundTransparency"] = 1;
				Slider["48"]["Position"] = UDim2.new(1, -25, 0, 0);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Slider.Value.UIStroke
				Slider["49"] = Instance.new("UIStroke", Slider["48"]);
				Slider["49"]["Thickness"] = 0.699999988079071;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Slider.Value.UIPadding
				Slider["4a"] = Instance.new("UIPadding", Slider["48"]);
				Slider["4a"]["PaddingRight"] = UDim.new(0, 6);
				Slider["4a"]["PaddingLeft"] = UDim.new(0, 8);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Slider.SliderBack
				Slider["4b"] = Instance.new("Frame", Slider["42"]);
				Slider["4b"]["BorderSizePixel"] = 0;
				Slider["4b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["4b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Slider["4b"]["BackgroundTransparency"] = 0.5;
				Slider["4b"]["Size"] = UDim2.new(0, 250, 0, 5);
				Slider["4b"]["Position"] = UDim2.new(0, 125, 1, -15);
				Slider["4b"]["Name"] = [[SliderBack]];

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Slider.SliderBack.UICorner
				Slider["4c"] = Instance.new("UICorner", Slider["4b"]);
				Slider["4c"]["CornerRadius"] = UDim.new(0, 5);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Slider.SliderBack.UIStroke
				Slider["4d"] = Instance.new("UIStroke", Slider["4b"]);
				Slider["4d"]["Color"] = Color3.fromRGB(87, 87, 87);
				Slider["4d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.Slider.SliderBack.Draggable
				Slider["4e"] = Instance.new("Frame", Slider["4b"]);
				Slider["4e"]["BorderSizePixel"] = 0;
				Slider["4e"]["BackgroundColor3"] = Color3.fromRGB(125, 121, 141);
				Slider["4e"]["Size"] = UDim2.new(0, 125, 0, 5);
				Slider["4e"]["Name"] = [[Draggable]];
			end
			
			--methods
			function Slider:SetValue(v)
				if v == nil then
					local percentage = math.clamp((Mouse.X - Slider["4b"].AbsolutePosition.X) / (Slider["4b"].AbsoluteSize.X), 0, 1)
					local value = math.floor(((options.max - options.min) * percentage) + options.min)
					Slider["48"].Text = tostring(value)
				
					Slider["4e"].Size = UDim2.fromScale(percentage, 1)
				else
					Slider["48"].Text = tostring(v)
					Slider["4e"].Size = UDim2.fromScale(((v - options.min) / (options.max - options.min)), 1)
					
				end
				options.callback(Slider:GetValue())
			end
			
			function Slider:GetValue(v)
				return tonumber(Slider["48"].Text)
			end
			
			-- logic
			do
				Slider["42"].MouseEnter:Connect(function()
					Slider.Hover = true
					Library:tween(Slider["4d"], {Color = Color3.fromRGB(107, 107, 107)})
					Library:tween(Slider["4e"], {BackgroundColor3 = Color3.fromRGB(125, 121, 141)})
				end)


			uis.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and Slider.Hover  then
					Slider.MouseDown = true
					Library:tween(Slider["4d"], {Color = Color3.fromRGB(137, 137, 137)})
					Library:tween(Slider["4e"], {BackgroundColor3 = Color3.fromRGB(155, 151, 171)})
					
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

					if Slider.Hover then
						Library:tween(Slider["4d"], {Color = Color3.fromRGB(107, 107, 107)})
						Library:tween(Slider["4e"], {BackgroundColor3 = Color3.fromRGB(125, 121, 141)})
					end

				else 
					--reset
					Library:tween(Slider["4d"], {Color = Color3.fromRGB(87, 87, 87)})
					Library:tween(Slider["4e"], {BackgroundColor3 = Color3.fromRGB(125, 121, 141)})
				end
				

			end)
			
			Slider["42"].MouseLeave:Connect(function()
				Slider.Hover = false
					Library:tween(Slider["4d"], {Color = Color3.fromRGB(87, 87, 87)})
					Library:tween(Slider["4e"], {BackgroundColor3 = Color3.fromRGB(125, 121, 141)})
					
					if Slider.Connection then Slider.Connection:Disconnect()
						Slider.Connection = nil

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
				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.ToggleInActive
				Toggle["6d"] = Instance.new("Frame", Tab["1f"]);
				Toggle["6d"]["BackgroundColor3"] = Color3.fromRGB(33, 41, 44);
				Toggle["6d"]["Size"] = UDim2.new(1, 0, 0, 30);
				Toggle["6d"]["Name"] = [[ToggleInActive]];

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.ToggleInActive.Title
				Toggle["6e"] = Instance.new("TextLabel", Toggle["6d"]);
				Toggle["6e"]["BorderSizePixel"] = 0;
				Toggle["6e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Toggle["6e"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
				Toggle["6e"]["TextSize"] = 16;
				Toggle["6e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["6e"]["Size"] = UDim2.new(1, 0, 1, 0);
				Toggle["6e"]["Text"] = options.name;
				Toggle["6e"]["Name"] = options.name;
				Toggle["6e"]["Font"] = Enum.Font.Nunito;
				Toggle["6e"]["BackgroundTransparency"] = 1;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.ToggleInActive.Title.UIStroke
				Toggle["6f"] = Instance.new("UIStroke", Toggle["6e"]);
				Toggle["6f"]["Thickness"] = 0.699999988079071;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.ToggleInActive.UIPadding
				Toggle["70"] = Instance.new("UIPadding", Toggle["6d"]);
				Toggle["70"]["PaddingLeft"] = UDim.new(0, 8);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.ToggleInActive.UICorner
				Toggle["71"] = Instance.new("UICorner", Toggle["6d"]);
				Toggle["71"]["CornerRadius"] = UDim.new(0, 5);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.ToggleInActive.UIStroke
				Toggle["72"] = Instance.new("UIStroke", Toggle["6d"]);
				Toggle["72"]["Color"] = Color3.fromRGB(123, 145, 191);
				Toggle["72"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.ToggleInActive.Checkmark Container
				Toggle["73"] = Instance.new("Frame", Toggle["6d"]);
				Toggle["73"]["BorderSizePixel"] = 0;
				Toggle["73"]["BackgroundColor3"] = Color3.fromRGB(73, 73, 73);
				Toggle["73"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Toggle["73"]["Size"] = UDim2.new(0, 16, 0, 16);
				Toggle["73"]["Position"] = UDim2.new(1, -15, 0.5, 0);
				Toggle["73"]["Name"] = [[Checkmark Container]];

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.ToggleInActive.Checkmark Container.Checkmark
				Toggle["74"] = Instance.new("ImageLabel", Toggle["73"]);
				Toggle["74"]["BorderSizePixel"] = 0;
				Toggle["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["74"]["Visible"] = false;
				Toggle["74"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Toggle["74"]["Image"] = [[rbxassetid://11956641232]];
				Toggle["74"]["Size"] = UDim2.new(0, 14, 0, 14);
				Toggle["74"]["Name"] = [[Checkmark]];
				Toggle["74"]["BackgroundTransparency"] = 1;
				Toggle["74"]["Position"] = UDim2.new(1, -8, 0, 8);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.ToggleInActive.Checkmark Container.UICorner
				Toggle["75"] = Instance.new("UICorner", Toggle["73"]);
				Toggle["75"]["CornerRadius"] = UDim.new(0, 3);

				-- StarterGui.ScreenGui.MainFrame.ContentCointainer.HomeTab.ToggleInActive.Checkmark Container.UIStroke
				Toggle["76"] = Instance.new("UIStroke", Toggle["73"]);
				Toggle["76"]["Color"] = Color3.fromRGB(108, 109, 110);
				Toggle["76"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
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
					Library:tween(Toggle["73"], {BackgroundColor3 = Color3.fromRGB(72, 79, 98)})
					Library:tween(Toggle["74"], {Visible = true})
					else
					Library:tween(Toggle["73"], {BackgroundColor3 = Color3.fromRGB(72, 72, 72)})
					Library:tween(Toggle["74"], {Visible = false})	
					end
					options.callback(Toggle.State)
				end
			end
			
			--logic
			do
				Toggle["6d"].MouseEnter:Connect(function()
					Toggle.Hover = true
					Library:tween(Toggle["76"], {Color = Color3.fromRGB(128, 129, 130)})
					Library:tween(Toggle["72"], {Color = Color3.fromRGB(153, 175, 221)})	
				end)

				Toggle["6d"].MouseLeave:Connect(function()
					Toggle.Hover = false
					Library:tween(Toggle["76"], {Color = Color3.fromRGB(108, 109, 110)})
					Library:tween(Toggle["72"], {Color = Color3.fromRGB(123, 145, 191)})

				end)

			uis.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and Toggle.Hover then
					Toggle.MouseDown = true
					Library:tween(Toggle["76"], {Color = Color3.fromRGB(128, 129, 130)})
					Library:tween(Toggle["72"], {Color = Color3.fromRGB(153, 175, 221)})
						
					Toggle:Toggle()	
				end			
			end)


			uis.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1  then
					Toggle.MouseDown = false

					if Toggle.Hover then
						Library:tween(Toggle["76"], {Color = Color3.fromRGB(128, 129, 130)})
						Library:tween(Toggle["72"], {Color = Color3.fromRGB(123, 145, 191)})
					end

				else
					--reset
					Library:tween(Toggle["76"], {Color = Color3.fromRGB(108, 109, 110)})
					Library:tween(Toggle["72"], {Color = Color3.fromRGB(123, 145, 191)})
				end			
			end)
			end
			
			
			return Toggle	
		end


			
		return Tab
	end
	
	
	return GUI
end
