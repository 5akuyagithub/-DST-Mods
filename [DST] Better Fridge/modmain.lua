-- Configuration

if GetModConfigData("magnification") == "1" then
    modimport("scripts/strings1.lua")
elseif GetModConfigData("magnification") == "1h" then
    modimport("scripts/strings1h.lua")
elseif GetModConfigData("magnification") == "2" then
    modimport("scripts/strings2.lua")
elseif GetModConfigData("magnification") == "2h" then
    modimport("scripts/strings2h.lua")
elseif GetModConfigData("magnification") == "3" then
    modimport("scripts/strings3.lua")
elseif GetModConfigData("magnification") == "3h" then
    modimport("scripts/strings3h.lua")
elseif GetModConfigData("magnification") == "0" then
    modimport("scripts/strings0.lua")
end