/// @description Insert description here
// You can write your code in this editor
if(health <= 0){
	if (instance_exists(obj_Dave)) {
		tmpX = obj_Dave.x;
		tmpY = obj_Dave.y;
		instance_destroy(obj_Dave);
	}
	if (instance_exists(obj_Blob)) instance_destroy(obj_Blob);
	global.hasBlob = false;
	instance_create_layer(tmpX, tmpY, "Active", obj_Dave_Die);
	if(lives > 0){
		lives--
		killCounter = 0;
	}else{
		gameOver = true;
		if(keyboard_check_pressed(ord("F"))){
			game_restart();
		}
	}
}

if(XP >= Lvl*100){
	XP = XP - Lvl*100;
	Lvl++;
	hpUp++; //used in step and create event in Dave
	dmgUp++; //in variable definiton for damage
	if(instance_exists(obj_Dave))
		health += 10
}

if (instance_exists(obj_Blob)) {
	global.hasBlob = true;
	if (instance_exists(obj_Cranberry)) global.blobType = obj_Cranberry;
	if (instance_exists(obj_Tater)) global.blobType = obj_Tater;
}
