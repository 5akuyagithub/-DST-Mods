local assets =
{
	Asset( "ANIM", "anim/frisk.zip" ),
	Asset( "ANIM", "anim/ghost_frisk_build.zip" ),
}

local skins =
{
	normal_skin = "frisk",
	ghost_skin = "ghost_frisk_build",
}

local base_prefab = "frisk"

local tags = {"FRISK", "CHARACTER"}

return CreatePrefabSkin("frisk_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})