type = equipment_type.armour
name = ["Medium Armour","aBck","bck"]
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

function block_auto(
	power = player.green_sum, 
	power_lv = 0, 
	power_type = TokenType.Defense){
	if(check_power_type("defense", power_type)){
	}else{
		return "incorrect type";
	}
	
	return auto_block;
}

function block_passive	(
	power = player.green_sum, 
	power_lv = 0, 
	power_type = TokenType.Defense){
	if(check_power_type("defense", power_type)){
	}else{
		return "incorrect type";
	}
	
	auto_block = 0;
	if(power < auto_trigger){
		return block * power
	}
	
	auto_block += (power % 2 == 1) ? 
	(power * block) + (trigger_bonus * power) : (power * block);
}
function get_ability_description(index = 0){
	green_power = instance_find(obj_rogue_class, 0)
	if(index == 1){
	ability_description[0] = $"{name[index]} {auto_block} "
	}else{
	ability_description[0] = $"+{name[index]}{block + trigger_bonus}/green"
	}
	return ability_description[0]
}

function do_auto_actions(){
	player.block = player.armour
}

function do_passive_actions(){
	block_passive()
}