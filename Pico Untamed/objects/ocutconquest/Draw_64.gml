draw_set_font(textfont);
draw_set_color(c_white);

//text changes depending on value of variable
switch(cut)
{
	case 1:
	draw_text(150,750,"You came earlier than I expected...");
	break;
	case 2:
	draw_text(150,750,"Are you behind all this?");
	break;
	case 3:
	draw_text(150,750,"Perhaps..");
	break;
	case 4:
	draw_text(150,750,"Those eyes... You're not human are you.");
	break;
	case 5:
	draw_text(150,750,"The cybernetic tech, the metalic dong, it all makes sense now.");
	break;
	case 6:
	draw_text(150,750,"You're trying to finish what Cassandra started aren't you?");
	break;
	case 7:
	draw_text(150,750,"I beat one of you aliens before and I'll do it again.");
	break;
	case 8:
	draw_text(150,750,"Looks like we're settling things the fun way.");
	break;
	case 9:
	draw_text(150,750,"Don't you mean the hard way?");
	break;
	case 10:
	draw_text(150,750,"What will be hard about this?");
	break;
}