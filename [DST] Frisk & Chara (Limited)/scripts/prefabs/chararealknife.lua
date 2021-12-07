local assets=
{
    Asset("ANIM", "anim/chararealknife.zip"),
    Asset("ANIM", "anim/swap_chararealknife.zip"),
  
    Asset("ATLAS", "images/inventoryimages/chararealknife.xml"),
    Asset("IMAGE", "images/inventoryimages/chararealknife.tex"),
}

local prefabs = 
{

}

local function OnEquip(inst, owner)
	owner.components.talker:Say("About time.", 2.5,true) 
    owner.AnimState:OverrideSymbol("swap_object", "swap_chararealknife", "swap_chararealknife")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")	
	local light = inst.entity:AddLight()
	light:SetFalloff(.6)
	light:SetIntensity(.9)
	light:SetRadius(3)
	light:Enable(true)
	light:SetColour(187/255, 10/255, 30/255)	
	inst.AnimState:SetBloomEffectHandle( "shaders/anim_haunted.ksh" )
end
  
local function OnUnequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")	
end
 
local function fn()
  
    local inst = CreateEntity()
 
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
	inst.entity:AddLight()
     
    MakeInventoryPhysics(inst)   
      
    inst.AnimState:SetBank("chararealknife")
    inst.AnimState:SetBuild("chararealknife")
    inst.AnimState:PlayAnimation("idle")
 
    inst:AddTag("sharp")
	 
    if not TheWorld.ismastersim then
        return inst
    end
 
    inst.entity:SetPristine()
     
    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(72)
	  
    inst:AddComponent("inspectable")
      
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "chararealknife"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/chararealknife.xml"
      
    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnUnequip( OnUnequip )
	
    inst.components.equippable.dapperness = TUNING.CRAZINESS_MED * 20
	     
    return inst
end

STRINGS.NAMES.CHARAREALKNIFE = "Real Knife"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CHARAREALKNIFE = "*Here we are!"

return  Prefab("common/inventory/chararealknife", fn, assets, prefabs) 