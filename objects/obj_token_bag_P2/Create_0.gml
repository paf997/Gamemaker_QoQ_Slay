isChosen = false;
hover = false;
clicked = false;

randomize();

init_bonus = 2;
current_player_token_sum = 0;
current_player_red_sum = 0;
current_player_green_sum = 0;
current_player_black_sum = 0;
current_player_yellow_sum = 0;
current_player_wild_sum = 0;
player_atb_counter = 0;
atb_speed = 4;
push_begin = atb_speed + 3;
atb_phase = 0;
atb_end_actions = 0;
is_finished_actions = true;
is_phase_complete_arr = [false, false, false, false];
token_draw_count = 0;
draw_n_tokens = push_begin;
token_white_arr = [];
token_red_arr = [];
token_green_arr = [];
token_black_arr = [];
token_wild_arr = [];

player_starting_tokens = [];

player_bag_token_arr = [];

 if (!layer_exists("ATB_Scale_P2")) {
	layer_create(0, "ATB_Scale_P2"); // Create layer at depth 0 if it doesn't exist
}

function get_array_sum(_array){
	sum = 0;
	for(cnt = 0; cnt < array_length(_array); cnt++){
		sum += _array[cnt];
	}
	return sum;
}

for (var i = 0; i < 4 ; i++){
	new_instance = instance_create_layer(0, 0,  "ATB_Scale_P2", obj_white_token);
	array_push(player_bag_token_arr, new_instance);
	array_push(token_white_arr,1);
	show_debug_message("Newly created instance ID: " + string(new_instance));
}

new_instance = instance_create_layer(0, 0,"ATB_Scale_P2",  obj_white_token2);
array_push(player_bag_token_arr, new_instance);
array_push(token_white_arr,2);

new_instance = instance_create_layer(0, 0,"ATB_Scale_P2",  obj_white_token2);
array_push(player_bag_token_arr, new_instance);
array_push(token_white_arr,2);

new_instance = instance_create_layer(0,0,"ATB_Scale_P2", obj_white_token3);
array_push(player_bag_token_arr, new_instance);
array_push(token_white_arr,3);

new_instance = instance_create_layer(0,0,"ATB_Scale_P2", obj_red_token1);
array_push(player_bag_token_arr, new_instance);
array_push(token_red_arr,1);

new_instance = instance_create_layer(0,0,"ATB_Scale_P2", obj_red_token1);
array_push(player_bag_token_arr, new_instance);
array_push(token_red_arr,1);

new_instance = instance_create_layer(0,0,"ATB_Scale_P2", obj_green_token1);
array_push(player_bag_token_arr, new_instance);
array_push(token_green_arr,1);

new_instance = instance_create_layer(0,0,"ATB_Scale_P2", obj_green_token1);
array_push(player_bag_token_arr, new_instance);
array_push(token_green_arr,1);

new_instance = instance_create_layer(0,0,"ATB_Scale_P2", obj_wild_token1);
array_push(player_bag_token_arr, new_instance);
array_push(token_wild_arr,1);

new_instance = instance_create_layer(0,0,"ATB_Scale_P2", obj_black_token);
array_push(player_bag_token_arr, new_instance);
array_push(token_black_arr,1);
	
drawn_tokens_arr = []; 
	
array_shuffle(player_bag_token_arr);

var atb_n_spaces = 30;
var num_instances = instance_number(obj_atb_spot); // Replace obj_Enemy with your object
atb_arr = array_create(atb_n_spaces); // Initialize array with correct size

for (var i = atb_n_spaces; i < num_instances; ++i) {
	atb_arr[i-atb_n_spaces] = instance_find(obj_atb_spot, i); // Replace obj_Enemy
}

starting_bag_sum_white = get_array_sum(token_white_arr);
starting_token_white = array_length(token_white_arr);
starting_bag_sum_red = get_array_sum(token_red_arr);
starting_token_red = array_length(token_red_arr);
starting_bag_sum_green = get_array_sum(token_green_arr);
starting_token_green = array_length(token_green_arr);
starting_bag_sum_wild = get_array_sum(token_wild_arr);
starting_token_wild = array_length(token_wild_arr);
starting_bag_sum_black = get_array_sum(token_black_arr);
starting_token_black = array_length(token_black_arr);

atb_index = -1;

wild_sum = 0;
bust_sum = 0;
attack_sum = 0;
defense_sum = 0;
magic_sum = 0;
aux_sum = 0;

function getDamage(){
	
	return (attack_sum * 2);
}

function long_sword(red, green, level){
	limit = level/2;
	damage = (limit <= red) ? 5 * limit : 5 * red;
}


	
