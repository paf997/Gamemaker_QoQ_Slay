draw_self()
if(stats != -1 ){//&& stats.is_active){
	stats.hp_icon.icon_value = hp
	stats.armour_icon.icon_value = armour
	//	draw_text(global.player_card_display_x, global.display_stats, $"{stats.hp_heart}: {stats.hp} \nRed(s){stats.red} \nArmour{stats.defense_icon}{stats.armour}")
//draw_text(x , y - 176, $"Abilites {get_abilitty_cards()}  ")
}
if(token_icons != -1){
	token_icons.red_icon.icon_value = red_sum
	token_icons.green_icon.icon_value = green_sum
	token_icons.yellow_icon.icon_value = yellow_sum
}