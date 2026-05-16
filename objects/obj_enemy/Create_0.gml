event_inherited()
hp = 10;
att = 2;
dmg = 2;
target =  -1
initiative = 8;
image_index = c_red
is_dead = false;
rounds_completed = 0
name = "goblin"
end_turn_phase = 1
actions = [0]
actions_list = ["attck","defend "]
armour = 2
display = instance_find(obj_battle_turn_display,0)

function enemy_attack(){
	_temp_msg = "";
	for (n = 0; n < att; n++){
		player_controller = instance_find(obj_enemy_controller,0)
		target = player_controller.random_player_target()
		target_block = target.block
		show_debug_message($"N:{n}")
		_target_hp = target.deal_damage(dmg)
		_temp_msg = ("Goblin Attack " + string(dmg) + " - " +
		string(target_block) + " = " + string(dmg-target_block) 
		+ " target HP: " + string(_target_hp) + "\n")
		display._messege += _temp_msg
	}
}

function do_actions(){
	for (n = array_length(actions); n > 0; n--){
		show_debug_message($"N: {n-1}")
		if(actions[n-1] == 0){
			//show_debug_message($"do action{n-1}")
			enemy_attack()
			show_message("Goblin's Turn")
		}else{//actions[1]
			show_message("Goblin Defend")
			enemy_defend()
		}
		return true;
	}
	end_turn_phase = 2;
	rounds_completed++
}

function get_random_action(){
	return random(array_length(actions_list))
}

function enemy_defend(){
	armour = 4
	actions[0] = 1
}

