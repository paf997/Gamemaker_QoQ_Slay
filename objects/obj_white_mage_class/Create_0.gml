event_inherited()
hp = 8;
image_index = c_red
is_dead = false;
rounds_completed  = 0;
name = "wh_mage"
end_turn_phase = 1
armour = 1;
initiative = 0
equipment = []
defense_sum = 0
block = 1

bonus_tokens = [obj_yellow_token2]

current_player_token_sum = 0;
current_player_red_sum = 0;
current_player_green_sum = 0;
current_player_black_sum = 0;
current_player_yellow_sum = 0;
current_player_wild_sum = 0;

function deal_damage(dmg){
	_hp = hp
	if(dmg >= block){
		show_debug_message("True")
		_hp = adjust_hp(dmg-block)
	}else{
		
	}
	show_debug_message($"Block 1: {block} dmg {dmg}")
	adjust_block(dmg)
	return _hp
}

function adjust_block(amount){
	fighter = instance_find(obj_token_bag_P1,0)
	if(amount == 0){
		//block = 0
	}else{
		block -= amount
		show_debug_message($"adjust block: {block}")
		if(block < 0){
			block = 0
		}
	}
	show_debug_message($"Ajust Block 2: {block}")
	fighter.defense_sum = block
}

function reset_block(){
	fighter = instance_find(obj_token_bag_P1,0)
	fighter.defense_sum = armour
	block = armour
}

function adjust_energy(amount){
	energy += amount
}

function equipment_setup(){
	_equipment = instance_create_layer(0,0, "ATBS_Scale_P1", obj_player_equipment)
	equipment = _equipment.equipment
	array_add(equipment,obj_heavy_armour,obj_long_sword,obj_shield)
}

function get_abilities(){
	for (item = array_length(equipment); item > 0; item--){
		if(array_length(equipment[item].abilites) != 0){
		}
	}
}

function get_equipment(){
	
}


function get_current_block(){
	for (n = 0; n < array_length(equipment);n++){
		for(m = 1; m < array_length(equipment[n].abilities);m++){
			defense_sum += equipment[n].get_block_auto(current_player_green_sum, 0, "defensive")
			defense_sum += equipment[n].get_block_passive(current_player_green_sum, 0, "defensive")
			
		}
	}
}