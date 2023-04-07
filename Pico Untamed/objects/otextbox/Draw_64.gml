//set up font
draw_set_font(textfont);

//set color
draw_set_color(c_white);

//if text_showing is 0 then text displays empty string
if (text_showing != 0)
{
	draw_text(100, 800, dialogueArray[dialogue]);
}
