/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(0, 0, 245, 95, c_gray,c_gray,c_gray,c_gray,false)
healthBar = (health / obj_Dave.maxHealth) * 100;
draw_healthbar(5,5,150,15,healthBar,c_black,c_red,c_green,0,true,true)
if(instance_exists(obj_Dave))
	draw_text(160, 0, string(health)+"/"+string(obj_Dave.maxHealth))

xStart = 15
for(life = 0; life < lives; life++){
	draw_sprite(spr_DaveLife,image_index=0,xStart,30)
	xStart += 30
}

draw_healthbar(5, 70, 150, 70,XP,c_black,c_yellow,c_yellow,0,true,true)
draw_set_color(c_black)
draw_set_font(fnt_Arial)
draw_text(5, 45, "Exp: "+ string(XP)+"/"+string(Lvl*100))
draw_text(5, 75, "Level: "+string(Lvl))



draw_set_color(c_green);
draw_text(250, 45, "Debug Tool: " + string(global.hasBlob));
draw_set_color(c_black);


if (gameOver) {
	draw_sprite(spr_DeathMessage, 0, camera_get_view_width(view_camera[0])/2, camera_get_view_height(view_camera[0])/2);
}

if (gameWin) {
	draw_sprite(spr_YouWin, 0, camera_get_view_width(view_camera[0])/2, camera_get_view_height(view_camera[0])/2);		
}

if (global.pause) {
	draw_set_color(c_black);
	draw_set_alpha(.5);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_alpha(1);
	draw_sprite(spr_Pause, 0, camera_get_view_width(view_camera[0])/2, camera_get_view_height(view_camera[0])/2);
}