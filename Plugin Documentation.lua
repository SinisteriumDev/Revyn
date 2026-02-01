--[[
📘 rEnv Documentation [ Revyn Environment ]
This document outlines all supported rEnv functions, their parameters, behavior, and return values.
This environment doesn't override or hook your executors environment. Your base executor functions will remain functional.

Each function includes a usage example for reference.
]]--

--------------------------------------------------
-- Base Functions
--------------------------------------------------

getexecutorname()
-- Information: Returns the name of the current executor as a string

identifyexecutor()
-- Information: Returns the name of the current executor and version as a string

findfunction(Name, ReturnFirst)
-- Usage Example:
local FirstChatFunction = findfunction("Chat", true)
local AllChatFunctions = findfunction("Chat", false)
-- Information: Returns the first match if ReturnFirst is true, otherwise all matches

getinstancepath(Instance)
-- Usage Example:
local NewInstance = Instance.new("Part", workspace)
print(getinstancepath(NewInstance))
-- Information: Returns the full path of the Instance

genrichtext(Text, RGB, Size, Bold)
-- Usage Example:
local RichText = genrichtext("Revyn Documentation", Color3.fromRGB(175, 175, 175), 14, true)
-- Information: Returns a string in rich text format

--------------------------------------------------
-- Plugin Library
--------------------------------------------------

plugins.createtab(Tab_Name)
-- Usage Example:
local ExampleTab = plugins.createtab("Example")
-- Information: Creates a new tab with the name set by the argument Tab_Name and returns the created tab instance
-- Alias: createtab


plugins.createsection(Tab, Text)
-- Usage Example:
local ExampleSection = plugins.createsection(ExampleTab, "Example Section")
-- Information: Creates a new section with the text set by the argument Text located in the tab set by the argument Tab and returns the created section instance
-- Alias: createsection


plugins.createlabel(Tab, Text)
-- Usage Example:
local ExampleLabel = plugins.createlabel(ExampleTab, "Example Label")
-- Information: Creates a new label with the text set by the argument Text located in the tab set by the argument Tab and returns the created label instance
-- Alias: createlabel


plugins.createbutton(Tab, Text, Func)
-- Usage Example:
local ExampleButton = plugins.createbutton(ExampleTab, "Example Button", function()
    print("Button Pressed!")
end)
-- Information: Creates a new button with the text set by the argument Text located in the tab set by the argument Tab, executes the function set by the argument Func when pressed, and returns the created button instance
-- Alias: createbutton


plugins.createtoggle(Tab, Text, State, Func)
-- Usage Example:
local ExampleToggle = plugins.createtoggle(ExampleTab, "Example Toggle", false, function(state)
    print("The current toggle state is "..tostring(state).."!")
end)
-- Information: Creates a new toggle with the text set by the argument Text located in the tab set by the argument Tab, sets the default state using the argument State, executes the function set by the argument Func when the state changes, and returns the created toggle instance
-- Alias: createtoggle


plugins.createinput(Tab, Text, PlaceholderText, Func)
-- Usage Example:
local ExampleInput = plugins.createinput(ExampleTab, "Example Input", "Input Placeholder", function(input)
    print("The input text has been changed to "..tostring(input).."!")
end)
-- Information: Creates a new input field with the text set by the argument Text located in the tab set by the argument Tab, sets the placeholder text using the argument PlaceholderText, executes the function set by the argument Func when the input changes, and returns the created input instance
-- Alias: createinput


plugins.createdropdown(Tab, Text, Options, Func)
-- Usage Example:
local ExampleDropdown = plugins.createdropdown(ExampleTab, "Example Dropdown", {"Revyn", "Is", "The", "Best"}, function(choice)
    print("The option "..choice.." has been chosen!")
end)
-- Information: Creates a new dropdown with the text set by the argument Text located in the tab set by the argument Tab, sets the available options using the argument Options, executes the function set by the argument Func when an option is selected, and returns the created dropdown instance
-- Alias: createdropdown


--------------------------------------------------
-- Instance Updates
--------------------------------------------------

plugins.updatetext(Instance, Text)
-- Usage Example:
plugins.updatetext(ExampleLabel, "Update the text to this!")
-- Information: Updates the text of the instance set by the argument Instance to the value set by the argument Text
-- Alias: updatetext


plugins.updatestate(Instance, State)
-- Usage Example:
plugins.updatestate(ExampleToggle, true)
-- Information: Updates the state of the instance set by the argument Instance to the value set by the argument State
-- Alias: updatestate


plugins.updateoptions(Instance, Options)
-- Usage Example:
plugins.updateoptions(ExampleDropdown, {"Buy", "Revyn!"})
-- Information: Updates the available options of the instance set by the argument Instance to the values set by the argument Options
-- Alias: updateoptions


plugins.removetab(Tab)
-- Usage Example:
plugins.removetab(ExampleTab)
-- Information: Removes the tab set by the argument Tab from the interface
-- Alias: removetab

--------------------------------------------------
-- Information Library
--------------------------------------------------

info.getsupportedgames(NamesOnly)
-- Usage Example:
for PlaceId, Status in info.getsupportedgames(false) do
    print("Game with PlaceId "..tostring(PlaceId).." has a status of "..Status)
end
for _, GameName in info.getsupportedgames(true) do
    print(GameName.." is supported by Revyn")
end
-- Information: If NamesOnly is false or nil it returns a table of all PlaceId's and Status for each supported game, otherwise just the names of the supported games
-- Alias: getsupportedgames

info.getsupportedexecutors()
-- Usage Example:
for _, ExecutorName in info.getsupportedexecutors() do
    print(ExecutorName.." is confirmed to be supported!")
end
-- Information: Returns a table of all supported executor names
-- Alias: getsupportedexecutors

info.getdiscordlink()
-- Usage Example:
print(getdiscordlink())
-- Information: Returns Revyn's discord invite link
-- Alias: getdiscordlink


info.getstorelink()
-- Usage Example:
print(getstorelink())
-- Information: Returns Revyn's official store link
-- Alias: getstorelink

info.getscriptversion()
-- Usage Example:
print(getscriptversion())
-- Information: Returns the script version being used [Free | Paid]
-- Alias: getscriptversion

--------------------------------------------------
-- Connect Library
--------------------------------------------------

connect.connectui(TextBox, TextButton)
-- Usage Example:
connect.connectui(UI.TextBox, UI.TextButton)
-- Information: Allows you to use rEnv+ on another UI, TextBox being the Script Box and TextButton being the Execute Button
-- Alias: connectui

connect.applybehaviour(TextBox)
-- Usage Example:
connect.applybehaviour(UI.TextBox)
-- Information: Allows you to use Revyn's Script Box behaviour on another TextBox
-- Alias: connectui
