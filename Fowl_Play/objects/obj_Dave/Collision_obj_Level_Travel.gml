/// @description Insert description here
// You can write your code in this editor
global.room_spawn_location = other.level_direction;
if (other.level_direction == "next") {
	room_goto_next();	
}
if (other.level_direction == "back") {
	room_goto_previous();	
}