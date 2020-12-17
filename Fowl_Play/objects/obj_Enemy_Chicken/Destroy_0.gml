/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

spawner = instance_create_layer(originX, originY, "Active", obj_EnemySpawn); //instanciates obj_EnemySpawn and gets the ID of the one crated
with(spawner) monsterToSpawn = obj_Enemy_Chicken //sets the specific obj_EnemySpawns and crates a monsterToSpawn 