
_messege = global.get_main_display_state()

show_debug_message($"Tap. Action Complete {is_action_complete}. Phase {_messege}")
if (_messege == MainDisplayBtnState.Bust){
	show_message($"Message: {end_turn_message_for_display}")
	//is_action_complete = !is_action_complete
}else if (_messege == MainDisplayBtnState.EndDrawTokenPhase){
	show_message($"Ending Turn {global.get_main_display_state()}")
}else if (_messege == MainDisplayBtnState.DrawTokenPhase) {
	show_message($"Please draw tokens or end turn {global.get_main_display_state()}")
}else{
	//show_debug_message("is_action_complete function")
	initiative_track.atb_phase_complete()
}
update_display()