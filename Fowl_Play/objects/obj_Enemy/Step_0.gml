/// @description Insert description here
// You can write your code in this editor
if(hp <= 0){
	instance_destroy();
	obj_Controller.XP += experiance
}

//Gravity
if(vsp < 10) vsp += grav;

//Verticle Collision & Double Jump Reset
if (place_meeting(x,y+vsp,obj_block))
{
    while(!place_meeting(x,y+sign(vsp),obj_block))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

y += vsp

