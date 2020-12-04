/// @description Insert description here
// You can write your code in this editor
if(health <= 0){
	instance_destroy(obj_Dave);
	if(lives > 0){
		lives--
		room_restart()
	}else{
		if(keyboard_check_pressed(ord("F"))){
			game_restart();
		}
	}
}

if(XP >= Lvl*100){
	XP = XP - Lvl*100;
	Lvl++;
}

