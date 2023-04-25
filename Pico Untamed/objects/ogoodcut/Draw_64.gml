draw_set_font(textfont);
draw_set_color(c_white);

//text changes depending on value of variable
switch(text)
{
	case 1:
		draw_text(150,750,"Go on Prico, end me...");
	break;
	case 2:
		draw_text(150,750,"No matter what happens here... I will haunt you\n for the rest of your life...");
	break;
	case 3:
		draw_text(150,750,"...");
	break;
	case 4:
		draw_text(150,750,"No.");
	break;
	case 5:
		draw_text(150,750,"I'm not afraid of you anymore Cassandra.");
	break;
	case 6:
		draw_text(150,750,"Killing you won't do anything to change what happened that day.");
	break;
	case 7:
		draw_text(150,750,"Y-you're letting me live?...");
	break;
	case 8:
		draw_text(150,750,"Don't get any ideas, if you ever try to do something again\n I'll be there to keep you in check.");
	break;
	case 9:
		draw_text(150,750,"Goodbye...");
	break;
	case 10:
		draw_text(150,750,"So.. About that picnic..");
	break;
	case 11:
		draw_text(150,750,"I could go for some apples right now.");
	break;
	case 12:
		draw_text(150,750,"The outside, is so pretty...");
	break;
}