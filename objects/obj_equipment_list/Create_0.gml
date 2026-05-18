
enum equipment_type  {
	weapon,
	armour,
	relic, 
	item
}

player_equipment_abilities = [];
current_player_token_sum = 0;
current_player_red_sum = 0;
current_player_green_sum = 0;
current_player_black_sum = 0;
current_player_yellow_sum = 0;
current_player_wild_sum = 0;

player_1 = instance_find(obj_fighter_class,0)
player_2 = instance_find(obj_rogue_class,0)
player_3 = instance_find(obj_rogue_class,0)

y_offset = 48
offset_count = 0

new_ability_ui = ""
new_equipment = ""

c_top_left_green = make_colour_rgb(0,250,0)
c_bottom_right_green = make_colour_rgb(0,250,0)
c_top_right_green = make_colour_rgb(0,240,160)
c_bottom_left_green = make_colour_rgb(250,250,160)

c_top_left_red = make_colour_rgb(230,10,10)
c_bottom_right_red = make_colour_rgb(200,100,120)
c_top_right_red = make_colour_rgb(200,100,160)
c_bottom_left_red = make_colour_rgb(250,50,50)

c_top_left = c_top_left_red
c_bottom_right = c_bottom_right_red
c_top_right = c_top_right_red
c_bottom_left = c_bottom_left_red

player_columns = [100,400,700]
column_index = 0
equipment = []

///ability colors 

c_top_left = make_colour_rgb(0,250,0)
c_bottom_right = make_colour_rgb(0,250,0)
c_top_right = make_colour_rgb(0,240,160)
c_bottom_left = make_colour_rgb(250,250,160)


shield = instance_create_layer(x,y, "Instances_1", obj_shield)
long_sword = instance_create_layer(x,y, "Instances_1", obj_long_sword)
heavy_armour = instance_create_layer(x,y, "Instances_1", obj_heavy_armour)
dagger = instance_create_layer(x,y,"Instances_1",obj_dagger)
medium_armour = instance_create_layer(x,y, "Instances_1", obj_medium_armour)


set_up_player_starting_equipment("fighter")
column_index++
offset_count = 0
set_up_player_starting_equipment("rogue")
column_index++
offset_count = 0
set_up_player_starting_equipment("fighter")




function set_up_player_starting_equipment(player_class){

	if(player_class == "fighter"){
		array_push(equipment,shield,long_sword,heavy_armour)
	}else{
		array_push(equipment,dagger,medium_armour)
	}
	
	equipment_length = array_length(equipment)
	for (item = equipment_length; item > 0; item --){
		show_debug_message($"equipment length {item}")
		get_equipment_abilities(equipment[item-1])
	}
}


function get_equipment_abilities(equipment){
	ability_length = array_length(equipment.abilities)
	for (_item = ability_length; _item > 1; _item --){
		show_debug_message($"abillity length {_item}")
		_new_ability_ui =  create_equipemnt_abilities_ui(equipment,_item-1)
		array_push(player_equipment_abilities,_new_ability_ui)
	}
	player_equipment_abilities = []
}

function set_ui_color(color){
	power_color = color
}

function set_ui_text(text){
	ability_text = text;
}

function update_current_power_drawn(){
	
}

function create_equipemnt_abilities_ui(equipment,index = 0){
			ui_colors = {
				c_top_left : c_top_left_red,
				c_bottom_right : c_bottom_right_red,
				c_top_right : c_top_right_red,
				c_bottom_left : c_bottom_left_red,
				power_color : c_red	
			}
			
			if(equipment.abilities[index] == TokenType.Attack){
			}else if(equipment.abilities[index] == TokenType.Defense){
				ui_colors = {
					c_top_left : c_top_left_green,
					c_bottom_right : c_bottom_right_green,
					c_top_right : c_top_right_green,
					c_bottom_left : c_bottom_left_green,
					power_color : c_green
				}
			}else if(equipment.abilities[index] ==  TokenType.Magic){
				
			}else if(equipment.abilities[index] == TokenType.Wild){
				power_color = c_purple
			}else if(equipment.abilities[index] == TokenType.Bust){
				power_color = c_grey
			}else{}	
				
	
	ability_text = equipment.get_ability_description(index)
	new_ability_ui = instance_create_layer(player_columns[column_index],300+ y_offset * offset_count,"Instances_1", obj_defense_abilities)
	new_ability_ui.set_ui_color(ui_colors)
	new_ability_ui.set_ui_text(ability_text)
	new_ability_ui.name = equipment.name[0]
	offset_count++
	return new_ability_ui
}
