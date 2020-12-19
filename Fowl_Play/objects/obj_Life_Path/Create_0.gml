/// @description Insert description here
// You can write your code in this editor
growth = false;
if (room_get_name(room) == "Level1")
  levelPath = Path2;
if (room_get_name(room) == "Level2")
  levelPath = Path1;
 if (room_get_name(room) == "Level3")
  levelPath = Path3;

path_start(levelPath, 4, path_action_continue, true)