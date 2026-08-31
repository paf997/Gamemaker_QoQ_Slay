enemies = [];
enemy_spacing = 72;//64 bit + 12 padding
enemy_sprites = []
x_offset = 6
y_offset = 12
highligh_color = c_black
///spawn enemies

player_targets = [0,1]//temporary - connect to player controller later
player_target_text = "No target"

for(n = 0; n < 3; n++){
	show_debug_message("In enemy controller" + string(n))
	enemy = instance_create_layer(x + (n * enemy_spacing),y,"InitiativeTrack", obj_enemy)
	enemy_sprite = instance_find(spr_enemy_button,n);
	array_push(enemy_sprites,enemy_sprite)
	array_push(enemies,enemy)
}
default_enemy = 0
chosen_enemy = enemies[default_enemy]

random_enemy_target()
initiative_track = instance_find(obj_initiative_track,0)
initiative_track.set_initiatial_initiatve()

function target_enemy(enemy = default_enemy){
	chosen_enemy = enemies[enemy]
	while(chosen_enemy.is_dead == true && default_enemy < array_length(enemies)){
		show_debug_message($"target_enemy{array_length(enemies)}")
		default_enemy++
		chosen_enemy = enemies[default_enemy]
	}
	return chosen_enemy;
}

function highlight_enemy(){
	
}

function random_enemy_target(){
	new_target = random(array_length(enemies));
	if(new_target > default_enemy){
		x_offset =x_offset+  (enemy_spacing * new_target)
	}else if(new_target < new_target){
		x_offset = 6 + (enemy_spacing * new_target)
	}else{
	}
}

function random_player_target(){
	new_target = 0 //random(array_length(player_targets));//todo
	if(new_target == 0){
		player_target_text = " Player 1 targeted " 
		return instance_find(obj_fighter_class,0)
	}else{
		player_target_text = " Player 2 targeted " 
	}
}

function attack_target(){
	chosen_enemy.damage()
}
