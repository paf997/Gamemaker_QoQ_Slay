function set_player_spr(_spr, _index){
	//show_debug_message($"set player spr. array len: {array_length(spr_struct_array)}")
	var _spr_struct = spr_struct_array[_index]
	var _spr_id = _spr_struct.layerElements[0].elementId
	//show_debug_message($"{_index} == {spr_struct_array[_index]}")
	layer_sprite_change(_spr_id,_spr)
}

function set_class_name(_name, _index){
	//show_debug_message($"set player spr. array len: {array_length(spr_struct_array)}")
	var _name_struct = name_struct_array[_index]
	var _name_id = _name_struct.layerElements[0].elementId
	//show_debug_message($"{_index} == {spr_struct_array[_index]}")
	layer_text_text(_name_id,_name)
}

function set_inventory_gui(_index, _spr){
	_element = item_structs_array[_index].layerElements[0].elementId
	layer_sprite_change(_element,_spr)
}

function convert_panel_to_struct(_start = 0){
	show_debug_message($"Item inventory array lenngth {array_length(item_structs_array)}")
	
	/*
	show_debug_message($"Panel in array{player_panel_arr[_start]}")
	show_debug_message($"Panel in array{player_panel_arr[_start+1]}")
	show_debug_message($"Panel in array{player_panel_arr[_start+2]}")
	*/

	//var _player_info = flexpanel_node_get_child(player_panel_arr[_start], "Player_Info"); 
	//var _row = flexpanel_node_get_child(_player_info, "Row_1");
	/*
	for (cnt = (6 *_start); cnt < (6+_start); cnt ++){
		var _item = flexpanel_node_get_child(_row, cnt); 
		var _item_struct = flexpanel_node_get_struct(_item)
		array_push(item_structs_array,_item_struct)
	}
	*/
}