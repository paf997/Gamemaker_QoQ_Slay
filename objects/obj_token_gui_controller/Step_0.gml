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
		//show_debug_message($"ANd it is ....????   ::: {power_gui_list[cnt]}")
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
	var _pwr_costs = flexpanel_node_get_child(_card, "Card_Power_Row"); 
	var _name = flexpanel_node_get_child(_card, "Card_Name"); 
	var _text = flexpanel_node_get_child(_card, "Card_Text"); 
	var _text_2 = flexpanel_node_get_child(_card,3)
	//show_debug_message($" CArd info: {global.player_1.equipment[0].name[0]}")
	
	var _text_struct  = flexpanel_node_get_struct(_text);
	var _text_struct_2 = flexpanel_node_get_struct(_text_2);
	var _name_struct = flexpanel_node_get_struct(_name);
	var _player_equipment = get_equipment(0)
	var _equipment_len = array_length(_player_equipment)
	show_debug_message($"Equipment Length {_equipment_len}")
	var _pwr_row_ar = []
	for (n = 0; n < _equipment_len; n ++){
		var _abilities_len = array_length(global.player_list[0].equipment[n].abilities)
		for (cnt = 1; cnt < _abilities_len; cnt ++){
			var _pwr_index = flexpanel_node_get_child(_pwr_costs, cnt-1);
			var _pwr_cost = global.player_list[0].equipment[n].abilities[cnt]
			var _pwr_cost_struct = flexpanel_node_get_struct(_pwr_index)
			array_push(_pwr_row_ar,_pwr_cost_struct )
			//show_debug_message($"CAr Struct type: ** : {_pwr_cost_struct}")
			var _spr = _pwr_cost_struct.layerElements[1].elementId
			//var _txt = _pwr_cost_struct.layerElements[1].elementId	
			layer_sprite_change(_spr, get_pwr_type(_pwr_cost))
			//layer_text_text(_index,global.player_1.equipment[0].name[2])
		}
	}
	
	
	

	
	_index = _name_struct.layerElements[0].elementId
	layer_text_text(_index,global.player_1.equipment[0].name[0])
	_index = _text_struct.layerElements[0].elementId
	layer_text_text(_index,global.player_1.equipment[0].name[1])
	_index = _text_struct_2.layerElements[0].elementId
	layer_text_text(_index,global.player_1.equipment[0].name[2])
	
	
}

function get_pwr_type(pwr){
	var _pwr_type = 0
	if(pwr == TokenType.Defense){
		_pwr_type = spr_green_blank
	}else if(pwr == TokenType.Attack){
		_pwr_type = spr_red_blank
	}else{
	}
	
	return _pwr_type
}

function get_equipment(player){
	var _player_equipment_arr = global.player_list[player].equipment
	return _player_equipment_arr
}


