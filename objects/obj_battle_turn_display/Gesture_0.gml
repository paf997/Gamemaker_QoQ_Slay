
_messege = global.get_main_display_state()
show_debug_message($"Tap. Action Complete {is_action_complete}. Phase {_messege}")
if(!is_action_complete){
	show_debug_message("is_action_complete function")
	initiative_track.atb_phase_complete()
}else{
	show_message($"{end_turn_message_for_display}")
	is_action_complete = !is_action_complete
}


update_display()