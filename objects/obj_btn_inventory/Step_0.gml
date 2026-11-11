if(isOpen){
	layer_set_visible("Inventory", true)
	inventory.set_player_spr(spr_character_base_cleric)
}else{
	layer_set_visible("Inventory", false)
}