function set_gui_tokens(token, atb_index){
	//show_debug_message($"{token} atb phase:{atb_index}")
	_index = token_track[atb_index]
	token_spr = _index.layerElements[0].elementId;
	layer_sprite_change(token_spr,token)
}

function set_initiative_track(characters){
	//show_debug_message("set Initiative - gui controller")
	for (cnt = array_length(characters)-1; cnt >= 0;cnt--){
		//show_debug_message($"particiapants {characters[cnt].init_icon_spr}")
		_index = initiative_track[cnt].layerElements[0].elementId
		_icon_spr = characters[cnt].init_icon_spr
		layer_sprite_change(_index, _icon_spr)
		_index = initiative_track[cnt].layerElements[1].elementId
		_character_initiative = characters[cnt].initiative
		layer_text_text(_index, _character_initiative)
	}
}

function set_player_power(pwr_array, player){
	//show_debug_message($" pwr list count {test}")
	var _index_start = global.power_types *  player
	var _index_end = _index_start + global.power_types
	for (cnt = _index_start; cnt < _index_end; cnt ++){
		_index = power_gui_list[cnt].layerElements[0].elementId
		show_debug_message($"ANd it is ....????   ::: {power_gui_list[cnt]}")
		layer_text_text(_index,pwr_array[cnt - _index_start])
	}
}

function set_player_stats(){
	//show_debug_message($" player list count {global.player_list}")
	for (cnt = 0; cnt < 3; cnt ++){
		_index = stat_gui_list[(cnt * 4)].layerElements[0].elementId
		layer_text_text(_index,global.player_list[cnt].hp)
		_index = stat_gui_list[(cnt * 4) + 1].layerElements[0].elementId
		layer_text_text(_index,global.player_list[cnt].armour)
		_index = stat_gui_list[(cnt * 4) + 2].layerElements[0].elementId
		layer_text_text(_index,global.player_list[cnt].initiative)
	}
}


function set_card_text(){
	var _card = cards_gui_list[0]
	var _text = flexpanel_node_get_child(_card, "Card_Text"); 
	var _text_struct  = flexpanel_node_get_struct(_text);
	//show_debug_message($" text Struct?: {_text}")
	_index = _text_struct.layerElements[0].elementId
	//layer_text_text(_index,global.player_1.actions[1].ability_text)
}