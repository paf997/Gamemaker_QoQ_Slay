inventory_ui = layer_get_flexpanel_node("Inventory");

main_window = flexpanel_node_get_child(inventory_ui, "Main_Window"); 

 
item_structs_array = []
spr_struct_array = []
name_struct_array = []


players_panel = flexpanel_node_get_child(main_window, "Players"); 
player_panel_arr = []


for (cnt = 0; cnt < 3; cnt++){
	var _player  = flexpanel_node_get_child(players_panel, cnt); 
	//show_debug_message($"Pushing into plaer panel array {_player}")
	//array_push(player_panel_arr,_player)
	//show_debug_message($" number of flex panels {flexpanel_node_get_num_children(players_panel)}" )
	var _player_info = flexpanel_node_get_child(_player, "Player_Info");
	var _row = flexpanel_node_get_child(_player, "Row_1");
	//show_debug_message($"Pushing into plaer panel array {_player_info}")
	//show_debug_message($"Pushing into plaer panel array {_row}")
	
	var _class_spr_panel = flexpanel_node_get_child(_player_info, "Character_Class_Sprite"); 
	var _spr_struct = flexpanel_node_get_struct(_class_spr_panel);
	//
	//array_push(_spr_struct_array,spr_struct_array)

	var _class_name = flexpanel_node_get_child(_player_info, "Class_Name"); 
	var _name_struct = flexpanel_node_get_struct(_class_name);
	//var _name = _name_struct.layerElements[0].elementId
	array_push(spr_struct_array,_spr_struct)
	//show_debug_message($"Node Panel xxx ????: {class_spr_panel}{spr_struct}")
	array_push(name_struct_array,_name_struct)
	
	for (n = 0; n < 6; n ++){
		var _item = flexpanel_node_get_child(_row, n); 
		var _item_struct = flexpanel_node_get_struct(_item)
		array_push(item_structs_array,_item_struct)
	}
}

/*

	_player  = flexpanel_node_get_child(players_panel, 1); 
	show_debug_message($"Pushing into plaer panel array {_player}")
	array_push(player_panel_arr,_player)
	
	_player_info = flexpanel_node_get_child(_player, "Player_Info"); 
	show_debug_message($"Pushing into plaer panel array {_player_info}")
	_row = flexpanel_node_get_child(_player, "Row_1");
	show_debug_message($"Pushing into plaer panel array {_row}")
	
	_player  = flexpanel_node_get_child(players_panel, 2); 
	show_debug_message($"Pushing into plaer panel array {_player}")
	array_push(player_panel_arr,_player)
	
	_player_info = flexpanel_node_get_child(_player, "Player_Info"); 
	show_debug_message($"Pushing into plaer panel array {_player_info}")
	_row = flexpanel_node_get_child(_player, "Row_1");
	show_debug_message($"Pushing into plaer panel array {_row}")
	
	
	///////////
	
	







//set_player_spr()
//show_debug_message($"Gui test {_ui_layer} children {_child_count}")
 //_main_gui_panel = flexpanel_node_get_child(_ui_layer, 0);



/*for (var i = 0; i < 20; i++) { //<<< 20 is a guess
	var _child = flexpanel_node_get_child(track_node, i);
	_token_struct = flexpanel_node_get_struct(_child)
	array_push(token_track,_token_struct)
	//show_debug_message($"Token Track {array_length(token_track)} child {_child}")
	//var _element_data = _child.layerElements[0];
}   