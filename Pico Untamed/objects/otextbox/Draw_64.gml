//set up font
draw_set_font(textfont);

//if text_showing is 0 then text displays empty string
if text_showing = 0
{
	draw_text(0,0, "");
}
else
{
	//if textbox showing is 1 then object will print text
	switch (dialogue)
	{
		case 1:
			draw_text(100,800, "Pico: Obey... Obey who?");
		break;
		case 2:
			//empty for now
		break;
		case 0:
			draw_text(100,800, "Pico: It seems to be a card scanner. Maybe it can free Boyfriend.");
		break;
		case 4:
			draw_text(100,800, "Pico: I hear footsteps! I need to hide right now!\n         Those rocks look safe.");
		break;
		case 8:
			draw_text(100,800, "Pico: Ugh, this room is giving me bad memories...");
		break;
		case 9:
			draw_text(100,800, "Pico: Hmm, what's with that card on the table?");
		break;
	}







}