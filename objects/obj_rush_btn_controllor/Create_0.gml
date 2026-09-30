/*rush_buttons_array = instance_find(object_button_rush,3 )
show_debug_message(string(rush_buttons_array))*/
player_end_turn_button = -99
energy = 0;
end_turn_phase = 1


btn_display_close = -1
o_buttons = [obj_btn_display_close, obj_btn_display_confirm, obj_btn_display_next]
buttons = ["Close Display"]
isFirst = true;
button_spacing = 40;
for (n = 2; n < array_length(o_buttons); n++){//todo change n back to "0" for multi-player. Also, remove comment bwlow to fix spacing
	button = instance_create_layer(x + (button_spacing  * n), y + button_spacing, "InitiativeTrack", o_buttons[n] )
	button.button_name = buttons[0];
	//show_message($" The main button {button.button_name}")
	//btn_display_close = button
}

player_1_buttons = [o_buttons[0]]
//player_2_buttons = [buttons[3],buttons[4],buttons[5]]

player_1 = instance_find(obj_token_bag_P1,0)
base_speed = player_1.atb_speed;
player_2 = instance_find(obj_token_bag_P2,0)

player_1_icon = instance_find(obj_fighter_icon, 0);





