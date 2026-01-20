///// funtion create_buttons(x1,x2,y1,y2, color1,color2, color3, color4,hover_color, click_color, text, funct)
function create_buttons(){
	with(instance_create_layer(0,0,"Instances", o_gui_btn)){
		_x1 = argument[0];
		_x2 = argument[1];
		_y1 = argument[2];
		_y2 = argument[3];
		_color1 = argument[4];
		_color2 = argument[5];
		_color3 = argument[6];
		_color4 = argument[7];
		_hover_color = argument[8];
		_click_color = argument[9]; 
		_text = argument[10];
		_funct = argument[11];
		
		_previous_color = _color1;
		_txtx = _x1 - ((_x2 - _x1)/2);
		_tyty = _y1 - ((_y2 - _y1)/2);
	}
}

function hide_player_gui(){
	with(o_gui_btn){
		instance_destroy();
	}
}

