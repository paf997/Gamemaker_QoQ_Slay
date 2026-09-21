
function button_pressed(button_pressed){

	if(isFirst){
		player_1 = instance_find(obj_token_bag_P1,0)
		base_speed = player_1.atb_speed;
		isFirst = false;
		show_debug_message("1st" + string(player_1));
	}else{}
	

	if(button_pressed == buttons[0]){
		//show_debug_message("ATB_spd = " + button_pressed.button_name)
		if(player_1.has_busted == "false"){
			player_1.atb_speed = base_speed;
		}else{
			show_message("Busted. Please End Turn")
		}
	}else if(button_pressed == buttons[1]){
		//show_debug_message("ATB speed = " + string(button_pressed.button_name))
		if(player_1.has_busted == "false"){
			player_1.atb_speed = base_speed;
		}else{
			show_message("Busted. Please End Turn")
		}
	}else{
		inititaive_track = instance_find(obj_initiative_track,0)
		
		if(global.get_main_display_state() == MainDisplayBtnState.Initiative){	
			show_message($"Please Finish Current Phase {global.get_main_display_state()}")
		}else if(global.get_main_display_state() == MainDisplayBtnState.EndRound){
			show_message($"Please Finish Current Phase {global.get_main_display_state()}")
		}else if(global.get_main_display_state() == MainDisplayBtnState.Bust){
				global.advance_battle_phase(2)
				show_message($"Please Finish Current Phase {global.get_main_display_state()}")
		}else if(global.get_main_display_state() == MainDisplayBtnState.DrawTokenPhase
		&& player_1.token_draw_count > 0){ //the 1st part
			show_debug_message(string(player_1.initiative_icon.initiative))
			fighter = instance_find(obj_fighter_class,0)
			end_turn_phase++
			fighter.end_turn_phase++
			//initiative_track.add_to_initiative()
			player_1.atb_speed = player_end_turn_button;
			//show_debug_message("end turn  " + string(button_pressed))
			//show_debug_message("end turn  " + string(player_1.atb_speed))
			//initiative_track.update_initiatives()
			//show_debug_message("player btn contrroller")
			inititaive_track.atb_phase_complete()
			end_turn_phase--
			fighter.end_turn_phase--
			player_1.reset_battle_stats()
			global.advance_battle_phase(3)
		}else{
			show_message("Marco...")
			/*
			player_1.reset_battle_stats()
			//inititaive_track.atb_phase_complete()
			//("Next Round " + string(inititaive_track.round_count))
			player_1.atb_speed = base_speed
			end_turn_phase--
			fighter.end_turn_phase--
			*/
		}
	}
}

/*(with(obj_button_rush){
	array_push(buttons,obj_button_rush)
}*/