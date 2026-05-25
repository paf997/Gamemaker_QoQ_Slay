event_inherited()
type = equipment_type.weapon
name = ["Rod","attack_auto"]
abilities = [TokenType.Attack,TokenType.Attack]
dmg = 1;
bonus_dmg = 0
auto_type = [TokenType.Attack];
auto_trigger = 2
block = 0
power_lv = 1
ability_description = [""]
dmg_sum = 0

function check_power_type(a,b){
	if (a == b) return true
}

function attack_auto(
	power = player.red_sum + player.yellow_sum,
	power_lv = 0,
	power_type = TokenType.Attack){
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
	player.dmg = (power * dmg)
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
		ability_description[0] = $"+{dmg} / 1 red"
	}
	return ability_description[0]
}

function block_auto(power, power_lv, power_type){
	return 0
}

function block_passive(power, power_lv, power_type){
	return 0
}

function get_damage(r_power, y_power, _level = 1){
	
	limit = r_power > _level ? r_power : _level
	dmg_sum = limit * (r_power/2)
	limit = y_power > _level ? (y_power/2) : _level
	dmg_sum += g_power * limit
	
	return dmg_sum

}

function do_actions(){
	attack_auto()
}
