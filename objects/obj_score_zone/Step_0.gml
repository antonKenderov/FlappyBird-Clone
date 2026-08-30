x -= scroll_speed;

if (!collected && instance_exists(obj_bird) && obj_bird.x > x) {
	collected = true;
	global.score += 1;
}

if (x < -50) {
	instance_destroy();
}
