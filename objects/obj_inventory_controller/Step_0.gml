function set_player_spr(spr){
	layer_sprite_change(_spr,spr)
}

function set_class_name(name){
	layer_text_text(_name,name)
}

function set_inventory_gui(index, spr){
	_element = item_structs_array[index].layerElements[0].elementId
	layer_sprite_change(_element,spr)
}