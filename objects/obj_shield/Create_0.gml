event_inherited()
type = equipment_type.armour
power_type = [TokenType.Defense,TokenType.Attack]
name = ["Shield","block_passive"]
abilities = [TokenType.Defense, TokenType.Defense]
auto_type = [TokenType.Defense]
auto_trigger = 1
trigger_bonus = 0
block = 1
auto_block = 0
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
	power_lv = 0,
	power_type = TokenType.Defense){
	/*if(check_power_type("defense", power_type)){
	}else{
		return "incorrect type";
	}*/
	
	//player.block = (power * block)
	//return (power * block)
}

function get_ability_description(index = 0){
	ability_description[0] = $"+ {block} / green"
	return ability_description[0]
}

function do_passive_actions(){
	block_passive()
}
