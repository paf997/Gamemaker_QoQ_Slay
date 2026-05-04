// Draw the sprite (optional)

// Draw centered number text

draw_self();
var tx = x-6;
var ty = y-12;
draw_text(tx, ty, string(my_number));

if(is_chosen){
	image_blend = c_yellow;
	//draw_text(tx-36, ty, "is chosen "  + string(is_chosen));
}else{
	image_blend = c_blue;
}





	
	




