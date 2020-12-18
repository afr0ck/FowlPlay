if (global.pause) exit;

key_shoot = keyboard_check_pressed(vk_space);

// If dave exists follow his x / y position
// Directional changes handled inside obj_Dave
if (instance_exists(obj_Dave)) {
	x = obj_Dave.x - (obj_Dave.image_xscale * 64);	
	y = obj_Dave.y + 50;
}

// Shoot capability and timing
if (canShoot && key_shoot) {
	instance_create_layer(x, y, "Active", ammo_type);	
	canShoot = false;
	alarm[0] = 600 / bullet_speed;
}