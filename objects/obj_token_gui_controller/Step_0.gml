function set_gui_tokens(token, atb_index){
	show_debug_message($"{token} atb phase:{atb_index}")
	_index = token_track[atb_index]
	token_spr = _index.layerElements[0].elementId;
	layer_sprite_change(token_spr,token)
}