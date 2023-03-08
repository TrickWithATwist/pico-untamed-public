
//certain situations for rooms
if room = f1r1
{
	text_showing = 0;
	instance_destroy();
	layer_set_visible("inventory", true);
	layer_set_visible("uzi" , true);
	obuttonright.visible = true;
	oposter1.posterclick = 0
}
if (room = f1r2) and (dialogue = 0)
{
	text_showing = 0;
	instance_destroy();
	layer_set_visible("inventory", true);
	layer_set_visible("uzi" , true);
	obuttonright.visible = true;
	obuttonleft.visible = true;
	obuttonup.visible = true;
	oidcardscanner.objectclick = 0
}
if (room = f1r11) and (dialogue = 4)
{
	text_showing = 0;
	instance_destroy();
	layer_set_visible("inventory", true);
	layer_set_visible("uzi" , true);
	//obuttonright.visible = true;
	//obuttonup.visible = true;
	oguard.guardcounter = 2;
}
if (room = f1r12) and (dialogue = 9)
{
	text_showing = 0;
	instance_destroy();
	layer_set_visible("inventory", true);
	layer_set_visible("uzi" , true);
	obuttondown.visible = true;
}





//go to neext dialogue when mouse clicked
dialogue += 1
