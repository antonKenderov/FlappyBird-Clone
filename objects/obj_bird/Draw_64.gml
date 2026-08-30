draw_set_font(game_font);
draw_set_halign(fa_center);
draw_text(display_get_gui_width() / 2, 60, string(global.score));
draw_set_halign(fa_left);