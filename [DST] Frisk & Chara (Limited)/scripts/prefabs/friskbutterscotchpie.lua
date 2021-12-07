local assets =
{
	Asset("ANIM", "anim/friskbutterscotchpie.zip"),
    Asset("ATLAS", "images/inventoryimages/friskbutterscotchpie.xml"),
	Asset("IMAGE", "images/inventoryimages/friskbutterscotchpie.tex"),
}

local prefabs = 
{
}

-- Still does nothing. Dunno what it should do...
local function fn(Sim)
	local inst = CreateEntity()
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddMiniMapEntity()
    MakeInventoryPhysics(inst)

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()
    
	inst:AddTag("friskbutterscotchpie")
	
    if not TheWorld.ismastersim then
        return inst
    end
		
	inst.entity:SetPristine() 
    
    inst.AnimState:SetBank("friskbutterscotchpie")
    inst.AnimState:SetBuild("friskbutterscotchpie")
    inst.AnimState:PlayAnimation("idle", false)
	
    MakeHauntableLaunch(inst)
    inst:AddComponent("inspectable")
	
	inst:AddComponent("edible")   
    inst.components.edible.foodtype = FOODTYPE.VEGGIE 
    inst.components.edible.healthvalue = TUNING.HEALING_LARGE * 2
    inst.components.edible.hungervalue = TUNING.CALORIES_LARGE * 2
    inst.components.edible.sanityvalue = TUNING.SANITY_LARGE * 2
	
    inst:AddComponent("tradable")
    inst.components.tradable.goldvalue = 10
				
    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = "friskbutterscotchpie"
	inst.components.inventoryitem.atlasname = "images/inventoryimages/friskbutterscotchpie.xml"
	
    return inst
end

STRINGS.NAMES.FRISKBUTTERSCOTCHPIE = "Butterscotch Pie"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FRISKBUTTERSCOTCHPIE = "*Butterscotch-cinnamon pie, one slice."

return Prefab( "common/inventory/friskbutterscotchpie", fn, assets) 