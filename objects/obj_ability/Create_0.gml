parent = 0
players = instance_find(obj_player_list,0)
ability = {
	name:parent, //attack
	character:parent, //player 1 or enemy one
	attacks:0,
	dmg:0,
	block:0,
	armour:0,
	power_types:[],
	power_amounts:[],
	power_triggers:[],
	passives:[],
	level:0,
	targets:[],
	duration:0
}