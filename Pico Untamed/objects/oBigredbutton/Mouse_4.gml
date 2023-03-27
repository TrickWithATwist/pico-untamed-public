if (buttonallow = 1) and (ORoomManager.armoryunlock = 0)
{
	//when the mouse is pressed then the room stuff gets unlocked
	ORoomManager.room5buttonpress = 1;
	ORoomManager.armoryunlock = 1;
	ORoomManager.Tankmansaved = 1;
	objectclick = 1;
	oBlueprints.able = 0;
	//creates textbox and makes buttons/ other gui disappear
	obuttonright.visible = false;
	//obuttonup.visible = false;
	obuttonleft.visible = false;
	instance_create_layer(0,0,"fadein",otextbox);
	otextbox.text_showing = 1;
	layer_set_visible("inventory", false);
	layer_set_visible("uzi", false);
	otextbox.dialogue = 12;
	//tehe
}