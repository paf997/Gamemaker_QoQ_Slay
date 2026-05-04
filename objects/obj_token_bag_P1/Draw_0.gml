draw_self();
draw_set_color(c_black);
draw_text(x+2, y-3, "Power:" + string(atb_index+1) 
+ " Attack:" + string(attack_sum)
+ " Defense:" + string(defense_sum)
+ " Magic:" + string(magic_sum)
+ " Wild:" +  string(wild_sum)
+ " Aux:" + string(aux_sum)
+ " Bust:" + string(bust_sum)
+ " Phase:" + string(atb_phase)
+ " Attack:" + string(dmg_output)
+ " Block:" + string(atb_phase)
);

/*if(isChosen){
	draw_text(x,y + 200, "Button Test");
}*/
