player_card_name = "placeholder";
//card_types = [defend]
card_costs = [0,0,0] //red, green, yellow, nlue, orange, purple, black, white, aux
text_offset_x = 28;
text_offset_y = 50;
text_offset_y2 = 30;
text_offset_y3 = 10;
is_card_chosen = false;
damage = 7;
block = 0;
actions = ["attack"];
enemies = instance_find(obj_enemy_controller,0)
n_attacks = 1;
target = 0;
in_hand = false;
in_deck = true;
in_discard = false;
//discard_pile = find_instance(obj_player_controller, 0)



function calculate_card_costr(){
	for (var index = 0; index < array_length(card_costs); index++){
		if(card_costs[index] > 0){
			
		}
	}
}

function get_targets(){
	target = enemies.default_enemy()
}




