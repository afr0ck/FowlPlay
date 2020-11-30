/// @description Moving/Jumping + Collision

//Player's input\\
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);
key_down = keyboard_check(vk_down);

/////Character Output\\\\\
//Directional Value
move = key_right - key_left;

//Jumping
if (key_jump)&&(jumps > 0){
		image_speed = 1
		jumps -=1
		vsp = -jumpspeed
}

//Animation Changes
if (key_down == 1)//crouch
{
	image_speed = 0 //stops animation
    sprite_index = spr_Dave_crouch
	image_index = 1 //selects best crouch frame
	move = 0 //prevents players from moving if they are crouching
}else{
	image_speed = 1 // play animations
	
	if(vsp > 0) sprite_index = spr_Dave_fall else sprite_index = spr_Dave_jump
	
	if(vsp == 0){
		if(move == 0)
			sprite_index = spr_Dave //idle animation
		else
			sprite_index = spr_Dave_run //running animation
	}
	
}

//Directional Animaiton
if(key_left){
	image_xscale = -1 //flips image left
}
if(key_right){
	image_xscale = 1 //flips image right
}

//Horizontal Movement Calulations
hsp = move * movespeed;

//Gravity
if(vsp < 10) vsp += grav;

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_block)) 
{
        while(!place_meeting(x+sign(hsp),y,obj_block))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

//Verticle Collision & Double Jump Reset
if (place_meeting(x,y+vsp,obj_block))
{
    while(!place_meeting(x,y+sign(vsp),obj_block))
    {
        y += sign(vsp);
    }
    vsp = 0;
	jumps = jumpsmax
}

//Final Movement
x += hsp;
y += vsp;