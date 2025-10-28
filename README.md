```lua
[[ Plugin Documentation ]]
[[ This will be used to create your custom plugins, otherwise no buttons will show up. Examples of each functions will be provided below the function arguments. ]]

[[ FORMAT ]]
-- function_name(arguments)
-- Example

[[ NOTE: locals are optional, you do not need to declare every use as a local it is used in the documentation to demonstrate how the other functions will work as locals are needed for functions such as :UpdateText() to work. ]]

[[ Documentation ]]

-- Section Documentation

CreateSection(nil)
local Section = _G[Plugin Name]:CreateSection()
--[[ Therefore if your plugin file name is 'Documentation.lua' or 'Documentation.txt' you will use _G["Documentation"] ]]--

-- Label Documentation

CreateLabel(Text : string)
local RevynLabel = Section:CreateLabel("Revyn")

Label:UpdateText(Text : string)
RevynLabel:UpdateText("I love Revyn")

-- Button Documentation

CreateButton(Text : string, Function : function)
local PrintButton = Section:CreateButton("Print 'Hello World!'", function()
    print("Hello World!")
end)

Button:UpdateText(Text : String)
PrintButton:UpdateText("Print 'Hello World!'")

-- Toggle Documentation

CreateToggle(Text : string, DefaultState : boolean, Function : function)
local SpeedToggle = Section:CreateToggle("Speed Walk", false, function(State)
    if State then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)

Toggle:UpdateText(Text : string)
SpeedToggle:UpdateText("Walkspeed")

Toggle:UpdateState(State : boolean)
SpeedToggle:UpdateState(false)

-- Input Documentation

CreateInput(Text : string, PlaceholderText : string, Function : function)
local SpeedInput = Section:CreateInput("Set Speed", "16", function(Input)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(Input)
end)

Input:UpdateText(Text : string)
SpeedInput:UpdateText("Choose Speed")

-- Dropdown Documentation

CreateDropdown(Text : string, Options : table, Function : function)
local PlayerList = Section:CreateDropdown("Current Players", game:GetService("Players"):GetPlayers(), function(choice)
    print("Chosen Player: "..choice)
end)

Dropdown:UpdateText(Text : string)
PlayerList:UpdateText("Print Player Name")

Dropdown:UpdateOptions(Options : table)
Dropdown:UpdateOptions({"Roblox", "John Doe", "Jane Doe"})

-- Keybind Documentation

CreateKeybind(Text : string, DefaultKeybind : Enum.KeyCode, Function : function)
local ChooseKeybind = Section:CreateKeybind("Change Keybind", Enum.KeyCode, function(NewKeybind)
    OpenMenuKeybind = NewKeybind
end)

Keybind:UpdateText(Text : string)
ChooseKeybind:UpdateText("Toggle Menu Keybind")

Keybind:UpdateKeybind(Keybind : Enum.KeyCode)
ChooseKeybind:UpdateKeybind(Enum.KeyCode.F)

```
