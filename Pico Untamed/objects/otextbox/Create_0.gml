//determines which box is showing
choice = 0;
//if choice = 0, click to continue will be in the corner
text_showing = 0;
//dialogue
dialogue = 0;

//control dialogue
switch (room)
{
	case f1r1:
		dialogue = 1;
	break;
	case f1r2:
		dialogue = 2;
	break;
}