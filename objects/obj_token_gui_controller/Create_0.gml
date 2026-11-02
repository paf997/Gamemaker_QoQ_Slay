 ui_layer = layer_get_flexpanel_node("UILayer_1");

 track_node = flexpanel_node_get_child(ui_layer, "Token_Track"); 
//show_debug_message($"Gui test {_ui_layer} children {_child_count}")
 //_main_gui_panel = flexpanel_node_get_child(_ui_layer, 0);

token_node = flexpanel_node_get_child(ui_layer, "Token"); 

token_list  = [spr_white_token1,spr_white_token2, spr_white_token3, 
	spr_red_token1, spr_red_token2, spr_red_token3,
	spr_green_token1, spr_green_token2, spr_green_token3,
	spr_blue_token1, spr_blue_token2, spr_blue_token3,
	spr_wmage_token, spr_rogue_token, spr_fighter_token]
token_track = []
for (var i = 0; i < 20; i++) { //<<< 20 is a guess
	var _child = flexpanel_node_get_child(track_node, i);
	token_struct = flexpanel_node_get_struct(_child)
	array_push(token_track,token_struct)
	show_debug_message($"Token Track {array_length(token_track)} child {_child}")
	//var _element_data = _child.layerElements[0];
}   



