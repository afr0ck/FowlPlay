/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

spawner = instance_create_layer(originX, originY, "Active", obj_EnemySpawn);
with(spawner) monsterToSpawn = obj_Enemy_Turkey