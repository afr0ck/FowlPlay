//Cheats

// Debug Cheats Essentially
if (keyboard_check(vk_alt)) {
	// Next Room
	if (keyboard_check_pressed(ord("N"))) {
		room_goto_next();
		global.room_spawn_location = "next";
	}

	// Previous Room
	if (keyboard_check_pressed(ord("B")) && room_get_name(room) != "Tutorial") {
		room_goto_previous();
		global.room_spawn_location = "back";
	}

	// Restart Room
	if (keyboard_check_pressed(ord("V"))) room_restart();
	
	// Restart Game
	if (keyboard_check_pressed(ord("R"))) game_restart();
}

// Full Health
if (keyboard_check_pressed(ord("F"))) health = obj_Dave.maxHealth;

// XP Incease
if (keyboard_check_pressed(ord("X"))) XP += Lvl * 100;

// Extra Lives
if (keyboard_check_pressed(ord("L"))) {
	if (lives < 8) lives++;
}

// Blob Create
if (keyboard_check(vk_space)) {
	if (keyboard_check_pressed(ord("C"))) {
		if (global.hasBlob) instance_destroy(obj_Blob);
		instance_create_layer(obj_Dave.x, obj_Dave.y, "Active", obj_Cranberry);
	}
	
	if (keyboard_check_pressed(ord("T"))) {
		if (global.hasBlob) instance_destroy(obj_Blob);
		instance_create_layer(obj_Dave.x, obj_Dave.y, "Active", obj_Tater);
	}
	
	if (keyboard_check_pressed(ord("D"))) {
		if (global.hasBlob) instance_destroy(obj_Blob);
	}
}






