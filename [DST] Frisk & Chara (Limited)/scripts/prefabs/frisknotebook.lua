local assets=
{
    Asset("ANIM", "anim/frisknotebook.zip"),
    Asset("ANIM", "anim/swap_frisknotebook.zip"),
  
    Asset("ATLAS", "images/inventoryimages/frisknotebook.xml"),
    Asset("IMAGE", "images/inventoryimages/frisknotebook.tex"),
}

local prefabs = 
{

}

local function OnEquip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_frisknotebook", "swap_frisknotebook")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
	owner.components.builder.magic_bonus = 3
end
  
local function OnUnequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
	owner.components.builder.magic_bonus = 0
end
 
local function fn()
  
    local inst = CreateEntity()
 
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
     
    MakeInventoryPhysics(inst)   
      
    inst.AnimState:SetBank("frisknotebook")
    inst.AnimState:SetBuild("frisknotebook")
    inst.AnimState:PlayAnimation("idle")
 
    inst:AddTag("sharp")
 
    if not TheWorld.ismastersim then
        return inst
    end
 
    inst.entity:SetPristine()
     	  
    inst:AddComponent("inspectable")
      
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "frisknotebook"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/frisknotebook.xml"
      
    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnUnequip( OnUnequip )
	     
    return inst
end

STRINGS.NAMES.FRISKNOTEBOOK = "Torn Notebook"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FRISKNOTEBOOK = "*Contains illegible scrawls. Increases INV by 6."

return  Prefab("common/inventory/frisknotebook", fn, assets, prefabs) 