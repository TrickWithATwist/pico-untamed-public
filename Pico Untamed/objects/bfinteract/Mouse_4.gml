

//pico can only interact with bf if he hasn't been saved and not clicked yet
if (ORoomManager.BFsaved = 0) and (canclick = 1)
{
	canclick = 0;
	oidcardscanner.scannerable = 0;
	//creates textbox and makes buttons/ other gui disappear
	obuttonright.visible = false;
	obuttonup.visible = false;
	obuttonleft.visible = false;
	instance_create_layer(0,0,"fadein",otextbox);
	otextbox.text_showing = 1;
	layer_set_visible("inventory", false);
	layer_set_visible("uzi", false);
	otextbox.dialogue = 13;
}