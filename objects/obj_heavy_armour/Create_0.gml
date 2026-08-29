
event_inherited()
type = equipment_type.armour
name = ["Heavy Armour","aBck","bck"]
abilities = [TokenType.Defense,TokenType.Defense,TokenType.Defense]
auto_type = [TokenType.Defense]
auto_trigger = 1
trigger_bonus = 1
block = 0
auto_block = 3
power_lv = 0
ability_description = [""]
test_cnt = 0
passive_block = 0

function check_power_type(a,b){
	if (a == b) return true
}

function block_auto(){
	
	player.block += auto_block;
}

function block_passive(

	power = player.green_sum,
	power_lv = 1, 
	power_type = TokenType.Defense)
	{
		/*if(check_power_type(TokenType.Defense, power_type)){
		}else{
			return "incorrect type";
		}*/
	
	/*passive_block = 0;
	if(power < auto_trigger){
		show_debug_message($"not enough green power")
		return block * power
		
	}*/
	
	passive_block = power
	if(passive_block > 5){
		passive_block = 5
	}
	player.passive_block = passive_block;
	
	//show_debug_message($"block pass heavy armour,  passive block = {player.passive_block} block: {player.name}")
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

function do_actions(){
	//block_passive()
}


function do_auto_actions(){//start of battle
	player.block = player.armour
}

function do_passive_actions(){//once token drawn or immediate actions
	block_passive()
}