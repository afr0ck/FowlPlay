/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(0, 0, 200, 95, c_gray,c_gray,c_gray,c_gray,false)
draw_healthbar(5,5,150,15,health,c_black,c_red,c_green,0,true,true)
xStart = 15

for(life = 0; life < lives; life++){
	draw_sprite(spr_DaveLife,image_index=0,xStart,30)
	xStart += 30
}

draw_healthbar(5, 70, 150, 70,XP,c_black,c_yellow,c_yellow,0,true,true)
draw_set_color(c_black)
draw_set_font(fnt_Arial)
draw_text(5, 45, "Exp:"+ string(XP)+"/"+string(Lvl*100))
draw_text(5, 75, "Level: "+string(Lvl))

if (gameOver) {
	draw_sprite(spr_DeathMessage, 0, camera_get_view_width(view_camera[0])/2, camera_get_view_height(view_camera[0])/2);
}

if (gameWin) {
	draw_sprite(spr_YouWin, 0, camera_get_view_width(view_camera[0])/2, camera_get_view_height(view_camera[0])/2);		
}