player_cards = []
card_spacing = 96
actions = []
discard_pile = [];

for (n = 0; n < 5; n++){
	player_card = instance_create_layer(x + (card_spacing * n), y, 
		"Player_card_layer", obj_card_base)
	array_push(player_cards,player_card)
}

function check_cards(){
}

function get_actions(){
	action = actions[0]
	if(actions == "attack"){
		for(n = 0; n < n_attacks; n++){
			
		}
	}else if(action == "defend"){
	}
}


/*with(obj_card_defend){
	array_push(player_cards,obj_card_defend)
}
show_debug_message(string(array_length(player_cards)))