//destroys the choice box and disappears
ocharacterbox.choiceshow = 0;
instance_destroy(ochoice2);

//decides response depending on choicebox
instance_create_layer(0,0,"fadein",otextbox);
otextbox.text_showing = 1;
switch (ocharacterbox.ctext)
{
	case 1:
		otextbox.dialogue = 14;
	break;
	case 2:
		otextbox.dialogue = 17;
	break;
	case 3:
		otextbox.dialogue = 20;
	break;
	case 4:
		otextbox.dialogue = 23;
	break;
	case 5:
		otextbox.dialogue = 25;
	break;
	case 6:
		otextbox.dialogue = 27;
	break;
	case 7:
		otextbox.dialogue = 30;
	break;
}
instance_destroy(ocharacterbox);
instance_destroy();
