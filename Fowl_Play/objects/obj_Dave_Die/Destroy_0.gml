/// @description Insert description here
// You can write your code in this editor
if (lives > 0){ 
	if (room_get_name(room) == "BossLevel") {
		global.room_spawn_location = "back"
		room_goto_previous()
	}else{
		room_restart()
	}
}else{
	obj_Controller.gameOver = true;
	if(keyboard_check_pressed(ord("F"))){
			game_restart();
	}
}