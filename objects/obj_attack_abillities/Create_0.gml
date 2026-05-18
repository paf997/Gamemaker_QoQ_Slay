ability_text = ""
text_start_x = 12
text_start_y = 8
text_next_line_y = 24
ability_power = ""
ability_power_type = TokenType.Defense
equipped_abilities = []
name = ""
power_color = c_white
_player_controller = instance_find(obj_rush_btn_controllor,0)

c_rect_x1 = c_white
c_rect_y1 = c_white
c_rect_x2 = c_white
c_rect_y2 = c_white


function get_equipment_abilities(equipment){
	equipment_length = array_length(equipped.abilites)
	for (item = equipment_length; item > 0; item--){
		create_equipemnt_abilities_ui(equipment.ability_power[item])
	}
}

function set_ui_color(details){
	power_color = details.power_color
	c_rect_x1 = details.c_top_left
	c_rect_y1 = details.c_bottom_right
	c_rect_x2 = details.c_top_right
	c_rect_y2 = details.c_bottom_left
	
}

function set_ui_text(text){
	ability_text = text;
}

function create_equipemnt_abilities_ui(ability){
			if(ability.ability_power_type= TokenType.Attack){
					power_color = c_red
				}else if(ability.ability_power_type = TokenType.Defense){
					power_color = c_lime
				}else if(ability.ability_power_type =  TokenType.Magic){
					power_color = c_blue
				}else if(ability.ability_power_type = TokenType.Wild){
					power_color = c_purple
				}else if(ability.ability_power_type = TokenType.Bust){
					power_color = c_grey
				}else{}	
				
	name = ability.name
	ability_text = ability.get_ability_description()
	new_ability_ui = instance_create(x,y,"Instances_1", obj_defense_abilities)
	new_ability_ui.set_ui_color(power_color)
	new_ability_ui.set_ui_text(ability_text)
}
