inventory_ui = layer_get_flexpanel_node("Inventory");

main_window = flexpanel_node_get_child(inventory_ui, "Main_Window"); 
player_info = flexpanel_node_get_child(main_window, "Player Info"); 
class_spr_panel = flexpanel_node_get_child(inventory_ui, "Character_Class_Sprite"); 
spr_struct = flexpanel_node_get_struct(class_spr_panel);
//show_debug_message($"Gui test {_ui_layer} children {_child_count}")
 //_main_gui_panel = flexpanel_node_get_child(_ui_layer, 0);



/*for (var i = 0; i < 20; i++) { //<<< 20 is a guess
	var _child = flexpanel_node_get_child(track_node, i);
	_token_struct = flexpanel_node_get_struct(_child)
	array_push(token_track,_token_struct)
	//show_debug_message($"Token Track {array_length(token_track)} child {_child}")
	//var _element_data = _child.layerElements[0];
}   













