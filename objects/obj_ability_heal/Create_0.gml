parent = 0
ability = {
	name:"heal", //attack
	character:"w_mage", //player 1 or enemy one
	attacks:0,
	dmg:0,
	block:0,
	armour:0,
	adjustment:3,
	power_types:["magic"],
	power_amounts:[1,2,3],
	power_triggers:[1,2,3], 
	passives:[],
	level:0,
	targets:instance_find(obj_player_list,0),
	duration:0,
}

function ability_effect(power){
	for (n = power; n > 0; n++){
		targets.player_list[n-1].adjust_hp(adjustment)
	}
}