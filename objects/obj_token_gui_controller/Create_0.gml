 ui_layer = layer_get_flexpanel_node("UILayer_1");

 track_node = flexpanel_node_get_child(ui_layer, "Token_Track"); 
//show_debug_message($"Gui test {_ui_layer} children {_child_count}")
 //_main_gui_panel = flexpanel_node_get_child(_ui_layer, 0);

token_node = flexpanel_node_get_child(ui_layer, "Token"); 
token_track = []

for (var i = 0; i < 20; i++) { //<<< 20 is a guess
	var _child = flexpanel_node_get_child(track_node, i);
	_token_struct = flexpanel_node_get_struct(_child)
	array_push(token_track,_token_struct)
	//show_debug_message($"Token Track {array_length(token_track)} child {_child}")
	//var _element_data = _child.layerElements[0];
}   

initiative_track_node = flexpanel_node_get_child(ui_layer, "Row2"); 
initiative_track = []

for (var i = 0; i < 6; i++) { //<<< 10 is a guess
	var _child = flexpanel_node_get_child(initiative_track_node, i);
	//show_debug_message($"Nodes? : {_child}")
	var _sub_panel = flexpanel_node_get_child(_child, "Character_Icon_Panel");
	
	_init_struct = flexpanel_node_get_struct(_child)
	array_push(initiative_track,_init_struct)
	//show_debug_message($"Token Track {array_length(token_track)} child {_child}")
	//var _element_data = _child.layerElements[0];
} 

power_gui_node = flexpanel_node_get_child(ui_layer, "Power_GUIs"); 
power_gui_list = []
players_power_guis_list = []

for (var i = 0; i < 3; i++) { 
	//show_debug_message("Set player power - main gui")
	var _player_gui = flexpanel_node_get_child(power_gui_node, i);
	//show_debug_message($"Nodes? : {_child} cnt {i}")
	//var _player_powers_struct = flexpanel_node_get_struct(_player_gui)
	array_push(players_power_guis_list, _player_gui)
	//show_debug_message($"pwrs length{array_length(players_power_guis_list)}")
	for(cnt = 0; cnt < 6; cnt ++){
		var _player_pwr_gui = flexpanel_node_get_child(_player_gui,cnt)
		var _power_struct = flexpanel_node_get_struct(_player_pwr_gui);
		array_push(power_gui_list,_power_struct)
		//show_debug_message($" power gui length: {array_length(power_gui_list)}")
		
	}
} 

stat_gui_node = flexpanel_node_get_child(ui_layer, "Stat_GUIs"); 
stat_gui_list = []
players_stat_guis_list = []

for (var i = 0; i < 3; i++) { 
	//show_debug_message("Set player stat - main gui")
	var _player_gui = flexpanel_node_get_child(stat_gui_node, i);
	//show_debug_message($"Nodes? : {_child} cnt {i}")
	//var _player_powers_struct = flexpanel_node_get_struct(_player_gui)
	array_push(players_stat_guis_list, _player_gui)
	//show_debug_message($"stats length{array_length(players_stat_guis_list)}")
	for(cnt = 0; cnt < 4; cnt ++){
		var _player_stat_gui = flexpanel_node_get_child(_player_gui,cnt)
		var _stat_struct = flexpanel_node_get_struct(_player_stat_gui);
		array_push(stat_gui_list,_stat_struct)
		//show_debug_message($" stats gui length: {array_length(stat_gui_list)}")
	}
} 








