 ui_layer = layer_get_flexpanel_node("UILayer_1");

 track_node = flexpanel_node_get_child(ui_layer, "Token_Track"); 
//show_debug_message($"Gui test {_ui_layer} children {_child_count}")
 //_main_gui_panel = flexpanel_node_get_child(_ui_layer, 0);

token_node = flexpanel_node_get_child(ui_layer, "Token"); 
token_struct = flexpanel_node_get_struct(token_node)

token_spr = token_struct.layerElements[0].elementId;
layer_sprite_change(token_spr,spr_blue_token1)

token_list  = [spr_white_token1,spr_white_token2, spr_white_token3, 
	spr_red_token1, spr_red_token2, spr_red_token3,
	spr_green_token1, spr_green_token2, spr_green_token3,
	spr_blue_token1, spr_blue_token2, spr_blue_token3,
	spr_wmage_token, spr_rogue_token, spr_fighter_token]
/*for (var i = 0; i < 20; i++) { //<<< 20 is a guess
	var _child = flexpanel_node_get_child(_token_track, 0);
	show_debug_message($"Gui test {_child}")
	//var _element_data = _child.layerElements[0];
	if(_child.layerElements > 0){
	}
}   /*



