draw_set_font(textfont);
draw_set_color(c_white);

//text changes depending on value of variable
switch(text)
{
	case 1:
		draw_text(150,750,"Just one shot, and it's over for good...");
	break;
	case 2:
		draw_text(150,750,"Are you sure about that?");
	break;
	case 3:
		draw_text(150,750,"You think you have won, but I will haunt you\n for the rest of your days.");
	break;
	case 4:
		draw_text(150,750,"I don't think you'll be able to do much under the ground.");
	break;
	case 5:
		draw_text(150,750,"Whatever you say, hero.");
	break;
	case 6:
		draw_text(150,750,"!!");
	break;
	case 7:
		draw_text(150,750,"*gunshot*");
	break;
	case 8:
		draw_text(150,750,"....");
	break;
	case 9:
		draw_text(150,750,"Hero......");
	break;
	case 10:
		draw_text(150,750,"I'm...... A hero?.......");
	break;
	case 11:
		draw_text(150,750,"...");
	break;
	case 12:
		draw_text(150,750,"The outside, is so pretty...");
	break;
	case 13:
		draw_text(150,750,"But I'm hurting, inside.....");
	break;
	case 14:
		draw_text(150,750,"But things will get better right?...");
	break;
	case 15:
		draw_text(150,750,"Right?");
	break;
}