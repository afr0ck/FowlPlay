/// @description Jumping Mechanic

canJump = true

if (global.pause) {
	exit;
}

audio_play_sound(snd_Turkey, 0, false);

if (facing > 90 && facing < 270){
	vspeed = -30
	hspeed = -15
} else {
	vspeed = -30
	hspeed = 15
}
