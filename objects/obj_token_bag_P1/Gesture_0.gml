if(!isChosen){
	isChosen = true;
	var other_player = instance_find(obj_token_bag_P2, 0);
}


if(token_draw_count == 0){
	while(bust_sum < stop_draw_max && bust_sum < 7){
		draw_token_and_add_to_initiative_track()
	}
}else{
	if(atb_speed == -99){
		is_turn_end = true;
		reset_battle_stats();
	}else if(bust_sum < 8){
		draw_token_and_add_to_initiative_track()
	}else{
		show_message("Busted. Please end Turn")
		//reset_battle_stats();
		}	
		
	}


function draw_token_and_add_to_initiative_track(){

	//is_finished_actions = -is_finished_actions;
	//show_message("Button Clicked!" + string(atb_speed));
			token_draw_count++;

			var random_index = irandom(array_length(player_bag_token_arr)-1);
			var current_token = player_bag_token_arr[random_index];
			array_delete(player_bag_token_arr,random_index,1);
			current_token.visible = true;
			array_push(drawn_tokens_arr, current_token);
			var current_value = current_token.token_value;
			atb_index = atb_index + current_value;
			var current_atb = atb_arr[atb_index];
			current_token.x  = current_atb.x;
			current_token.y  = current_atb.y+4;
	
			if(current_token.token_type = TokenType.Attack){
					attack_sum += current_token.token_value;
					player_list.player_list[0].current_player_red_sum = attack_sum
				}else if(current_token.token_type = TokenType.Defense){
					current_player_green_sum += current_token.token_value;
					_player.current_player_green_sum = current_player_green_sum
					show_debug_message($"Defense  {_player.current_player_green_sum}")
				}else if(current_token.token_type = TokenType.Magic){
					magic_sum += current_token.token_value;
					player_list.player_list[0].current_player_yellow_sum = magic_sum
				}else if(current_token.token_type = TokenType.Wild){
					wild_sum += current_token.token_value;
					player_list.player_list[0].current_player_red_sum = wild_sum
				}else if(current_token.token_type = TokenType.Bust){
					bust_sum += current_token.token_value;
					player_list.player_list[0].adjust_energy(current_token.token_value)
					energy = player_list.player_list[0].energy
				}else{}	
		//show_message("Wild" + string(wild_sum));
			aux_sum = bust_sum;
			initiative_icon.initiative = atb_index + init_bonus + 1;
			player_list.player_list[0].initiative = initiative_icon.initiative
			initiative_icon.phase = atb_phase;
	
		//atb_phase++;
		//energy--;
		//atb_speed = (bust_sum < 8) ?  1 : 0;// use to switch to 1 draw
		//show_message("Button Clicked!" + string(atb_phase));
		//show_message("att sum == " + string(attack_sum));
		dmg_output = getDamage();
		if(bust_sum > 7)	{
			show_debug_message("Busted!!!!")
			has_busted = true
			is_turn_end = true;
		}else{
			stop_draw_max++;
		}
		/*if(initiative_icon.initiative > 5 && energy_gain < 1){
			energy++
			energy_gain++
			}
		if (initiative_icon.initiative > 10 && energy_gain < 2){
			energy++
			energy_gain++
			}
		if (initiative_icon.initiative > 15 && energy_gain < 3){
			energy++
			energy_gain++
			}*/
			//reset_battle_stats()
			update_initiatives()
}

function update_initiatives(){
	//show_debug_message("update initiatives")
	//_player_controller.initiative_track.update_player_index(initiative_icon.initiative)
	initiative_track.update_player_index(initiative_icon.initiative)
}

/*if keyboard_check_pressed(ord("Z") && (atb_end_actions != atb_phase) && (!is_finished_actions)){
	atb_end_actions++;
	is_finished_actions = true;
}*/