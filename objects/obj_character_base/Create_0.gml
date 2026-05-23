hp = 6;
att = 1;
dmg = 1;
target =  -1
initiative = 0
initiative_bonus = 2
image_index = c_red
is_dead = false;
rounds_completed = 0
name = "base name"
end_turn_phase = 1
actions = [0]
armour = 2
block = armour
energy = 0
bonus_tokens = []
red_sum = 0;
green_sum = 0;
blue_sum = 0;
yellow_sum = 0;
white_sum = 0;
orange_sum = 0;
black_sum = 0;
wild_sum = 0;
atb = 0
red_actions = []
players_list  = instance_find(obj_player_list,0)
player = -1
actions = []

function deal_damage(dmg){
	if(dmg > block){
		adjust_hp(dmg)
	}else{
		adjust_block(dmg)
	}
}

function adjust_hp(amount){
	hp-=amount;
	if(hp <= 0){
		visible = false;
		is_dead = true;
		show_debug_message($"Adjust hp {hp}")
	}
	show_debug_message($"Adjust hp {hp}")
	return hp
}

function adjust_block(amount){
	if(amount == 0){
		block = 0
	}else{
		block -= amount
		if(block < 0){
			block = 0
		}
	}	
}

function get_block(){
	return block
}

function reset_block(){
	block = armour
}

function get_initiative(){
	return initiative
}

function get_random_bonus_token(amount){
	for(cnt = amount; cnt > 0; cnt --){
		_index = bonus_tokens[random(array_length(bonus_tokens)-1)]
		_token = instance_create_layer(x,y, "Instances_1", _index)
		//show_message($"token {_token.token_value} ")
		if(_token.token_type == TokenType.Attack){
			red_sum += _token.token_value
		}else if(_token.token_type == TokenType.Defense){
			green_sum += _token.token_value
		}else{
			yellow_sum += _token.token_value
		}
		
	}
}

function add_colored_action(_color, _action){
	if (_color == TokenType.Attack){
		array_push(red_actions, _action)
	}
}

function do_actions(_color){
	if(_color == TokenType.Attack)
	
	for (cnt = 0; cnt < array_length(red_actions); cnt++){
	
		red_actions[cnt].do_action()
	}
}

function equipment_setup(){
	players  = player_list.player_list
	_equipment = instance_create_layer(0,0, "ATBS_Scale_P1", obj_player_equipment)
	equipment = _equipment.equipment
	for (cnt = 0; cnt < array_length(equipment);cnt++){
		_ability = instance_create(x,y,"Player_card_layer",equipment[cnt])
		_ability.player = players[p_index]
		array_add(equipment,_ability)
	}
}