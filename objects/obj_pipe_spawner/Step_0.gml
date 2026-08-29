if (!global.game_over) {
	spawn_timer += 1;

	if (spawn_timer >= spawn_interval) {
		var _x = room_width + 50;
		var _h = sprite_get_height(spr_pipe);

		var _gap_center = irandom_range(
			edge_margin + gap_size / 2,
			ground_y - edge_margin - gap_size / 2
		);

		var _gap_top    = _gap_center - gap_size / 2;
		var _gap_bottom = _gap_center + gap_size / 2;

		var _bottom = instance_create_layer(_x, _gap_bottom, "Instances_1", obj_pipe);
		_bottom.image_xscale = pipe_xscale;
		_bottom.image_yscale = (ground_y - _gap_bottom) / _h;

		var _top = instance_create_layer(_x, _gap_top, "Instances_1", obj_pipe);
		_top.image_xscale = pipe_xscale;
		_top.image_yscale = -_gap_top / _h;

		spawn_timer = 0;
		spawn_interval = irandom_range(gap_min, gap_max) / global.scroll_speed;
	}
}
