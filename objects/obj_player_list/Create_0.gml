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
	while(n > 0){
		_player = instance_create_layer(x,y,"Instances_1", class_list[n-1])
		n--
		array_push(player_list, _player)
		show_debug_message($"in PL : {player_list}")
		
		_player.equipment_setup()
	}
	bag._player = player_list[0]
	bag._player2 = player_list[1]
	bag._player3 = player_list[2]
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
show_debug_message($"Testing create classes  { get_player_list()}")

function activate_actions(_type , _player ){
	show_debug_message($"{array_length(player_list[0].equipment)} ")
	for(cnt = 0; cnt < array_length(_player.equipment); cnt++){
		if(_type == 1){
			_player.equipment[cnt].do_auto_actions()
		}else if(_type == 2){
			show_debug_message($"{_player} ")
			_player.equipment[cnt].do_passive_actions()
		}else if(_type == 3){
			_player.equipment[cnt].do_actions()
		}else{}
	}
	
}