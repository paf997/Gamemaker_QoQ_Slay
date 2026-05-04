
show_debug_message("Button pressed - " + string(button_name))
notify_controller = instance_find(obj_rush_btn_controllor,0)
notify_controller.button_pressed(button_name)