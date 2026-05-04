draw_self()
draw_rectangle_colour(x, y, x + 160, y + 38,c_rect_x1, c_rect_y1 ,c_rect_x2 ,c_rect_y2,false)
draw_text(x,y, $"{name} {_player.current_player_green_sum}")
draw_text(x,y+text_next_line_y ,$"{ability_text}")
