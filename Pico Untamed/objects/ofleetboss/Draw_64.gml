//display health text
if (displayon == 1)
{
	//set up font
	draw_set_font(textfont);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	//set color
	draw_set_color(c_white);
	
	//drawtext
	draw_text(round(room_width/2),160, "Fleet\n" + string(fleethp));
}
