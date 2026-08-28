vspeed += grav;

if (keyboard_check_pressed(vk_space)) {
	vspeed = flap_speed;
}

target_tilt = vspeed * -2.5;
target_tilt = clamp(target_tilt, -30, 45);
tilt_angle = lerp(tilt_angle, target_tilt, tilt_speed);
image_angle = tilt_angle;
