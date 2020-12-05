/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1463D192
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)if(hp <= 0){$(13_10)	instance_destroy();$(13_10)	obj_Controller.XP += experiance$(13_10)}$(13_10)$(13_10)//Gravity$(13_10)if(vsp < 10) vsp += grav;$(13_10)$(13_10)//Horizontal Collision$(13_10)if (place_meeting(x+hspeed,y,obj_block)) $(13_10){$(13_10)        while(!place_meeting(x+sign(hspeed),y,obj_block))$(13_10)    {$(13_10)        x += sign(hspeed);$(13_10)    }$(13_10)    hspeed = 0;$(13_10)}$(13_10)$(13_10)if (place_meeting(x+hspeed,y,obj_EnemyBound)) $(13_10){$(13_10)        while(!place_meeting(x+sign(hspeed),y,obj_EnemyBound))$(13_10)    {$(13_10)        x += sign(hspeed);$(13_10)    }$(13_10)    hspeed = -hspeed;$(13_10)	image_xscale = -image_xscale;$(13_10)}$(13_10)$(13_10)//Verticle Collision & Double Jump Reset$(13_10)if (place_meeting(x,y+vsp,obj_block))$(13_10){$(13_10)    while(!place_meeting(x,y+sign(vsp),obj_block))$(13_10)    {$(13_10)        y += sign(vsp);$(13_10)    }$(13_10)    vsp = 0;$(13_10)}$(13_10)$(13_10)y += vsp$(13_10)$(13_10)"
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

y += vsp