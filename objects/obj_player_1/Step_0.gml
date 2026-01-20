tilemap = layer_tilemap_get_id("Collision_Layer");

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * horizontal_move, _ver * vertical_move, tilemap, undefined, undefined, undefined, horizontal_move, vertical_move);

if(_hor != 0 or _ver != 0){
	if(_ver > 0){
		sprite_index = spr_player_walk_down;
	}else if (_ver < 0){
		sprite_index = spr_player_walk_up;
	}else if (_hor > 0){
		sprite_index = spr_player_walk_right;
	}else if (_hor < 0){
		sprite_index = spr_player_walk_left;
	}	
}else{
	if(sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
	else if(sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
	else if(sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
	else if(sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
}
