// In the Draw Event of your object
draw_self();
card_costs = [0,0,0];
player_card_name = "Attack";

var outline_color = c_grey; // Or any desired color
var outline_thickness = 2; // Adjust for desired thickness

// Draw outline in multiple directions
draw_sprite_ext(sprite_index, image_index, x - outline_thickness, y, image_xscale, image_yscale, image_angle, outline_color, image_alpha);
draw_sprite_ext(sprite_index, image_index, x + outline_thickness, y, image_xscale, image_yscale, image_angle, outline_color, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y - outline_thickness, image_xscale, image_yscale, image_angle, outline_color, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y + outline_thickness, image_xscale, image_yscale, image_angle, outline_color, image_alpha);
// Add diagonals for a more complete outline if desired
draw_sprite_ext(sprite_index, image_index, x - outline_thickness, y - outline_thickness, image_xscale, image_yscale, image_angle, outline_color, image_alpha);
draw_sprite_ext(sprite_index, image_index, x + outline_thickness, y - outline_thickness, image_xscale, image_yscale, image_angle, outline_color, image_alpha);
draw_sprite_ext(sprite_index, image_index, x - outline_thickness, y + outline_thickness, image_xscale, image_yscale, image_angle, outline_color, image_alpha);
draw_sprite_ext(sprite_index, image_index, x + outline_thickness, y + outline_thickness, image_xscale, image_yscale, image_angle, outline_color, image_alpha);

// Draw the original sprite on top
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);

draw_text(x-text_offset_x, y-text_offset_y, string(player_card_name));
draw_sprite(spr_red_blank, spr_red_blank, x-text_offset_x + 2, y-8);
draw_text(x-text_offset_x-4, y-28, string(card_costs[0]));
draw_sprite(spr_green_blank, spr_green_blank, x-text_offset_x + 30, y-8);
draw_text(x-text_offset_x+24, y-28, string(card_costs[1]));
draw_sprite(spr_white_blank, spr_white_blank, x-text_offset_x + 58, y-8);
draw_text(x-text_offset_x+52, y-28, string(card_costs[2]));
//draw_text(x-text_offset_x -18, y-text_offset_y2, string(card_costs));
draw_text(x-text_offset_x, y-text_offset_y + 52, "Dmg:0 ");
draw_text(x-text_offset_x, y-text_offset_y + 66, "Blck:0 ");

if(is_card_chosen){
	draw_text(x, y-text_offset_y-50, "Card Chosen");
}
