local assets =
{ 
    Asset("ANIM", "anim/friskribbon.zip"),
    Asset("ANIM", "anim/friskribbon_swap.zip"), 

    Asset("ATLAS", "images/inventoryimages/friskribbon.xml"),
    Asset("IMAGE", "images/inventoryimages/friskribbon.tex"),
}

local prefabs = 
{
}

local function OnEquip(inst, owner) 
    owner.AnimState:OverrideSymbol("swap_hat", "friskribbon_swap", "swap_hat")

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

    inst.AnimState:SetBank("friskribbon")
    inst.AnimState:SetBuild("friskribbon")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("hat")

    if not TheWorld.ismastersim then
        return inst
    end

    inst.entity:SetPristine()

    inst:AddComponent("inspectable")

    inst:AddComponent("tradable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "friskribbon"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/friskribbon.xml"
    
    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.HEAD
    inst.components.equippable:SetOnEquip(OnEquip)
    inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_LARGE
	
    MakeHauntableLaunch(inst)
	
    return inst
end

STRINGS.NAMES.FRISKRIBBON = "Faded Ribbon"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FRISKRIBBON = "*If you're cuter, monsters won't hit you as hard."

return  Prefab("common/inventory/friskribbon", fn, assets, prefabs)