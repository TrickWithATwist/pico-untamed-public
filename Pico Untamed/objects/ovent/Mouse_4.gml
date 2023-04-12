if (allow = 1) and (clicked = 0)
{
	clicked = 1;
	//makes sure that other objects cannot be clicked on
	ocock.allow = 0;
	of2blueprints.allow = 0;
	//creates textbox and makes buttons/ other gui disappear
	obuttonright.visible = false;
	obuttonup.visible = false;
	obuttonleft.visible = false;
	instance_create_layer(0,0,"fadein",otextbox);
	otextbox.text_showing = 1;
	layer_set_visible("inventory", false);
	layer_set_visible("uzi", false);
	otextbox.dialogue = 37;	
}