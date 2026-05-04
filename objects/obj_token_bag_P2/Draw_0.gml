draw_self();
draw_set_color(c_black);
draw_text(x+2,y-3, "Power:" + string(atb_index+1) 
+ " Attack:" + string(attack_sum) + string(token_red_arr) +  ")"
+ " Defense:" + string(defense_sum) + string(token_green_arr) +  ")"
+ " Magic:" + string(magic_sum) + string(token_red_arr) +  ")"
+ " Wild:" +  string(wild_sum) + string(token_wild_arr) +  ")"
);

draw_text(x+2,y+148,
+ " Aux:" + string(aux_sum) + string(token_black_arr) +  ")"
+ " Bust:" + string(bust_sum) + string(token_white_arr) +  ")"
+ " Phase:" + string(atb_phase)
+ " Damage:" + string(getDamage())
);

