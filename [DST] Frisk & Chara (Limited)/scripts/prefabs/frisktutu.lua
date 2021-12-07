local assets =
{
    Asset("ANIM", "anim/frisktutu.zip"),
    Asset("ATLAS", "images/inventoryimages/frisktutu.xml"),
    Asset("IMAGE", "images/inventoryimages/frisktutu.tex"),
}

local function onequip(inst, owner) 
    owner.AnimState:OverrideSymbol("swap_body", "frisktutu", "swap_body")
end

local function onunequip(inst, owner) 
    owner.AnimState:ClearOverrideSymbol("swap_body")
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("frisktutu")
    inst.AnimState:SetBuild("frisktutu")
    inst.AnimState:PlayAnimation("anim")
    --inst.AnimState:SetMultColour(1, 1, 1, 0.6)

    inst:AddTag("sanity")
    
    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = "frisktutu"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/frisktutu.xml"
	
    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.BODY

    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)
    inst.components.equippable.walkspeedmult = TUNING.CANE_SPEED_MULT

    MakeHauntableLaunch(inst)

    return inst
end

STRINGS.NAMES.FRISKTUTU = "Old Tutu"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FRISKTUTU = "*Finally, a protective piece of armor."

return Prefab("common/inventory/frisktutu", fn, assets)