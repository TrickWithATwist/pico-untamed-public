
//varaible to have text show
choiceshow = 1;

//sets up dialogue depending on room
switch(room)
{
	case f1r2:
		text = 1;
	break;
	
}

//creates the choice buttons
instance_create_layer(0,0,"fadeout",ochoice1);
instance_create_layer(0,0,"fadeout",ochoice2);