// --- SETUP (Assuming this is inside the Draw GUI event) ---
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// 1. DEFINE DIMENSIONS, MARGINS, AND DATA

var margin = 20; // Margin from screen edges
var padding = 10; // Internal padding for row content
var box_h = gui_h * 0.20; // 20% of screen height
var radius = 16; // Corner radius

// Mock character data (Name, Status Color, Sample HP)
var character_data = [
    { id: 0, name: "WARRIOR", status_col: $BF008000, hp: 10 }, // Green (Ready)
    { id: 1, name: "ROGUE", status_col: $BFFFD700, hp: 8 },    // Yellow (Primed)
    { id: 2, name: "CLERIC", status_col: $BF00008B, hp: 9 },    // Red (Inactive)
    { id: 3, name: "WIZARD", status_col: $BF008000, hp: 7 }     // Green (Ready)
];
var num_players = array_length(character_data);
// FIX 1: Row height should use the full box_h, not subtract margin again.
var row_h = box_h / num_players; 

// Define the square button size (slightly smaller than the row height for padding)
var button_size = row_h * 0.7; // 70% of the row height
var button_color = c_green;
var button_hover_color = c_lime;

// 2. CALCULATE CONTAINER POSITION (Top Center)

var x1 = margin;
var x2 = gui_w - margin;
var y1 = margin;
var y2 = y1 + box_h; 

// 3. DRAW THE SEMI-TRANSPARENT BACKGROUND CONTAINER 

var col_bg = $40FFFFFF; // White at ~25% opacity
var col_border = c_white;

// Draw the rounded rectangle background (Container)
draw_set_alpha(1);
// FIX 3: Restored radius arguments for draw_roundrect_colour
draw_roundrect_colour(x1, y1, x2, y2, col_bg, col_bg, false); // Fill
draw_roundrect_colour(x1, y1, x2, y2, col_border, col_border, true); // Border


// 4. DRAW NESTED ROSTER ROWS

for (var i = 0; i < num_players; i++;) {
    var char_info = character_data[i];

    // Calculate row boundaries
    var row_y1 = y1 + (i * row_h);
    var row_y2 = y1 + ((i + 1) * row_h);
    
    // C. CALCULATE DYNAMIC SQUARE BUTTON ("MOVE") COORDINATES (Moved up for hover check)
    // These coordinates are needed to prevent row hover when button is hovered.
    var b_x1 = x2 - padding - button_size;
    var b_y1 = row_y1 + (row_h - button_size) / 2; // Center vertically in the row
    var b_x2 = x2 - padding;
    var b_y2 = b_y1 + button_size;
    
    // --- ROW HOVER/CLICK LOGIC ---
    var is_hovering = false;
    var is_mouse_in_row = (mouse_x >= x1 && mouse_x <= x2 && mouse_y >= row_y1 && mouse_y <= row_y2);
    
    // Check if mouse is hovering over the button
    var is_button_hovering = false;
    if (mouse_x >= b_x1 && mouse_x <= b_x2 && mouse_y >= b_y1 && mouse_y <= b_y2) {
        is_button_hovering = true;
    }
    
    // FIX: Only apply ROW hover effect if the mouse is in the row AND NOT over the button
    if (is_mouse_in_row && !is_button_hovering) {
        is_hovering = true;
        if (mouse_check_button_pressed(mb_left)) {
            // This is the ROW click action (e.g., set as active player)
            show_debug_message(char_info.name + " row clicked! Setting as active.");
        }
    }

    // A. Draw Row Background (Status Color + Hover Effect)
    var row_fill_color = char_info.status_col;
    if (is_hovering) {
        row_fill_color = merge_color(char_info.status_col, c_black, 0.2); 
    }
    // FIX: Standardized draw_rectangle_colour args (9 args needed for GMS2)
    draw_rectangle_colour(x1 + 1, row_y1 + 1, x2 - 1, row_y2 - 1, row_fill_color, row_fill_color, row_fill_color, row_fill_color, false);


    // B. Draw Content (Class Name and Placeholder Stats)
    draw_set_colour(c_black);
    draw_set_font(fnt_game_font); // FIX 2: Uncommented this line to ensure text draws
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    
    var text_x_start = x1 + padding;
    var text_y_center = row_y1 + row_h / 2;
    
    // 1. Class Name
    draw_text(text_x_start, text_y_center, char_info.name);

    // 2. Placeholder Stats (Draw far left of the button)
    draw_set_halign(fa_right);
    var stats_message = string_format("HP: %0.0f | Status: %s", char_info.hp, char_info.status_col == $BF008000 ? "Ready" : "Busy");
    
    // Position stats to leave space for the button on the far right
    var stats_x_end = b_x1 - padding; // Changed to use b_x1 as reference for clean margin
    draw_text(stats_x_end, text_y_center, stats_message);


    // C. DRAW DYNAMIC SQUARE BUTTON ("MOVE")
    // Coordinates (b_x1, b_y1, b_x2, b_y2) already calculated above.
    
    // Button Click Logic
    if (is_button_hovering) {
        if (mouse_check_button_pressed(mb_left)) {
            show_debug_message(char_info.name + " MOVE button clicked!");
            // This is where you would call scr_perform_action(char_info.id, "Move");
        }
    }

    // Draw Button Background
    var final_btn_color = is_button_hovering ? button_hover_color : button_color;
    // FIX: Standardized draw_rectangle_colour args (9 args needed for GMS2)
    draw_rectangle_colour(b_x1, b_y1, b_x2, b_y2, final_btn_color, final_btn_color, final_btn_color, final_btn_color, false);
    
    // Draw Button Text
    draw_set_colour(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(b_x1 + button_size / 2, b_y1 + button_size / 2, "MOVE");


    // 5. Draw separating line between rows (optional, but helps define the rows)
    if (i < num_players - 1) {
        draw_set_colour(c_gray);
        draw_line(x1 + padding, row_y2, x2 - padding, row_y2);
    }
}

draw_set_alpha(1); // Reset alpha