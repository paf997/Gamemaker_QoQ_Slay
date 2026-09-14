
_messege = string(is_action_complete)
show_debug_message($"Tap  + {is_action_complete}")
if(!is_action_complete){
	show_debug_message("is_action_complete function")
	initiative_track.atb_phase_complete()
	is_action_complete = !is_action_complete
}else{
	show_message($"{end_turn_message_for_display}")
}


update_display()