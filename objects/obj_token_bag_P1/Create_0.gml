isChosen = false;

randomize();

player1_class_tokens = 0;
player2_class_tokens = 0;
player3_class_tokens = 0;

initiative_icon = instance_find(obj_fighter_icon,0);
initiative_track = instance_find(obj_initiative_track, 0)
_player_controller = instance_find(obj_rush_btn_controllor,0)
_player = instance_find(obj_fighter_class,0)
initiative_icon.initiative = 0;
stop_draw_max = 5
init_bonus = -2;
current_player_token_sum = 0;
current_player_red_sum = 0;
current_player_green_sum = 0;
current_player_black_sum = 0;
current_player_yellow_sum = 0;
current_player_wild_sum = 0;
player_atb_counter = 0;
max_speed = 3;
atb_speed = 3;
atb_phase = 0;
atb_end_actions = 0;
push_begin = atb_speed + 3;
draw_n_tokens = push_begin;
is_finished_actions = true;
is_phase_complete_arr = [false, false, false, false];
token_draw_count = 0;
dmg_output = 0;
is_turn_end = false;
has_busted = false;

player_starting_tokens = [];

player_bag_token_arr = [];

 if (!layer_exists("Instances_1")) {
	layer_create(0, "Instances_1"); // Create layer at depth 0 if it doesn't exist
}

for (var i = 0; i < 4 ; i++){
	new_instance = instance_create_layer(0, 0,  "Instances_1", obj_white_token);
	array_push(player_bag_token_arr, new_instance);
	show_debug_message("Newly created instance ID: " + string(new_instance));
}

new_instance = instance_create_layer(0, 0,"Instances_1",  obj_white_token2);
array_push(player_bag_token_arr, new_instance);

new_instance = instance_create_layer(0, 0,"Instances_1",  obj_white_token2);
array_push(player_bag_token_arr, new_instance);

new_instance = instance_create_layer(0,0,"Instances_1", obj_white_token3);
array_push(player_bag_token_arr, new_instance);

/*new_instance = instance_create_layer(0,0,"Instances_1", obj_red_token1);
array_push(player_bag_token_arr, new_instance);

new_instance = instance_create_layer(0,0,"Instances_1", obj_red_token2);
array_push(player_bag_token_arr, new_instance);

new_instance = instance_create_layer(0,0,"Instances_1", obj_green_token1);
array_push(player_bag_token_arr, new_instance);

new_instance = instance_create_layer(0,0,"Instances_1", obj_green_token1);
array_push(player_bag_token_arr, new_instance);

new_instance = instance_create_layer(0,0,"Instances_1", obj_wild_token1);
array_push(player_bag_token_arr, new_instance);*/

new_instance = instance_create_layer(0,0,"Instances_1", obj_fighter_token1);
array_push(player_bag_token_arr, new_instance);
new_instance = instance_create_layer(0,0,"Instances_1", obj_fighter_token1);
array_push(player_bag_token_arr, new_instance);
new_instance = instance_create_layer(0,0,"Instances_1", obj_rogue_token1);
array_push(player_bag_token_arr, new_instance);
new_instance = instance_create_layer(0,0,"Instances_1", obj_rogue_token1);
array_push(player_bag_token_arr, new_instance);
new_instance = instance_create_layer(0,0,"Instances_1", obj_wmage_token1);
array_push(player_bag_token_arr, new_instance);
new_instance = instance_create_layer(0,0,"Instances_1", obj_wmage_token1);
array_push(player_bag_token_arr, new_instance);

new_instance = instance_create_layer(0,0,"Instances_1", obj_black_token);
array_push(player_bag_token_arr, new_instance);
	
drawn_tokens_arr = []; 
	
array_shuffle(player_bag_token_arr);

var atb_n_spaces = 30;
var num_instances = instance_number(obj_atb_spot); // Replace obj_Enemy with your object
atb_arr = array_create(atb_n_spaces); // Initialize array with correct size

for (var i = 0; i < num_instances; ++i) {
	atb_arr[i] = instance_find(obj_atb_spot, i); // Replace obj_Enemy
}

atb_index = -1;

enum TokenType {
	Attack,
	Defense,
	Magic,
	Wild,
	Aux,
	Bust,
	Fighter,
	WMage,
	Rogue
}

wild_sum = 0;
bust_sum = 0;
attack_sum = 0;
defense_sum = 0;
magic_sum = 0;
aux_sum = 0;
energy_gain = 0;
player_list = instance_find(obj_player_list,0)
energy = 0

function getDamage(){
	
	if (attack_sum % 2 == 1){ 
		return ((attack_sum -1)/2) * 4 + 1;
	} else {
		return ((attack_sum /2)) * 4;
	}
}

function reset_battle_stats(){	
		run_engine()
		attack_sum = 0;
		//defense_sum = 0;
		bust_sum = 0
		aux_sum = 0;
		magic_sum = 0;
		atb_index = -1;
		atb_phase = 0;
		//show_debug_message("drawn_token_arr: " + string(array_length(drawn_tokens_arr)))
	
		for(var i = array_length(drawn_tokens_arr); i > 0; i--){
			//show_debug_message("I: " +string(i))
			var current_token = array_pop(drawn_tokens_arr);
			current_token.visible = false;
			array_push(player_bag_token_arr,current_token);
			}
		atb_phase = 0;
		energy = 0;
		energy_gain = 0;
		is_turn_end = false;
		has_busted = false;
		stop_draw_max = 5;
		token_draw_count = 0;
		dmg_output = 0;
	}
	
function run_engine(){
	enemies = instance_find(obj_enemy_controller,0)
	target = enemies.target_enemy()
	target.adjust_hp(dmg_output)
}









	
