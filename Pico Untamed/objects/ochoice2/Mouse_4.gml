//destroys the choice box and disappears
ocharacterbox.choiceshow = 0;
instance_destroy(ochoice1);

//decides response depending on choicebox
instance_create_layer(0,0,"fadein",otextbox);
otextbox.text_showing = 1;
switch (ocharacterbox.ctext)
{
	case 1:
		otextbox.dialogue = 14;
	break;
	case 2:
		otextbox.dialogue = 18;
	break;
	case 3:
		otextbox.dialogue = 21;
	break;
}
instance_destroy(ocharacterbox);
instance_destroy();