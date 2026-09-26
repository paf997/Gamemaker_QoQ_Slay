draw_self()
/*draw_text(x-6, y - 20, string(hp) 
	+ "/" + string(block) + "/" + string(att) + "/" + string(dmg))*/

if(is_target){
	draw_set_colour(c_red)
	draw_set_alpha(.5)
	draw_circle(x+32,y+32,48,false)
}