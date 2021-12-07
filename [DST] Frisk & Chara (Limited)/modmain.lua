-- Import the engine.
modimport("engine.lua")

-- Imports to keep the keyhandler from working while typing in chat.
Load "chatinputscreen"
Load "consolescreen"
Load "textedit"

PrefabFiles = {
	"frisk",
	"frisk_none",
	
	"friskbandaid",
	"friskbandana",
	"friskcowboyhat",
	"frisknotebook",
	"friskpan",
	"friskribbon",
	"frisktutu",
	"friskbutterscotchpie",
	
	"chararealknife",
	"charaworndagger",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/frisk.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/frisk.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/frisk.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/frisk.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/frisk_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/frisk_silho.xml" ),

    Asset( "IMAGE", "bigportraits/frisk.tex" ),
    Asset( "ATLAS", "bigportraits/frisk.xml" ),
	
	Asset( "IMAGE", "images/map_icons/frisk.tex" ),
	Asset( "ATLAS", "images/map_icons/frisk.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_frisk.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_frisk.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_frisk.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_frisk.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_frisk.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_frisk.xml" ),
	
	Asset( "IMAGE", "images/names_frisk.tex" ),
    Asset( "ATLAS", "images/names_frisk.xml" ),
	
    Asset( "IMAGE", "bigportraits/frisk_none.tex" ),
    Asset( "ATLAS", "bigportraits/frisk_none.xml" ),
	
    Asset("SOUNDPACKAGE", "sound/frisk.fev"),
	Asset("SOUND", "sound/frisk.fsb"),
	
	Asset( "ATLAS", "images/hud/frisktab.xml" ),
	Asset( "IMAGE", "images/hud/frisktab.tex" ),
	
	Asset( "ATLAS", "images/hud/charatab.xml" ),
	Asset( "IMAGE", "images/hud/charatab.tex" ),

}

RemapSoundEvent( "dontstarve/characters/frisk/death_voice", "frisk/sound/death_voice" )
RemapSoundEvent( "dontstarve/characters/frisk/hurt", "frisk/sound/hurt" )
RemapSoundEvent( "dontstarve/characters/frisk/talk_LP", "frisk/sound/talk_LP" )
RemapSoundEvent( "dontstarve/characters/frisk/ghost_LP", "frisk/sound/ghost_LP" )
RemapSoundEvent( "dontstarve/characters/frisk/pose", "frisk/sound/pose" )
RemapSoundEvent( "dontstarve/characters/frisk/emote", "frisk/sound/emote" )
RemapSoundEvent( "dontstarve/characters/frisk/yawn", "frisk/sound/yawn" )

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local resolvefilepath = GLOBAL.resolvefilepath

local Ingredient = GLOBAL.Ingredient
local RECIPETABS = GLOBAL.RECIPETABS
local Recipe = GLOBAL.Recipe
local TECH = GLOBAL.TECH

--Transformation Section
GLOBAL.TUNING.FRISK = {}
GLOBAL.TUNING.FRISK.KEY = GetModConfigData("charakey") or 122

local function CharaFn(inst, onload, timeleft)
if inst:HasTag("playerghost") then return end
if inst.transform_task ~= nil then return end

if not inst.transformed or (onload and inst.transformed) then
	inst.AnimState:SetBuild("chara")
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "frisk_speed_mod", 2)
	inst.components.health.absorb = 0.85
	inst.components.combat.damagemultiplier = 1.75
	inst.components.hunger:SetRate(1)
	STRINGS.CHARACTERS.FRISK = require "speech_chara"
	inst:RemoveTag("frisk")
	inst:RemoveTag("doublehealz")
	inst:AddTag("nosanityloss")
	inst:AddTag("nohealz")
	inst:AddTag("chara")
	inst:AddTag("scarytoprey")
	inst:AddTag("monster")

	local x, y, z = inst.Transform:GetWorldPosition()
	local fx = SpawnPrefab("firering_fx")
	fx.Transform:SetPosition(x, y, z)
	SpawnPrefab("statue_transition_2").Transform:SetPosition(inst:GetPosition():Get())
else
	inst.AnimState:SetBuild("frisk")
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "frisk_speed_mod", 1.35)
	inst.components.health.absorb = 0.1
	inst.components.combat.damagemultiplier = 0.75
	inst.components.hunger:SetRate(TUNING.WILSON_HUNGER_RATE)
	STRINGS.CHARACTERS.FRISK = require "speech_frisk"
	inst:AddTag("frisk")
	inst:AddTag("doublehealz")
	inst:RemoveTag("nosanityloss")
	inst:RemoveTag("nohealz")
	inst:RemoveTag("chara")
	inst:RemoveTag("scarytoprey")
	inst:RemoveTag("monster")

	local x, y, z = inst.Transform:GetWorldPosition()
	local fx = SpawnPrefab("groundpoundring_fx")
	fx.Transform:SetPosition(x, y, z)
	SpawnPrefab("chester_transform_fx").Transform:SetPosition(inst:GetPosition():Get()) 
end

	inst.transformed = not inst.transformed
	
	inst.components.health:DoDelta(-25)

 
-- inst.components.health:SetCurrentHealth(1)
-- inst.components.health:DoDelta(0)
return true
 
end
 
AddModRPCHandler("frisk", "CHARA", CharaFn)

local function combat(self)
    function self:SuggestTarget(target)
        if self.target == nil and target ~= nil then
            if target:HasTag("frisk") then
                local equipped = false
                for k, v in pairs(target.components.inventory.equipslots) do
                    equipped = false
                end
                
                if equipped then
                    self:SetTarget(target)
                    return false
                end
            else
                self:SetTarget(target)
                return false
            end
        end
    end
end

AddComponentPostInit("combat", combat)

local function nolosesanity(self)
   local _DoDelta = self.DoDelta
   self.DoDelta = function(self, delta, overtime)
      if self.inst:HasTag("nosanityloss") then 
         return
      end		
      return _DoDelta(self, delta, overtime)
   end
end
AddComponentPostInit("sanity", nolosesanity)

AddComponentPostInit("talker", function(self)
	local old_Say = self.Say
	function self:Say(script, ...)
		if self.inst:HasTag("chara") then
			if script and type(script) == "string" then
				script = script:match("^%$%$(.*)$") or "..."
			end
		end
		return old_Say(self, script, ...)
	end
end)

--Frisk's Tab

local frisktab = AddRecipeTab( "Frisk's Tab", 997, "images/hud/frisktab.xml", "frisktab.tex", "frisk_builder")

--Chara's Tab

local charatab = AddRecipeTab( "Chara's Tab", 996, "images/hud/charatab.xml", "charatab.tex", "chara_builder")

--Frisk's Recipes

AddRecipe("friskbandaid", 
{GLOBAL.Ingredient("cutgrass", 3), GLOBAL.Ingredient("spidergland", 1)}, 
frisktab, TECH.NONE, nil, nil, nil, nil, "frisk_builder", 
"images/inventoryimages/friskbandaid.xml", "friskbandaid.tex" )

AddRecipe("friskbandana", 
{GLOBAL.Ingredient("silk", 4), GLOBAL.Ingredient("beefalowool", 2), GLOBAL.Ingredient("footballhat", 1), GLOBAL.Ingredient("cutstone", 4)}, 
frisktab, TECH.NONE, nil, nil, nil, nil, "frisk_builder", 
"images/inventoryimages/friskbandana.xml", "friskbandana.tex" )

AddRecipe("friskcowboyhat", 
{GLOBAL.Ingredient("cutgrass", 12), GLOBAL.Ingredient("strawhat", 1), GLOBAL.Ingredient("silk", 4)}, 
frisktab, TECH.NONE, nil, nil, nil, nil, "frisk_builder", 
"images/inventoryimages/friskcowboyhat.xml", "friskcowboyhat.tex" )

AddRecipe("frisknotebook", 
{GLOBAL.Ingredient("papyrus", 3), GLOBAL.Ingredient("nightmarefuel", 2), GLOBAL.Ingredient("purplegem", 1)}, 
frisktab, TECH.NONE, nil, nil, nil, nil, "frisk_builder", 
"images/inventoryimages/frisknotebook.xml", "frisknotebook.tex" )

AddRecipe("friskpan", 
{GLOBAL.Ingredient("cutstone", 3), GLOBAL.Ingredient("flint", 5), GLOBAL.Ingredient("nitre", 4)}, 
frisktab, TECH.NONE, nil, nil, nil, nil, "frisk_builder", 
"images/inventoryimages/friskpan.xml", "friskpan.tex" )

AddRecipe("friskribbon", 
{GLOBAL.Ingredient("silk", 2), GLOBAL.Ingredient("flowerhat", 2), GLOBAL.Ingredient("berries", 5)}, 
frisktab, TECH.NONE, nil, nil, nil, nil, "frisk_builder", 
"images/inventoryimages/friskribbon.xml", "friskribbon.tex" )

AddRecipe("frisktutu", 
{GLOBAL.Ingredient("silk", 6), GLOBAL.Ingredient("beefalowool", 4), GLOBAL.Ingredient("manrabbit_tail", 2)}, 
frisktab, TECH.NONE, nil, nil, nil, nil, "frisk_builder", 
"images/inventoryimages/frisktutu.xml", "frisktutu.tex" )

AddRecipe("friskbutterscotchpie", 
{GLOBAL.Ingredient("bird_egg", 2), GLOBAL.Ingredient("honey", 1), GLOBAL.Ingredient("butterflymuffin", 1)}, 
frisktab, TECH.NONE, nil, nil, nil, nil, "frisk_builder", 
"images/inventoryimages/friskbutterscotchpie.xml", "friskbutterscotchpie.tex" )

--Charas Recipe

AddRecipe("chararealknife", 
{GLOBAL.Ingredient("cutstone", 3), GLOBAL.Ingredient("flint", 10), GLOBAL.Ingredient("purplegem", 2), GLOBAL.Ingredient("nightmarefuel", 5)}, 
charatab, TECH.NONE, nil, nil, nil, nil, "chara_builder", 
"images/inventoryimages/chararealknife.xml", "chararealknife.tex" )

-- Custom Recipe Desc
STRINGS.RECIPE_DESC.FRISKBANDAID = "DETERMINATION." 
STRINGS.RECIPE_DESC.FRISKBANDANA = "BRAVERY."
STRINGS.RECIPE_DESC.FRISKCOWBOYHAT = "JUSTICE." 
STRINGS.RECIPE_DESC.FRISKNOTEBOOK = "PERSEVERANCE."
STRINGS.RECIPE_DESC.FRISKPAN = "KINDNESS."
STRINGS.RECIPE_DESC.FRISKRIBBON = "PATIENCE."
STRINGS.RECIPE_DESC.FRISKTUTU = "INTEGRITY." 
STRINGS.RECIPE_DESC.FRISKBUTTERSCOTCHPIE = "One piece." 

STRINGS.RECIPE_DESC.CHARAREALKNIFE = "Here we are!"
STRINGS.RECIPE_DESC.CHARAWORNDAGGER = "Perfect for cutting plants."

-- The character select screen lines
STRINGS.CHARACTER_TITLES.frisk = "The Seventh Human"
STRINGS.CHARACTER_NAMES.frisk = "Frisk"
STRINGS.CHARACTER_DESCRIPTIONS.frisk = "*Determination\n*Determination\n*Determination"
STRINGS.CHARACTER_QUOTES.frisk = "\"You're filled with Determination!\""

-- Custom speech strings
STRINGS.CHARACTERS.FRISK = require "speech_frisk"

-- The character's name as appears in-game 
STRINGS.NAMES.FRISK = "Frisk"

AddMinimapAtlas("images/map_icons/frisk.xml")

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("frisk", "PLURAL")