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
+ " HP: " + string(_player.hp)
);

/*if(isChosen){
	draw_text(x,y + 200, "Button Test");
}*/

draw_text(x+128, y + 128, $" Player 1 red {_player.red_sum} green {_player.green_sum} yellow {_player.yellow_sum} atb{_player.initiative} block:{_player.block} dmg:{_player.dmg}")
draw_text(x+128, y + 160, $" Player 2 red {_player2.red_sum} green {_player2.green_sum} yellow {_player2.yellow_sum} atb{_player2.initiative} block:{_player2.block} dmg:{_player2.dmg}")
draw_text(x+128, y + 192, $" Player 3 red {_player3.red_sum} green {_player3.green_sum} yellow {_player3.yellow_sum} atb{_player3.initiative} block:{_player3.block} dmg:{_player3.dmg}")
