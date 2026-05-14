is_action_complete = !is_action_complete
_messege = string(is_action_complete)
//show_debug_message($"Tap  + {is_action_complete}")
if(is_action_complete){
	initiative_track.atb_phase_complete()
}
//update_display()