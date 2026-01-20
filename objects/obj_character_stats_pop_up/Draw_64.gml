    // obj_character_popup Draw GUI Event
    
        // Draw background
        draw_set_color(c_white);
        draw_rectangle(x, y, x + 100, y + 100, false); // Adjust position/size as needed

        // Draw text
       // draw_set_font(font);
        draw_set_color(c_black);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_text(x + 100 / 2, y + 100 / 2, "hello");
  