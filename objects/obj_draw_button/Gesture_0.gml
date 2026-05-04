var _class;

var btn_controllor = instance_find(obj_draw_btn_controllor, 0);
var active_btn;
var btn_array;
var temp_btn;

if(class == "warrior"){
	_class = instance_find(obj_token_bag_P1, 0);
	btn_controllor.switch_btn(1, my_number);

	}else if (class == "rogue"){
	_class = instance_find(obj_token_bag_P2, 0);
	btn_controllor.switch_btn(2, my_number);
}

_class.atb_speed = my_number;


/*for(var i = 0; i < btn_cnt; i ++){
	temp_btn = btn_array[i];

}

	
