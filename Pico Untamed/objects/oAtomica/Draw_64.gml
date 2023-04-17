//display health text
if (displayon)
{
	//set up font
	draw_set_font(textfont);
	
	//set color
	draw_set_color(c_white);
	
	//drawtext
	draw_text(910,80, "Atomica\n   " + string(hp));
}
