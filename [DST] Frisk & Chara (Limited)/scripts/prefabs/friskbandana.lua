local assets =
{ 
    Asset("ANIM", "anim/friskbandana.zip"),
    Asset("ANIM", "anim/friskbandana_swap.zip"), 

    Asset("ATLAS", "images/inventoryimages/friskbandana.xml"),
    Asset("IMAGE", "images/inventoryimages/friskbandana.tex"),
}

local prefabs = 
{
}

local function OnEquip(inst, owner) 
    owner.AnimState:OverrideSymbol("swap_hat", "friskbandana_swap", "swap_hat")

    owner.AnimState:Show("HAT")
    owner.AnimState:Show("HAT_HAIR")
    owner.AnimState:Hide("HAIR_NOHAT")
    owner.AnimState:Hide("HAIR")

    if owner:HasTag("player") then
        owner.AnimState:Hide("HEAD")
        owner.AnimState:Show("HEAD_HAT")
    end
end

local function OnUnequip(inst, owner) 
    owner.AnimState:Hide("HAT")
    owner.AnimState:Hide("HAT_HAIR")
    owner.AnimState:Show("HAIR_NOHAT")
    owner.AnimState:Show("HAIR")

    if owner:HasTag("player") then
        owner.AnimState:Show("HEAD")
        owner.AnimState:Hide("HEAD_HAT")
    end
end

local function fn()

    local inst = CreateEntity()
    
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("friskbandana")
    inst.AnimState:SetBuild("friskbandana")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("hat")

    if not TheWorld.ismastersim then
        return inst
    end

    inst.entity:SetPristine()

    inst:AddComponent("inspectable")

    inst:AddComponent("tradable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "friskbandana"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/friskbandana.xml"
    
    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.HEAD
    inst.components.equippable:SetOnEquip(OnEquip)
    inst.components.equippable:SetOnUnequip(OnUnequip)
	
	inst:AddComponent("armor")
	inst.components.armor:InitCondition(99999999*9, TUNING.ARMORGRASS_ABSORPTION)
	
    MakeHauntableLaunch(inst)
	
    return inst
end

STRINGS.NAMES.FRISKBANDANA = "Manly Bandanna"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FRISKBANDANA = "*It has seen some wear. It has abs drawn on it."

return  Prefab("common/inventory/friskbandana", fn, assets, prefabs)