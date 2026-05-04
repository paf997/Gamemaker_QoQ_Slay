type = equipment_type.armour
name = ["Heavy Armour","aBck","bck"]
abilities = [TokenType.Defense,TokenType.Defense,TokenType.Defense]
auto_type = [TokenType.Defense]
auto_trigger = 2
trigger_bonus = 1
block = 2
auto_block = 3
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

function block_passive(power, power_lv, power_type){
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
	green_power = instance_find(obj_fighter_class, 0)
	if(index == 1){
	ability_description[0] = $"{name[index]} {auto_block} "
	}else{
	ability_description[0] = $"+{name[index]}{block + trigger_bonus}/green"
	}
	return ability_description[0]
}
