vspeed += grav;

if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up)) {
	vspeed = flap_speed;
}

target_tilt = vspeed * -2.5;
target_tilt = clamp(target_tilt, -30, 45);
tilt_angle = lerp(tilt_angle, target_tilt, tilt_speed);
image_angle = tilt_angle;

if (y < 0) {
	y = 0;
	vspeed = 0;
}

if (place_meeting(x, y+1, obj_land)) {
	global.game_over = true;
}

if (place_meeting(x, y, obj_pipe)) {
	global.game_over = true;
}

if (global.game_over) {
	room_restart();
}