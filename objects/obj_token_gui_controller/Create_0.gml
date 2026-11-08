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

for (var i = 0; i < 6; i++) { //<<< 10 is a guess
	var _power_gui = flexpanel_node_get_child(power_gui_node, i);
	//show_debug_message($"Nodes? : {_child}")
	var _sub_power_panel = flexpanel_node_get_child(power_gui_node, "Player_Power_GUI");
	//var _power_spr = flexpanel_node_get_child(_sub_power_panel, "Power_GUI");
	var _power_struct = flexpanel_node_get_struct(_sub_power_panel)
	//array_push(power_gui_list,_power_struct)
	//show_debug_message($"Token Track {array_length(token_track)} child {_child}")
	//var _element_data = _child.layerElements[0];
} 

stat_gui_node = flexpanel_node_get_child(ui_layer, "Stat_GUIs"); 
stat_gui_list = []
stat_gui = flexpanel_node_get_child(stat_gui_node,"Player_Stats_GUI" );

for (var i = 0; i < 4; i++) { //<<< 10 is a guess
	var _stat_gui = flexpanel_node_get_child(stat_gui, i);
	//show_debug_message($"Nodes? : {_child}")
	//var _sub_stat_panel = flexpanel_node_get_child(_stat_gui, "Stat");
	var _stat_struct = flexpanel_node_get_struct(_stat_gui)
	//array_push(stat_gui_list,_stat_struct)
	//show_debug_message($"Token Track {array_length(token_track)} child {_child}")
	//var _element_data = _child.layerElements[0];
} 






