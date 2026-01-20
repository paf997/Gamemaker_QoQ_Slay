
draw_rectangle_colour(_x1, _y1, _x2, _y2, _color1, _color2, _color3, _color4, false);

draw_line_colour(_x1, _y1, _x2, _y1, c_white, _color1);
draw_line_colour(_x1, _y2, _x2, _y2, c_white, _color1);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text(_x1 + ((_x2 - _x1)/2) , _y1 + ((_y2 - _y1)/2) ,_text);

draw_set_halign(0);
draw_set_valign(0);