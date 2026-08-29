event_inherited()
type = equipment_type.armour
name = ["Light Armour","aBck","bck"]
abilities = [TokenType.Defense,TokenType.Defense,TokenType.Defense]
auto_type = [TokenType.Defense]
auto_trigger = 2
trigger_bonus = 1
block = 1
auto_block = 1
power_lv = 0
ability_description = [""]

function check_power_type(a,b){
	if (a == b) return true
}

function block_auto(power, power_lv, power_type){
	if(check_power_type("defense", power_type)){
	}else{
		return "incorrect type";
	}
	
	return auto_block;
}

function block_passive(
	power = player.green_sum, 
	power_lv = 1,
	power_type = TokenType.Defense){
	if(check_power_type(TokenType.Defense, power_type)){
	}else{
		//show_debug_message("passive block check")
		return "incorrect type";
	}
	
	//auto_block = 0;
	/*if(power < auto_trigger){
		player.block = block * power
		return block * power
		
	}*/
	
	player.passive_block = floor(power/2)
	/*(power % 2 == 1) ? (power * block) + (trigger_bonus * power) : (power * block);*/
	//player.adjust_block(auto_block) 
	//($"block pass light armour,  passive block = {player.passive_block} block: {player.name}")
}
function get_ability_description(index = 0){
	green_power = instance_find(obj_white_mage_class, 0)
	if(index == 1){
	ability_description[0] = $"{name[index]} {auto_block} "
	}else{
	ability_description[0] = $"+{name[index]}{block + trigger_bonus}/green"
	}
	return ability_description[0]
}



function do_auto_actions(){//start of battle
	player.block = player.armour
}

function do_passive_actions(){//once token drawn or immediate actions
	block_passive()
	show_debug_message($"Passive block. Light armour")
}