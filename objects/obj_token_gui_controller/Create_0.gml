var _ui_layer = layer_get_flexpanel_node("UILayer_1");
var _child_count = flexpanel_node_get_num_children(_ui_layer);
var _ui_tokens = flexpanel_node_get_child(_ui_layer, "Token"); 
show_debug_message($"Gui test {_ui_layer} children {_child_count}")

