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
		opicocutscene2.sprite_index = picoidle;
	break;
	case 8:
		otextbox.dialogue = 39;
	break;
	case 9:
		otextbox.dialogue = 43;
	break;
	case 10:
		otextbox.dialogue = 48;
	break;
	case 11:
		otextbox.dialogue = 54;
		opicocutscene4.sprite_index = picoidle;
		opicocutscene4.image_speed = 1;
	break;
}
instance_destroy(ocharacterbox);
instance_destroy();
