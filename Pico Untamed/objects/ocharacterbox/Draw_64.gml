//set up font
draw_set_font(textfont);

//set color
draw_set_color(c_white);

//if text_showing is 0 then text displays empty string
if choiceshow = 0
{
	draw_text(0,0, "");
}
else
{
	//draws text on screen
	switch(ctext)
	{
		case 1:
			draw_text(145,725,"Beep bop bpeepbop!");
			draw_text(145,900,"Who put you in here?");
		break;
		case 2:
			draw_text(145,725,"Why don't I give you my damn gun so you can shoot yourself?");
			draw_text(145,900,"There's no scanner next to your cell.");
		break;
		case 3:
			draw_text(145,725,"Yeah, and why don't you tell me who you're working for?");
			draw_text(145,900,"And why don't you suck my nuts?");
		break;
		case 4:
			draw_text(145,725,"I have other plans for you.");
			draw_text(145,900,"(Kill)");
		break;
		case 5:
			draw_text(145,725,"Who are you working for?!");
			draw_text(145,900,"(Kill)");
		break;
		case 6:
			draw_text(145,725,"Shut up...");
			draw_text(145,900,"(Kill)");
		break;
		case 7:
			draw_text(145,725,"You have one more chance to tell me what I need to know.");
			draw_text(145,900,"(Kill)");
		break;
		case 8:
			draw_text(145,725,"Depends. You willing to let me through?");
			draw_text(145,900,"No not really.");
		break;
		
		
	}
	
	
	
	
	
}