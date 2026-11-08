function set_gui_tokens(token, atb_index){
	//show_debug_message($"{token} atb phase:{atb_index}")
	_index = token_track[atb_index]
	token_spr = _index.layerElements[0].elementId;
	layer_sprite_change(token_spr,token)
}

function set_initiative_track(characters){
	//show_debug_message("set Initiative - gui controller")
	for (cnt = array_length(characters)-1; cnt >= 0;cnt--){
		show_debug_message($"particiapants {characters[cnt]}")
		_index = initiative_track[cnt].layerElements[0].elementId
		_icon_spr = characters[cnt].init_icon_spr
		layer_sprite_change(_index, _icon_spr)
	}
}

function set_player_power(pwr_array){
	for (cnt = 0; cnt < 4; cnt ++){
		//_index = power_gui_list[cnt].layerElements[1].elementId
		//show_debug_message($"Stats?: {pwr_array}")
	}
}