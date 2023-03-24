//object gets clicked and has textbox go up if not clicked yet
if (objectclick = 0) and (oPico.picomove = 0) and (clickable = 1)
{
	objectclick = 1;
	oBigredbutton.buttonallow = 0;
	//creates textbox and makes buttons/ other gui disappear
	obuttonright.visible = false;
	//obuttonup.visible = false;
	obuttonleft.visible = false;
	instance_create_layer(0,0,"fadein",otextbox);
	otextbox.text_showing = 1;
	layer_set_visible("inventory", false);
	layer_set_visible("uzi", false);
	otextbox.dialogue = 11;
}