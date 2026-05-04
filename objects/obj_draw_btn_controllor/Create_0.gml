player1_btn_arr = [];
player2_btn_arr = [];
player1_chosen_draw_btn = 0;
player2_chosen_draw_btn = 0;
player1 = instance_find(obj_token_bag_P1,0);
player2 = instance_find(obj_token_bag_P2,0);
battle_phase_counter = 0;

// Controller Create Event
global.n_players = 0;
function set_up_draw_buttons(_atb_speed, _class){
	
	var atb_speed = _atb_speed;   // number of buttons to make
	var button_spacing = 32;      // space between buttons 
	if(global.n_players == 0){
		var start_x = x; 
		global.n_players++;
	}else{
		var start_x = x +196; 
	}
	// starting X coordinate
	var start_y = y;            // starting Y coordinate
	
	
	var temp_arrary = [atb_speed];
	for (var i = 0; i <= atb_speed; i++) {
	    var bx = start_x + i * button_spacing;
	    var by = start_y + 8;

	    // Assign number to button
		if(i < atb_speed){
			var btn = instance_create_layer(bx, by, "Draw_button_layer", obj_draw_button);
			btn.my_number = i + 1;
		}else{
			bx = start_x;
			by = by+32;
			var btn = instance_create_layer(bx, by, "Draw_button_layer", obj_draw_button);
			btn.my_number = "*";
			//show_message("i = " + string(i));
		}
		btn.class = _class;
		array_push(temp_arrary,btn);
	}

	/*start_x = x - 96;            // starting X coordinate
	start_y = y + 32;

	for (var i = 2; i < atb_speed; i++) {
	    var bx = start_x + i * button_spacing;
	    var by = start_y;

	    // Create the button instance
	    var btn = instance_create_layer(bx, by, "Draw_button_layer", obj_draw_button);
		
		btn.class = class;
	    // Assign number to button
	    btn.my_number = i + 1;
		
	}*/
	return temp_arrary;
}

function switch_btn(_player, _chosen_btn){
	if(_player == 1){
		if(_chosen_btn == "*"){
			player1_chosen_draw_btn.is_chosen = false;
			player1_chosen_draw_btn = player1_btn_arr[array_length(player1_btn_arr)-1];
			player1.is_phase_complete_arr[player1.atb_phase] = true;
			is_next_phase(player1);
			player1.token_draw_count = 0;
		}else{
			player1_chosen_draw_btn.is_chosen = false;
			player1_chosen_draw_btn = player1_btn_arr[_chosen_btn];
			player1.n_token_draws = player1.token_draw_count + _chosen_btn;
			player1_chosen_draw_btn.is_chosen = true;
			//player1.is_phase_complete_arr[player1.atb_phase] = true;
			//is_next_phase(player1.atb_phase,0);
			//player1.atb_phase++;
		}
		player1.isChosen = true;
	}else{
		if(_chosen_btn == "*"){
			player2_chosen_draw_btn.is_chosen = false;
			player2_chosen_draw_btn = player2_btn_arr[array_length(player1_btn_arr)-1];
			player2.is_phase_complete_arr[player2.atb_phase] = true;
			is_next_phase(player2);
			player2.token_draw_count = 0;
		}else{
			player2_chosen_draw_btn.is_chosen = false;
			player2_chosen_draw_btn = player2_btn_arr[_chosen_btn];
			player2.draw_n_tokens = player2.token_draw_count + _chosen_btn;
			player2_chosen_draw_btn.is_chosen = true;
			//player2.is_phase_complete_arr[player2.atb_phase] = true;
			//is_next_phase(player2.atb_phase,0);
			//player2.atb_phase++;
		}
		player2.isChosen = true;
	}
}

function end_player_round(_player){
	for(var i  = 0; i < 4; i++){
		_player.is_phase_complete_arr[i] = false;
	}
	_player.reset_battle_stats();
}

function is_next_phase(_player){
	//use below for global phase counter
	/*if(player1.is_phase_complete_arr[_atb_phase] == true 
	&& player2.is_phase_complete_arr[_atb_phase] == true){*/
		if(_player.atb_phase == 3){
			end_player_round(_player);
		}else{
			_player.atb_phase++;
			battle_phase_counter = _player.atb_phase;
		}
		_player.isChosen = false;
	//}
}

/*start_x = start_x + 320;
start_y = y;

for (var i = 0; i < 2; i++) {
    var bx = start_x + i * button_spacing;
    var by = start_y;

    // Create the button instance
    var btn = instance_create_layer(bx, by, "Draw_button_layer", obj_draw_button);
    // Assign number to button
    btn.my_number = i + 1;
	btn.character_type = "rogue";
}

start_x = start_x - 96;            // starting X coordinate
start_y = start_y + 32;

for (var i = 2; i < button_count; i++) {
    var bx = start_x + i * button_spacing;
    var by = start_y;

    // Create the button instance
    var btn = instance_create_layer(bx, by, "Draw_button_layer", obj_draw_button);
	show_message("You clicked button #" + string(i));
    // Assign number to button
    btn.my_number = i + 1;
	btn.character_type = "rogue";
}*/

player1_btn_arr = set_up_draw_buttons(3, "warrior");
player2_btn_arr = set_up_draw_buttons(4, "rogue");
player1_chosen_draw_btn = player1_btn_arr[3];
player2_chosen_draw_btn = player2_btn_arr[3];
