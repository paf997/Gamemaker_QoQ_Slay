hp = 6;
att = 1;
dmg = 1;
target =  -1
initiative = 0;
image_index = c_red
is_dead = false;
rounds_completed = 0
name = "base name"
end_turn_phase = 1
actions = [0]
armour = 2
block = armour
energy = 0

function deal_damage(dmg){
	if(dmg > block){
		adjust_hp(dmg)
	}else{
		adjust_block(dmg)
	}
}

function adjust_hp(amount){
	hp-=amount;
	if(hp <= 0){
		visible = false;
		is_dead = true;
	}
}

function adjust_block(amount){
	if(amount == 0){
		block = 0
	}else{
		block -= amount
		if(block < 0){
			block = 0
		}
	}	
}

function get_block(){
	return block
}

function reset_block(){
	block = armour
}