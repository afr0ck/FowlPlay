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
	}
}
if (gameOver) {
	if (!audio_is_playing(snd_Died)) {
		audio_stop_all();
		audio_play_sound(snd_Died, 0, true);
	}
	if(keyboard_check_pressed(ord("F"))){
		game_restart();
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


if (room_get_name(room) == "BossLevel" && !gameOver) {
	if (!audio_is_playing(snd_Boss_Room)) {
		audio_stop_all();
		audio_play_sound(snd_Boss_Room, 1, true);	
	}
} else if (!gameOver) {
	if (!audio_is_playing(snd_GameBG)) {
		audio_stop_all();
		audio_play_sound(snd_GameBG, 1, true);	
	}
} else if (gameWin) {
	if (!audio_is_playing(snd_Win)) {
		audio_stop_all();
		audio_play_sound(snd_Win, 1, true);	
	}
}
