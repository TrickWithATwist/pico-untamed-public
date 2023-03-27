//set up font
draw_set_font(textfont);

//set color
draw_set_color(c_white);

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
		case 10:
			draw_text(100,800, "Pico: I wonder what's behind that window.");
		break;
		case 11:
			draw_text(100,800, "Pico: These seem to be blueprints. What for?");
		break;
		case 12:
			draw_text(100,800, "Pico: I wonder what that did. Better check outside.")
		break;
		case 13:
			draw_text(100,800, "Boyfriend: Beep beep bo bop beep.")
		break;
		case 14:
			draw_text(100,800, "Boyfriend: Skrrrp boop beep bop.")
		break;
		case 15:
			draw_text(100,800, "Pico: I see. I'll get you out of here, I promise...")
		break;
		case 16:
			draw_text(100,800, "Captain: Well well, if it isn't the school shooter. Get me out of\n                 here will ya?");
		break;
		case 17:
			draw_text(100,800, "Captain: Heh heh I like you kid. Try going to the room down the \n                  hall. You might find something there.")
		break;
		case 18:
			draw_text(100,800, "Captain: Well what are you waiting for?! Find another way to get \n                 me out!");
		break;
	}







}