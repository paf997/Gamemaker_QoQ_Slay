draw_self()
if(stats != -1 && stats.is_active){
	draw_text(global.player_card_display_x, global.display_stats, $"HP: {stats.hp} \nRed(s){stats.red} \nArmour{stats.armour}")
//draw_text(x , y - 176, $"Abilites {get_abilitty_cards()}  ")
}