/// @description Initialize Variables

//image_speed = 0;
//image_index = 0;

//Movement
grav = 1;
hsp = 0;
vsp = 0;

//Movement Powerup
movespeed_normal = 6;
movespeed_powerup = 8
movespeed = movespeed_normal

//Jumping
jumps = 2
jumpsmax = 2;

//Jumping Powerup
jumpspeed_normal = 17;
jumpspeed_powerup = 10;
jumpspeed = jumpspeed_normal;

//Attacking Check
isAttacking = false;

//Health
maxHealth = 100 + (obj_Controller.hpUp*10)
health = maxHealth

// Room spawn locations
if (global.room_spawn_location == "next") {
	x = 60;
	y = 1018;
}
if (global.room_spawn_location == "back") {
	x = 5000;
	y = 1018;
	image_xscale = -1;
}

// Blob spawn in new room
activeID = 0;
if (global.hasBlob) instance_create_layer(x, y, "Active", global.blobType);
