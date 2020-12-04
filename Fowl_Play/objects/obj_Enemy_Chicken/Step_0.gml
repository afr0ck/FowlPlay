/// @description Insert description here
// You can write your code in this editor
event_inherited()

if(instance_exists(obj_Dave)){
	facing = point_direction(x,y,obj_Dave.x,obj_Dave.y)
	if(facing > 90){
		image_xscale = -1
	}else{
		image_xscale = 1
	}

	if(distance_to_object(obj_Dave) >= 1000){
		if(facing < 45){
			alarm[1] = 5
		}else if(facing > 135){
			alarm[1] = 5
		}	
	}
}

if(facing >= 359){
	facing = 0
}