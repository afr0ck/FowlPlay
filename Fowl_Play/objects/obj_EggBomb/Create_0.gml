if (global.pause) {
	speed = 0;
	hspeed = 0;
	vspeed = 0;
} else {
	if (instance_exists(obj_Dave)) {
		direction = point_direction(x, y, obj_Dave.x, obj_Dave.y);

		speed = 6;
	}
}