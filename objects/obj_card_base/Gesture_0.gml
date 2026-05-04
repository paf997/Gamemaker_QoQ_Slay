is_card_chosen = !(is_card_chosen);
//show_debug_message("Card Chosen")

if(is_card_chosen){
	highlight_chosen_card();
	get_actions();
}

function highlight_chosen_card(){
	
}

function get_actions(){
	action = actions[0]
	if(action == "attack"){
		for(n = 0; n < n_attacks; n++){
			target = enemies.target_enemy()
			show_debug_message("Target == " + string(target))
			target.deal_damage(damage)
			target.adjust_block(0)
			//show_debug_message("adjusted hp to default target")
			array_pop(actions)
		}
	}else if(action == "defend"){
		block += block;
	}
	
	if(array_length(actions) == 0){
		in_hand = false;
		in_discard = true;
		//array_push(discard_pile.discard_pile,)
		visible = false;
	}
}

