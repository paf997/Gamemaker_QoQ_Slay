if(!isChosen){
	isChosen = true;
	var other_player = instance_find(obj_token_bag_P2, 0);
}

var initiative_icon = instance_find(obj_rogue_icon,0);

function isBusted(){
	return (bust_sum >= 8);
}

if(bust_sum < 8 && isChosen){
	//is_finished_actions = -is_finished_actions;
	//show_message("Button Clicked!" + string(array_length(player_bag_token_arr)));
	if(token_draw_count == 0){
		draw_n_tokens = push_begin;
	}/*else if(token_draw_count < push_begin){
		draw_n_tokens = 1;
	}else{
		draw_n_tokens = 3;
	}*/
	atb_phase++;
	while(token_draw_count <  draw_n_tokens && !isBusted()){
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
			}else if(current_token.token_type = TokenType.Defense){
				defense_sum += current_token.token_value;
			}else if(current_token.token_type = TokenType.Magic){
				magic_sum += current_token.token_value;
			}else if(current_token.token_type = TokenType.Wild){
				attack_sum += current_token.token_value;
				defense_sum += current_token.token_value;
				magic_sum += current_token.token_value;
				wild_sum += current_token.token_value;
			}else if(current_token.token_type = TokenType.Bust){
				bust_sum += current_token.token_value;
			}else{}
			
		//show_message("Bust = " + string(bust_sum));
		aux_sum = bust_sum;
		initiative_icon.initiative = atb_index + init_bonus + 1;
		initiative_icon.phase = atb_phase;
		token_draw_count++;
		}
	}

		//show_message("Butt on Clicked!" + string(atb_phase));
	/*}else if (atb_phase >= push_min && bust_sum < 8){
		show_message("Push ????");*/
	if(bust_sum >= 8){
		show_message("Busted!! -----!!!!");
		reset_battle_stats()
	}
	
function reset_battle_stats(){	
		attack_sum = 0;
		defense_sum = 0;
		magic_sum = 0;
		bust_sum = 0
		aux_sum = 0;
		magic_sum = 0;
		atb_index = -1;
	
		for(var i = array_length(drawn_tokens_arr); i > 0; i--){
			var current_token = array_pop(drawn_tokens_arr);
			current_token.visible = false;
			array_push(player_bag_token_arr,current_token);
			}
		atb_phase = 0;
		atb_speed = 5;
		token_draw_count = 0;
	}

/*if keyboard_check_pressed(ord("Z") && (atb_end_actions != atb_phase) && (!is_finished_actions)){
	atb_end_actions++;
	is_finished_actions = true;
}*/