/// @description Insert description here
// You can write your code in this editor
event_inherited()


if(instance_exists(obj_Dave)){
	facing = point_direction(x,y,obj_Dave.x,obj_Dave.y)
	
	if(facing > 90 && facing < 270){
		image_xscale = 1
	}else{
		image_xscale = -1
	}
	
	if(distance_to_object(obj_Dave) <= 500){
		if (canShoot && !(facing > 45 && facing < 135)) 
		{
			instance_create_layer(x, y, "Active", obj_EggBomb);
			canShoot = false;
			alarm[0] = room_speed
		}
	}
}




