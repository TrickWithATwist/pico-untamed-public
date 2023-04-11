if gscount = 0
{
	//creates textbox and makes buttons/ other gui disappear
	obuttonright.visible = false;
	obuttonleft.visible = false;
	instance_create_layer(0,0,"fadein",otextbox);
	otextbox.text_showing = 1;
	layer_set_visible("inventory", false);
	layer_set_visible("uzi", false);
	otextbox.dialogue = 35;
}