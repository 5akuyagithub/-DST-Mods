local assets=
{
    Asset("ANIM", "anim/charaworndagger.zip"),
    Asset("ANIM", "anim/swap_charaworndagger.zip"),
  
    Asset("ATLAS", "images/inventoryimages/charaworndagger.xml"),
    Asset("IMAGE", "images/inventoryimages/charaworndagger.tex"),
}

local prefabs = 
{

}

local function OnEquip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_charaworndagger", "swap_charaworndagger")
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
      
    inst.AnimState:SetBank("charaworndagger")
    inst.AnimState:SetBuild("charaworndagger")
    inst.AnimState:PlayAnimation("idle")
 
    inst:AddTag("sharp")
 
    if not TheWorld.ismastersim then
        return inst
    end
 
    inst.entity:SetPristine()
     
    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(45)
	  
    inst:AddComponent("inspectable")
      
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "charaworndagger"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/charaworndagger.xml"
      
    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnUnequip( OnUnequip )
	
    inst.components.equippable.dapperness = TUNING.CRAZINESS_MED * 2
	     
    return inst
end

STRINGS.NAMES.CHARAWORNDAGGER = "Worn Dagger"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CHARAWORNDAGGER = "*Perfect for cutting plants and vines."

return  Prefab("common/inventory/charaworndagger", fn, assets, prefabs) 