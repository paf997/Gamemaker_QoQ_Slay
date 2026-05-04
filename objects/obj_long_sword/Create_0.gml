type = equipment_type.weapon
name = ["Long Sword","attack_auto","block_conditional"]
abilities = [TokenType.Attack,TokenType.Attack,TokenType.Defense]
dmg = 2;
bonus_dmg = 1
auto_type = [TokenType.Attack];
auto_trigger = 2
block = 1
power_lv = 1
ability_description = [""]

function check_power_type(a,b){
	if (a == b) return true
}

function attack_auto(power,power_lv, power_type){
	if(check_power_type("attack", power_type)){
	}else{
		return "incorrect type";
	}
	
	auto_dmg = 0;
	if(power < auto_trigger || power_lv < 1){
		return dmg
	}
	
	while(power_lv < 1){
		auto_dmg += (power % 2 == 1) ? 
		power * dmg + dmg + trigger_bonus : power * dmg + trigger_bonus;
		power_lv--
	}
	return (dmg * power)
}

function block_conditional(power, power_type){
	if(check_power_type("defense", power_type)){
	}else{
		return "Incorrect Type";
	}
	 return block;
}

function get_ability_description(index = 0){
	if(index == 1){
		ability_description[0] = $"+{block} / 1 green"
	}else{
		ability_description[0] = $"+{dmg} / 2 red"
	}
	return ability_description[0]
}

function block_auto(power, power_lv, power_type){
	return 0
}

function block_passive(power, power_lv, power_type){
	return 0
}

