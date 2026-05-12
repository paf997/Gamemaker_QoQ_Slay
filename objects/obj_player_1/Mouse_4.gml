

var _hp = 10;
var _def = 3;
var _phase = 0;
var stats_message = "hp: " + string(_hp) + "def: " + string(_def);
// Check if the mouse is over the instance
if (position_meeting(mouse_x, mouse_y, id)) {
    // If it is, perform an action. For example, change a variable:
    //selected = !selected;
	if(is_active){
		image_blend = c_green;
		//create player action gui
		create_buttons(x+ _player_action_gui_x1, x + _player_action_gui_x2 , 
		y + _player_action_gui_y1, y + _player_action_gui_y2,
		c_dkgray,c_gray, c_grey, c_dkgray, c_green, c_red, "Draw Tokens", 0);
		
		//create player stats gui
		create_buttons(x+_player_stat_gui_x1, x+_player_stat_gui_x2 , 
		y + _player_stat_gui_y1, y + _player_stat_gui_y2,
		c_dkgray,c_dkgray, c_dkgrey, c_dkgray, c_green, c_red, stats_message, 0);
		
	}else{
		image_blend = c_white;
		with(o_gui_btn){
			instance_destroy();
		}
	}

	is_active = !is_active;

    // Or move to another room:
    // room_goto(room_name);
}

var _character_instance = instance_place(x, y, obj_player_1);
if (_character_instance != noone) {
	with (obj_character_stats_pop_up) {
        
     }
}
