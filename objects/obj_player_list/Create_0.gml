class_list = [obj_fighter_class,obj_rogue_class,obj_fighter_class]
player_list = [instance_find(obj_fighter_class,0),
				instance_find(obj_rogue_class,0),
				instance_find(obj_white_mage_class,0)]

current_player_token_sum = 0;
current_player_red_sum = 0;
current_player_green_sum = 0;
current_player_black_sum = 0;
current_player_yellow_sum = 0;
current_player_wild_sum = 0;

//create_player_classes()


function create_player_classes(){
	n = array_length(class_list)
	while(n > 0){
		_player = instance_create_layer(x,y,"Instances_1", class_list[n-1])
		n--
		array_push(player_list, _player)
	}
}
function get_player_list(){
	return player_list
}

//create_player_classes()
show_debug_message($"Testing create classes  { get_player_list()}")