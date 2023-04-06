
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
	oidcard.ready = 1;
	instance_destroy();
	layer_set_visible("inventory", true);
	layer_set_visible("uzi" , true);
	obuttondown.visible = true;
}

if (room = f1r4) and (dialogue = 10)
{
	text_showing = 0;
	//stupidvar = 1;
	instance_destroy();
	//visible = false;
	layer_set_visible("inventory", true);
	layer_set_visible("uzi" , true);
	obuttonleft.visible = true;
	if instance_exists(obuttonup)
	{
		obuttonup.visible = true;
	}
	owindow.posterclick = 0
}
if (room = f1r5) and (dialogue = 11)
{
	text_showing = 0;
	//stupidvar = 1;
	instance_destroy();
	//visible = false;
	layer_set_visible("inventory", true);
	layer_set_visible("uzi" , true);
	obuttonleft.visible = true;
	oBlueprints.objectclick = 0
	oBigredbutton.buttonallow = 1;
}
if (room = f1r5) and (dialogue = 12)
{
	text_showing = 0;
	instance_destroy();
	//visible = false;
	stupidvar = 1;
	layer_set_visible("inventory", true);
	layer_set_visible("uzi" , true);
	obuttonleft.visible = true;
	oBlueprints.objectclick = 0;
	oBlueprints.able = 1;
	oBigredbutton.buttonallow = 1;
}
if (room = f1r2) and (dialogue = 13)
{
	text_showing = 0;
	instance_destroy();
	//visible = false;
	//set up the choice
	instance_create_layer(0,0,"fadein",ocharacterbox);
	ocharacterbox.ctext = 1
	
}
if (room = f1r2) and (dialogue = 15)
{
	text_showing = 0;
	instance_destroy();
	layer_set_visible("inventory", true);
	layer_set_visible("uzi" , true);
	obuttonright.visible = true;
	obuttonleft.visible = true;
	obuttonup.visible = true;
	oidcardscanner.objectclick = 0;
	oidcardscanner.scannerable = 1;
}
if (room = f1r3) and (dialogue = 16)
{
	text_showing = 0;
	instance_destroy();
	//visible = false;
	//set up the choice
	instance_create_layer(0,0,"fadein",ocharacterbox);
	ocharacterbox.ctext = 2
	
}
if (room = f1r3) and (dialogue = 17)
{
	text_showing = 0;
	instance_destroy();
	layer_set_visible("inventory", true);
	layer_set_visible("uzi" , true);
	obuttonright.visible = true;
	obuttonleft.visible = true;
	if instance_exists(obuttonup)
	{
		obuttonup.visible = true;
	}
	//oidcardscanner.objectclick = 0;
	//oidcardscanner.scannerable = 1;
}
if (room = f1r3) and (dialogue = 18)
{
	text_showing = 0;
	instance_destroy();
	layer_set_visible("inventory", true);
	layer_set_visible("uzi" , true);
	obuttonright.visible = true;
	obuttonleft.visible = true;
	if instance_exists(obuttonup)
	{
		obuttonup.visible = true;
	}
	//oidcardscanner.objectclick = 0;
	//oidcardscanner.scannerable = 1;
}
if (room = f1r6p1) and (dialogue = 19)
{
	text_showing = 0;
	instance_destroy();
	//visible = false;
	//set up the choice
	instance_create_layer(0,0,"fadein",ocharacterbox);
	ocharacterbox.ctext = 3;
	
}
if (room = f1r6p1) and (dialogue = 20)
{
	text_showing = 0;
	instance_destroy();
	//layer_set_visible("inventory", true);
	//layer_set_visible("uzi" , true);
	//obuttonright.visible = true;
	//obuttonleft.visible = true;
	//if instance_exists(obuttonup)
	//{
	//	obuttonup.visible = true;
	//}
	//oidcardscanner.objectclick = 0;
	//oidcardscanner.scannerable = 1;
	//ofleetp1.cutscenept = 1;
	opicocutscene1.picocutscenept = 1;
}
if (room = f1r6p1) and (dialogue = 21)
{
	text_showing = 0;
	instance_destroy();
	//layer_set_visible("inventory", true);
	//layer_set_visible("uzi" , true);
	//obuttonright.visible = true;
	//obuttonleft.visible = true;
	//if instance_exists(obuttonup)
	//{
	//	obuttonup.visible = true;
	//}
	//oidcardscanner.objectclick = 0;
	//oidcardscanner.scannerable = 1;
	//ofleetp1.cutscenept = 1;
	opicocutscene1.picocutscenept = 1;
}
if (room = f1r6p2) and (dialogue = 22)
{
	text_showing = 0;
	instance_destroy();
	//visible = false;
	//set up the choice
	instance_create_layer(0,0,"fadein",ocharacterbox);
	ocharacterbox.ctext = 4;
	
}
//go to neext dialogue when mouse clicked
if stupidvar = 0
{
	dialogue += 1
}
