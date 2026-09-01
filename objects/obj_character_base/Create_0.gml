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
auto_block = armour
block = 0
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
equipment = []
passive_block = 0;

//show_debug_message($"Where is player list{players_list.current_player_black_sum}")

//equipment_setup()



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
		block = amount
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
	player = players_list.player_list
	//show_debug_message($"base char amount : {amount} player {player}")
	for(cnt = amount; cnt > 0; cnt --){
		_index = bonus_tokens[random(array_length(bonus_tokens)-1)]
		_token = instance_create_layer(x,y, "Instances_1", _index)
		show_debug_message($"token {_token.token_value} color:{_token.token_type_as_string} ")
		if(_token.token_type == TokenType.Attack){
			red_sum += _token.token_value
		}else if(_token.token_type == TokenType.Defense){
			green_sum += _token.token_value
			show_debug_message($"green sum {green_sum} amount: {amount} cnt: {cnt} ")
			//green_abilities()  //TODO: reinstate later. This was creating a large green sum for the fighter
			//activate_p_actions()
		}else if(_token.token_type == TokenType.Agility){
			blue_sum += _token.token_value
			
		}else{
			yellow_sum += _token.token_value
		}
		//show_debug_message($"passive Actions")
		players_list.activate_actions(2,player[0])
		players_list.activate_actions(2,player[1])
		players_list.activate_actions(2,player[2])
		
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
	players  = players_list.player_list
	//show_debug_message($"equip set up {array_length(equipment)}")
	_equipment = instance_create_layer(0,0, "ATB_Scale_P1", obj_player_equipment)
	//equipment = _equipment.equipment
	for (cnt = 0; cnt < array_length(equipment);cnt++){
		//show_debug_message($"equipment len: {array_length(actions)} ---!!!!")
		_ability = instance_create_layer(x,y,"Player_card_layer",equipment[cnt])
		//show_debug_message($"players{array_length(players)}")
		_ability.player = players[p_index-1]
		//show_debug_message($"equi set up: the player = {_ability.name}")
		array_push(actions,_ability)
	}
	
	
}

function green_abilities(){
	for (cnt = 0; cnt < array_length(actions); cnt ++){
		var _ability = actions[cnt];
		//show_debug_message($"green abilites::: {_ability.name}")
		for (cnt_2 = 0; cnt_2 < array_length(_ability.abilities); cnt_2++){
			if(_ability.abilities[cnt_2] == TokenType.Defense){
			//show_debug_message($"Is green")
			}	
		}
	}
}

function activate_p_actions(){
	for(cnt = 0; cnt < array_length(actions); cnt++){
			show_debug_message($"p action {actions[cnt].name}")
			actions[cnt].do_passive_actions()

	}
}

function adjust_energy(amount){
	if (amount >  energy) {
		show_debug_message("Not enough energy")
	}else{
		energy += amount
	}
}

function calculate_energy(initiative_amount){
	energy = get_initiative()/10
}
