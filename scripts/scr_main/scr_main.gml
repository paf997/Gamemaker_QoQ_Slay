function scr_main(){

}

enum TokenType {
	Attack,Defense,Magic,Wild,Aux,Bust,Fighter,WMage,Rogue,Agility
}


global.player_list = [];
//global.player_1 = null;
//global.player_2 = null;
//global.player_3 = null;

global.class_list = [obj_fighter_class,obj_rogue_class,obj_white_mage_class]
//global.main_bag = instance_create_layer(x,y,"Instances_1", obj_player_list)

enum MainDisplayBtnState {
	DrawTokenPhase, Bust, EndDrawTokenPhase, Initiative, EndRound
}

main_battle_phases = [MainDisplayBtnState.DrawTokenPhase, MainDisplayBtnState.Bust, 
	MainDisplayBtnState.EndDrawTokenPhase,MainDisplayBtnState.Initiative, MainDisplayBtnState.EndRound
	]
	
current_battle_phase = 0

function get_main_display_state(){
	return main_battle_phases[current_battle_phase];
}

function advance_battle_phase(){
	if(current_battle_phase < array_length(MainDisplayBtnState)){
		current_battle_phase++
	}else{
		current_battle_phase = 0
	}
}

function end_battle_round(){
	_ininitiative_track = instance_find(obj_initiative_track, 0)
	if(array_length(_ininitiative_track.particapnts) != 0){
		show_message("Inititiative mismatch")
	}else{
		_round_display = instance_find(obj_battle_round_display,0)
		_round_display++
	}
}
