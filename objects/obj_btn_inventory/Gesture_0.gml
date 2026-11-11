
isOpen = !isOpen
if(is_first){
	is_first = false
	inventory.set_player_spr(spr_character_base_cleric)
	inventory.set_class_name("White Mage")
	//show_debug_message($"{global.player_list[0].equipment[2]}")
	inventory.set_inventory_gui(0,object_get_sprite(global.player_list[0].equipment[0]))
	inventory.set_inventory_gui(1,object_get_sprite(global.player_list[0].equipment[1]))
	inventory.set_inventory_gui(2,object_get_sprite(global.player_list[0].equipment[2]))
}



