/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (global.pause){
	hspeed = 0;
	Paused = true;
	exit;
}
if(Paused) {
	hspeed = -hsp * image_xscale;
	Paused = false;
}
//x += hspeed;

