/// @description Insert description here
// You can write your code in this editor
if (spawn){
	image_xscale += .01;
	image_yscale += .01;

	if(image_xscale >= 1) {
		image_xscale = 1;
		image_yscale = 1;
	
		instance_change(monsterToSpawn, true);
	}
}