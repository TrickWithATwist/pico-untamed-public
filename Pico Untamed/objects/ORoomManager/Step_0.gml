if uziunlock = 1
{
}

//dialogue start for room 12 floor 1
if (room = f1r12) and (f1r12dialogue = 0)
{
	//creates textbox and makes buttons/ other gui disappear
	obuttondown.visible = false;
	instance_create_layer(0,0,"fadein",otextbox);
	otextbox.text_showing = 1;
	layer_set_visible("inventory", false);
	layer_set_visible("uzi", false);
	otextbox.dialogue = 8;
	f1r12dialogue = 1;
}

//big brain move
if (bffirsttime = 1) and (room != f1r2)
{
	bffirsttime = 2;
}

//medalcode 
if good != 1
{
	if (!MD)
	{
		ng_unlockmedal(73393);
		MD = true;
	}
}