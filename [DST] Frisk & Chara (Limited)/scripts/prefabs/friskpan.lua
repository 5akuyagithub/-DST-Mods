local assets=
{
    Asset("ANIM", "anim/friskpan.zip"),
    Asset("ANIM", "anim/swap_friskpan.zip"),
  
    Asset("ATLAS", "images/inventoryimages/friskpan.xml"),
    Asset("IMAGE", "images/inventoryimages/friskpan.tex"),
}

local prefabs = 
{

}

local function onattack_friskpan(inst, attacker, target)

    if attacker and attacker.components.health then
        attacker.components.health:DoDelta(1)
    end
end

local function OnEquip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_friskpan", "swap_friskpan")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
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
     
    MakeInventoryPhysics(inst)   
      
    inst.AnimState:SetBank("friskpan")
    inst.AnimState:SetBuild("friskpan")
    inst.AnimState:PlayAnimation("idle")
 
    inst:AddTag("sharp")
 
    if not TheWorld.ismastersim then
        return inst
    end
 
    inst.entity:SetPristine()
     
    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(32)
	inst.components.weapon:SetOnAttack(onattack_friskpan)
	  
    inst:AddComponent("inspectable")
      
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "friskpan"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/friskpan.xml"
      
    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnUnequip( OnUnequip )
	     
    return inst
end

STRINGS.NAMES.FRISKPAN = "Burnt Pan"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FRISKPAN = "*Damage is rather consistent. Consumable items heal 4 more HP."

return  Prefab("common/inventory/friskpan", fn, assets, prefabs) 