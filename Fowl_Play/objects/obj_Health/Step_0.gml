/// @description Insert description here
// You can write your code in this editor
if (global.pause) exit;

if (!growth) {
	image_xscale -= .01;
	image_yscale -= .01;
	if (image_xscale < .5) growth = true;
} else {
	image_xscale += .01;
	image_yscale += .01;
	if (image_xscale == 1) growth = false;	
}