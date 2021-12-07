local assets =
{
    Asset("ANIM", "anim/friskbandaid.zip"),
	
    Asset("ATLAS", "images/inventoryimages/friskbandaid.xml"),
    Asset("IMAGE", "images/inventoryimages/friskbandaid.tex"),
}

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("friskbandaid")
    inst.AnimState:SetBuild("friskbandaid")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("cattoy")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    MakeSmallBurnable(inst, TUNING.TINY_BURNTIME)
    MakeSmallPropagator(inst)
    MakeHauntableLaunchAndIgnite(inst)

    ---------------------

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "friskbandaid"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/friskbandaid.xml"
    
	inst:AddComponent("stackable")
    inst:AddComponent("tradable")

    inst:AddComponent("healer")
    inst.components.healer:SetHealthAmount(TUNING.HEALING_LARGE * 1.2)

    return inst
end

STRINGS.NAMES.FRISKBANDAID = "Bandage"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FRISKBANDAID = "*It has already been used many times."

return Prefab("friskbandaid", fn, assets)