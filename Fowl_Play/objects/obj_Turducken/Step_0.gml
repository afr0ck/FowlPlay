/// @description Insert description here

if (global.pause){
	vspeed = 0
	hspeed = 0
	exit;
}

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
			alarm[0] = irandom_range(90, 180);
		}
	}
}

if (canJump = true){
	alarm[2] = irandom_range(60,600)
	canJump = false
}

// Gravity
vspeed += 1

//Horizontal Collision
if (place_meeting(x+hspeed,y,obj_block)) 
{
    while(!place_meeting(x+sign(hspeed),y,obj_block))
    {
        x += sign(hspeed);
    }
    hspeed = 0;
}

//Verticle Collision
if (place_meeting(x,y+vspeed,obj_block))
{
    while(!place_meeting(x,y+sign(vspeed),obj_block))
    {
        y += sign(vspeed);
    }
    vspeed = 0;
	hspeed = 0;
}

if (position_meeting(x, bbox_bottom, obj_blockUp) && vspeed > 0)
{
	if(!position_meeting(x, bbox_bottom, obj_blockUp))
    {
        y += vspeed;
    }
    vspeed = 0;
}