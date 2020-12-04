/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(0, 0, 200, 100, c_gray,c_gray,c_gray,c_gray,false)
draw_healthbar(0,0,150,10,health,c_black,c_red,c_green,0,true,true)
xStart = 10
for(life = 0; life < lives; life++){
	draw_sprite(spr_Dave,image_index=0,xStart,25)
	xStart += 15
}
draw_healthbar(0, 60, 150, 60,XP,c_black,c_yellow,c_yellow,0,true,true)
draw_text(0, 35, "Exp:"+ string(XP)+"/"+string(Lvl*100))
draw_text(0, 75, "Level: "+string(Lvl))
