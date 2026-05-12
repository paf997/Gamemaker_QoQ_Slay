//Hover
if device_mouse_x_to_gui(0) >= _x1 && device_mouse_x_to_gui(0) < _x2
&& device_mouse_y_to_gui(0) >= _y1 && device_mouse_y_to_gui(0) < _y2{
	 _color1 = _hover_color;
	 _color4 = _hover_color;
	 
}else{
	 _color1 = _previous_color;
	 _color4 = _previous_color;
}

if point_in_rectangle(mouse_x, mouse_y, _x1, _y1, _x1, _y2) 
	&& mouse_check_button_pressed(mb_left){
	//do later
	}
	