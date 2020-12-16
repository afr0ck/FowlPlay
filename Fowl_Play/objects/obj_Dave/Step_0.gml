/// @description Moving/Jumping + Collision
if (global.pause) exit;

//Player's input\\
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right) ;
key_left = keyboard_check(ord("A")) ||  keyboard_check(vk_left);
key_jump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

key_attack = keyboard_check_pressed(vk_lshift);
key_shoot = keyboard_check_pressed(vk_space);

/////Character Output\\\\\
//Directional Value
move = key_right - key_left;

//Jumping
if (key_jump)&&(jumps > 0){
		image_speed = 1
		jumps -=1
		vsp = -jumpspeed
}

//Attack Animation End
	if(image_index > image_number -1){
		sprite_index = spr_Dave
		is_attacking = false
	}
	
//Attacking
if(key_attack){
	sprite_index = spr_Dave_attack
	image_index = 0
	image_speed = 1
	is_attacking = true
	instance_create_layer(x+64, y, "Active", obj_Attack);

//Animation Changes
}else if (key_down == 1 && !is_attacking)//crouch
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
	if (instance_exists(obj_Blob)) {
		obj_Blob.image_xscale = -.1;
	}
}
if(key_right){
	image_xscale = 1 //flips image right
	if (instance_exists(obj_Blob)) {
		obj_Blob.image_xscale = .1;
	}
}

//Horizontal Movement Calulations
if (!isHit) {
	hsp = move * movespeed;
}

//Gravity
vsp += grav;

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

//Jump through block collision check
if (position_meeting(x, bbox_bottom, obj_blockUp) && vsp > 0)
{
	if(!position_meeting(x, bbox_bottom, obj_blockUp))
    {
        y += vsp;
    }
    vsp = 0;
	jumps = jumpsmax
}

//Jump down through block
if (collision_point(x, bbox_bottom, obj_blockUp, false, true) && key_down)
{
	y += 5;
}

if(x+hsp > room_width || x+hsp < 0)
hsp=0

if(y+vsp > room_height || y+vsp < 0)
vsp =0

//Final Movement
x += hsp;
y += vsp;