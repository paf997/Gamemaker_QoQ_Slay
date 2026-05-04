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
armour = 2

function enemy_attack(){
	for (n = 0; n < att; n++){
		player_controller = instance_find(obj_enemy_controller,0)
		target = player_controller.random_player_target()
		target_block = target.block
		target.deal_damage(dmg)
		show_message("Goblin Attack " + string(dmg) + " - " +
		string(target_block) + " = " + string(target_block - dmg) 
		+ " target HP: " + string(target.hp))
	}
}

function do_actions(){
	for (n = array_length(actions); n > 0; n--){
		if(actions[n-1] == 0){
			enemy_attack()
			show_message("Goblin's Turn")
		}
		return true;
	}
	end_turn_phase = 2;
	rounds_completed++
}

