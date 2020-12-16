/// @description Insert description here
// You can write your code in this editor
if(hp <= 0){
	instance_destroy();
	obj_Controller.XP += experiance
}

//Gravity
if(vsp < 10) vsp += grav;

//Horizontal Collision
if (place_meeting(x+hspeed,y,obj_block)) 
{
        while(!place_meeting(x+sign(hspeed),y,obj_block))
    {
        x += sign(hspeed);
    }
    hspeed = 0;
}

if (place_meeting(x+hspeed,y,obj_EnemyBound)) 
{
        while(!place_meeting(x+sign(hspeed),y,obj_EnemyBound))
    {
        x += sign(hspeed);
    }
    hspeed = -hspeed;
	image_xscale = -image_xscale;
}

//Verticle Collision & Double Jump Reset
if (place_meeting(x,y+vsp,obj_block))
{
    while(!place_meeting(x,y+sign(vsp),obj_block))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

// Pink box collision
if (position_meeting(x, bbox_bottom, obj_blockUp) && vsp > 0)
{
	if(!position_meeting(x, bbox_bottom, obj_blockUp))
    {
        y += vsp;
    }
    vsp = 0;
}

y += vsp