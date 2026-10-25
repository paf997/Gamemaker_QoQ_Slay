var _ui_layer = layer_get_flexpanel_node("UILayer_1");

var _node = flexpanel_node_get_child(_ui_layer, "Token"); 
//show_debug_message($"Gui test {_ui_layer} children {_child_count}")
var _main_gui_panel = flexpanel_node_get_child(_ui_layer, 0);

/*child_count = flexpanel_node_get_num_children(_main_gui_panel);
show_debug_message($"Gui test {_main_gui_panel} children {_child_count}")
*/

var _row_1 = flexpanel_node_get_child(_main_gui_panel, 0);
show_debug_message($"Gui test {_main_gui_panel} ")
var _token_track = flexpanel_node_get_child(_row_1, 3);
var _child_count = flexpanel_node_get_num_children(_token_track);

show_debug_message($"Gui test {_token_track} ")

for (var i = 0; i < 20; i++) { //<<< 20 is a guess
	var _child = flexpanel_node_get_child(_token_track, 0);
	show_debug_message($"Gui test {_child}")
	//var _element_data = _child.layerElements[0];
	if(_child.layerElements > 0){
	}
}   

