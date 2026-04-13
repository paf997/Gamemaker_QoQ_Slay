with(obj_player_1){
	
	
	draw_set_colour(c_white);
	draw_rectangle(obj_player_1.x-12, obj_player_1.y-28, obj_player_1.x+12, obj_player_1.y-12, false);	
	
	draw_set_font(f_test_1);
	draw_set_colour(c_black)
	draw_text(obj_player_1.x-10, obj_player_1.y-25, "Test");
}
