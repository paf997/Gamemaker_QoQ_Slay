/*rush_buttons_array = instance_find(object_button_rush,3 )
show_debug_message(string(rush_buttons_array))*/
player_end_turn_button = -99
energy = 0;
end_turn_phase = 1

buttons = ["6", "1", "X"]
isFirst = true;
button_spacing = 40;
for (n = 0; n < array_length(buttons); n++){
	button = instance_create_layer(x + button_spacing + (button_spacing * n), y + button_spacing, "InitiativeTrack", obj_button_rush )
	button.button_name = buttons[n];
}

player_1_buttons = [buttons[0],buttons[1],buttons[2]]
//player_2_buttons = [buttons[3],buttons[4],buttons[5]]

player_1 = instance_find(obj_token_bag_P1,0)
base_speed = player_1.atb_speed;
player_2 = instance_find(obj_token_bag_P2,0)

player_1_icon = instance_find(obj_fighter_icon, 0);





