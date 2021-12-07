local MakePlayerCharacter = require "prefabs/player_common"


local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
	Asset( "ANIM", "anim/chara.zip" ),
}
local prefabs = {}

-- Custom starting items
local start_inv = {
	"friskbandaid",
	"charaworndagger",
}

-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when reviving from ghost (optional)
    if inst:HasTag("frisk") then
		inst.components.locomotor:SetExternalSpeedMultiplier(inst, "frisk_speed_mod", 1.35)
    else
		inst.components.locomotor:SetExternalSpeedMultiplier(inst, "frisk_speed_mod", 2)
    end
	inst.components.talker:Say("*...But It Refused.", 2.5,true) 
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "frisk_speed_mod")
end

-- When loading or spawning the character
local function onload(inst, data)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end

local function OnLoad(inst, data)
	if data then
		if data.transformed then
			inst.transformed = data.transformed
		end
	end
	
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end

-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst) 
	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "frisk.tex" )
	
	inst:AddTag("frisk_builder")
	inst:AddTag("chara_builder")
	--Starting out as Frisk
	inst:AddTag("frisk")
	inst:AddTag("doublehealz")
	inst:RemoveTag("nosanityloss")
	inst:RemoveTag("nohealz")
	inst:RemoveTag("chara")
	inst:RemoveTag("scarytoprey")
	inst:RemoveTag("monster")

	inst:AddComponent("keyhandler")
    inst.components.keyhandler:AddActionListener("frisk", TUNING.FRISK.KEY, "CHARA")

end

-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- choose which sounds this character will play
	inst.soundsname = "frisk"
	
	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
    --inst.talker_path_override = "dontstarve_DLC001/characters/"
	
	-- Stats	
	inst.components.health:SetMaxHealth(75)
	inst.components.hunger:SetMax(150)
	inst.components.sanity:SetMax(200)
	
	inst.components.health.SetPenalty = function(self, penalty)
    self.penalty = math.clamp(penalty, 0, 0)
	end
			
	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
		
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "frisk_speed_mod", 1.35)
	inst.components.health.absorb = 0.1
	inst.components.combat.damagemultiplier = 0.75
	
	inst.Transform:SetScale(0.7, 0.7, 0.7)
		
	local _DoDelta = inst.components.health.DoDelta
	inst.components.health.DoDelta = function(self, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb)
		if amount > 0 then
			if self.inst:HasTag("nohealz") then
				amount = 0
			elseif self.inst:HasTag("doublehealz") then
				amount = amount * 2
			end
		end
		_DoDelta(self, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb)
	end
	
	inst.OnLoad = OnLoad
	inst.OnNewSpawn = onload
		
end

return MakePlayerCharacter("frisk", prefabs, assets, common_postinit, master_postinit, start_inv)