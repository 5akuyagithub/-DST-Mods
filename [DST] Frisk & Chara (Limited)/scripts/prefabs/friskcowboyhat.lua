local assets =
{ 
    Asset("ANIM", "anim/friskcowboyhat.zip"),
    Asset("ANIM", "anim/friskcowboyhat_swap.zip"), 

    Asset("ATLAS", "images/inventoryimages/friskcowboyhat.xml"),
    Asset("IMAGE", "images/inventoryimages/friskcowboyhat.tex"),
}

local prefabs = 
{
}

local function OnEquip(inst, owner) 
    owner.AnimState:OverrideSymbol("swap_hat", "friskcowboyhat_swap", "swap_hat")

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

    inst.AnimState:SetBank("friskcowboyhat")
    inst.AnimState:SetBuild("friskcowboyhat")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("hat")

    if not TheWorld.ismastersim then
        return inst
    end

    inst.entity:SetPristine()

    inst:AddComponent("inspectable")

    inst:AddComponent("tradable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "friskcowboyhat"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/friskcowboyhat.xml"
    
    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.HEAD
    inst.components.equippable:SetOnEquip(OnEquip)
    inst.components.equippable:SetOnUnequip(OnUnequip)
	
    inst:AddComponent("waterproofer")
    inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_HUGE * 1.3)
	
    inst:AddComponent("insulator")
    inst.components.insulator:SetInsulation(TUNING.INSULATION_LARGE)
    inst.components.insulator:SetSummer()
	
    MakeHauntableLaunch(inst)
	
    return inst
end

STRINGS.NAMES.FRISKCOWBOYHAT = "Cowboy Hat"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FRISKCOWBOYHAT = "*This battle-worn hat makes you want to grow a beard. It also raises attack by 5."

return  Prefab("common/inventory/friskcowboyhat", fn, assets, prefabs)