draw_self()
draw_rectangle_colour(x, y, x + 160, y + 32,c_rect_x1, c_rect_y1 ,c_rect_x2 ,c_rect_y2,false)
draw_text(x+text_start_x,y+text_start_y, $"{name}")
draw_text(x+text_start_x,y+text_next_line_y ,$"{ability_text}:{0}")
