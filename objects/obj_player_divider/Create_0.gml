width = display_get_gui_width()
height = display_get_gui_height()
margin = width *.15 
n_columns = 3
column_width = (width - (2*margin))/3
columns = []
player_equipment_list = instance_find(obj_equipment_list,0)
players = [];

create_columns()
function create_columns(){
	for(column = 1; column <= n_columns; column++){
		array_push(columns,column_width*column)
		show_debug_message(string(columns))
	}
}