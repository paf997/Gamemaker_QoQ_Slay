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
+ " HP: " + string(global.player_1.hp)
);

/*if(isChosen){
	draw_text(x,y + 200, "Button Test");
}*/

draw_text(x+128, y + 128, $" Player 1 red {global.player_1.red_sum} green {global.player_1.green_sum} yellow {global.player_1.yellow_sum} atb{global.player_1.initiative} block:{global.player_1.block} dmg:{global.player_1.dmg}")
draw_text(x+128, y + 160, $" Player 2 red {global.player_2.red_sum} green {global.player_2.green_sum} yellow {global.player_2.yellow_sum} atb{global.player_2.initiative} block:{global.player_2.block} dmg:{global.player_2.dmg}")
draw_text(x+128, y + 192, $" Player 3 red {global.player_3.red_sum} green {global.player_3.green_sum} yellow {global.player_3.yellow_sum} atb{global.player_3.initiative} block:{global.player_3.block} dmg:{global.player_3.dmg}")
