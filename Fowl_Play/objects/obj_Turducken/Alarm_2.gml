/// @description Jumping Mechanic

canJump = true

if (global.pause) {
	exit;
}

if (facing > 90 && facing < 270){
	vspeed = -30
	hspeed = -15
} else {
	vspeed = -30
	hspeed = 15
}
