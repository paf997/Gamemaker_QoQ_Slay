n_participants = 3;
init_list = ds_list_create();
enemy_p1 = 8;
ds_list_add(init_list, enemy_p1);
active_turn_index = 0;
is_turn_end = false;
round_count = 1;
finished_player_count = 0;
start_round_count = 2
player = instance_find(obj_fighter_class, 0)
check_for_fighter = 0
previous_initiative = 0
player_btn_controller = instance_find(obj_rush_btn_controllor,0)


function add_and_sort_initiative(_particapant){
	if(ds_list_size(init_list) <= n_participants){
		ds_list_add(init_list, _particapant);
	}
}
initiatives = [];
next_round_particants = [];
participants = []

initiatives_as_string = ""
enemy_controller = instance_find(obj_enemy_controller,0)

function set_initiatial_initiatve(){
	if(array_length(next_round_particants) == 0){
		for(n = 0;n < array_length(enemy_controller.enemies);n++){
			show_debug_message(enemy_controller.enemies[n])
			array_push(participants,enemy_controller.enemies[n]) ///fix magic number
			array_push(initiatives,enemy_controller.enemies[n].initiative )
		}
		//update_turn_index(array_length(enemies))
	}else{
		while(array_length(next_round_particants) > 0){
			current_participant =  array_pop(next_round_particants)
			//show_debug_message(string(current_participant.name))
			if(!current_participant.is_dead ){
				array_push(participants, current_participant)
				array_push(initiatives,current_participant.initiative )
			}else{}
		}
	initiatives_as_string = initiatives
	enemies = enemy_controller.enemies;
	active_turn_index = array_length(enemies)
	}
}

function find_initiative(initiative){
	
}

function update_player_index(initiative){
	check_for_fighter = array_contains(participants, player)
	show_debug_message($"Update_player:  {initiative} :  {check_for_fighter}")
	if(!check_for_fighter){
		array_push(participants,player)
		array_push(initiatives,initiative)
	}else{
		previous_init_index = array_get_index(initiatives, previous_initiative)
		show_debug_message($"removing previous init {previous_initiative} : index = {previous_init_index} array: {initiatives} ")
		array_delete(initiatives, previous_init_index,1)
		fighter_index = array_get_index(participants,player)
		participants[fighter_index].initiative  = initiative
		array_push(initiatives,initiative)
	}
	previous_initiative = initiative
	//show_debug_message(string(participants[0].initiative))
	array_sort(participants,function(a,b){
		return a.initiative - b.initiative;
		});
	array_sort(initiatives,true)
	initiatives_as_string = initiatives
	active_turn_index = array_length(initiatives)-1
	//atb_phase_complete()
}

function update_turn_index(){
	active_turn_index--
	if(active_turn_index < 0){
		show_debug_message("Turn Over")
	}
}

function do_participant_actions(){
	enemies = enemy_controller.enemies;
	active_participant = enemies[active_turn_index]
	active_participant.enemy_attack()
	update_turn_index()
}

function remove_particiapant_from_initiative_track(){
	array_pop(initiatives)
	show_debug_message($"Pop!!  {initiatives}")
	initiatives_as_string = initiatives
	/*if(popped_participant.hp > 0){
		while(popped_participant.end_turn_phase ==1){
			popped_participant.do_actions()
		}
	}*/
	return array_pop(participants)
}

function add_to_initiative(){
	finished_player_count++
	if(finished_player_count == start_round_count){
		finished_player_count = 0;
		atb_phase_complete()
	}
}

function atb_phase_complete(){
	_display = instance_find(obj_battle_turn_display,0)
	//show_debug_message("atb function complete")
	active_turn_index = array_length(participants)-1
	participant = remove_particiapant_from_initiative_track()
	//participant_as_string =  string(participant)
	if(active_turn_index > -1 && _display.is_action_complete == true/*&& participant.rounds_completed < round_count*/){
		show_message($"{participant.name}'s turn")
		participant.reset_block();
		if(participant.name != "fighter"){
			array_push(next_round_particants,participant)
			//show_debug_message("Adding " + string(next_round_particants))
			is_finished = participant.do_actions()
			if(is_finished){
				//show_debug_message("finished ATB !!! *** !!!!")
				_display.is_action_complete = false
				_fighter = instance_find(obj_fighter_class,0)
				_player_bag = instance_find(obj_token_bag_P1,0)
				player_btn_controller.end_turn_phase--
				_player_bag.reset_battle_stats()
				_player_bag.atb_speed = player_btn_controller.base_speed
				_fighter.end_turn_phase--
				//atb_phase_complete()
			}else{}
		}else{}
	}else{
		show_message("Next Round")
		set_initiatial_initiatve()
	}
}

