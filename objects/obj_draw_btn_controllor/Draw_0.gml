draw_self();

// Draw centered number text


var tx = 10
var ty = 350;
draw_text(tx, ty, "is Chosen " + string(player1_chosen_draw_btn.is_chosen) 
+ " Size " + string(array_length(player1_btn_arr)) + player1_chosen_draw_btn.class );
draw_text(tx, ty + 36, "is Chosen " + string(player2_chosen_draw_btn.is_chosen) 
+ " Size " + string(array_length(player2_btn_arr)) + player2_chosen_draw_btn.class );
draw_text(tx, ty + 72, "P1 Token Count: " + string(player1.token_draw_count) + " Speed: " + string(player1.atb_speed) + " " + string(player1.draw_n_tokens));
draw_text(tx, ty + 96, "P2 Token count: " + string(player2.token_draw_count) + " Speed: " + string(player2.atb_speed) + " " + string(player2.draw_n_tokens));

draw_text(tx, ty + 144, 
"Enemy 1" + string(7) 
+ " Initiative " + string(10) 
+ " HP " + string(7)
+ " Damage 2 * 4"
+ " Block:3 " + string(player2.draw_n_tokens));