class_list = [obj_fighter_class,obj_rogue_class,obj_white_mage_class]
player_list = []
bag = instance_find(obj_token_bag_P1,0)
current_player_token_sum = 0;
current_player_red_sum = 0;
current_player_green_sum = 0;
current_player_black_sum = 0;
current_player_yellow_sum = 0;
current_player_wild_sum = 0;

create_player_classes()


function create_player_classes(){
	n = array_length(class_list)
	cnt = 0
	while(cnt < n){
		_player = instance_create_layer(x,y,"Instances_1", class_list[cnt])
		cnt++
		array_push(player_list, _player)
		show_debug_message($"in PL : {player_list}. Player equipments {_player.equipment[0]}")
		
		_player.equipment_setup()
	}
	global.player_1 = player_list[0]
	global.player_2 = player_list[1]
	global.player_3 = player_list[2]
}
function get_player_list(){
	return player_list
}

function reset_stats(_player){
	if (_player - 1 < 3){//is single player
		player_list[_player-1].red_sum = 0;
		player_list[_player-1].green_sum = 0;
		player_list[_player-1].yellow_sum = 0;	
		player_list[_player-1].initiative = 0;
	}else{ //reset all players
		reset_stats(player_list[1])
		reset_stats(player_list[2])
		reset_stats(player_list[3])
	}
}

//create_player_classes()
//show_debug_message($"Testing create classes  { get_player_list()}")

function activate_actions(_type , _player ){
	//show_debug_message($" Player List : player: {_player.name} {array_length(_player.actions)} ")
	for(cnt = 0; cnt < array_length(_player.actions); cnt++){
		if(_type == 1){
			//player_list[_player]
			_player.actions[cnt].do_auto_actions()
		}else if(_type == 2){
			//show_debug_message($" Player List {_player.name} ")
			//player_list[_player]
			_player.actions[cnt].do_passive_actions()
		}else if(_type == 3){
			//player_list[_player]
			_player.actions[cnt].do_actions()
		}else{}
	}
	
}

function activate_p_actions(){
	//show_debug_message($" Player List : player: {_player.name} {array_length(_player.actions)} ")
	for(cnt = 0; cnt < array_length(actions); cnt++){
			//show_debug_message($" Player List {_player.name} ")
			//player_list[_player]
			actions[cnt].do_passive_actions()

	}
}