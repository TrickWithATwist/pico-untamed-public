if cutscenept = 0
{
	instance_create_layer(0,0,"fadein",otextbox);
	otextbox.text_showing = 1;
	//layer_set_visible("inventory", false);
	layer_set_visible("uzi", false);
	otextbox.dialogue = 38;
	//oneframe = 1;
	cutscenept = 1;
}
if cutscenept = 2
{
	sprite_index = atomicajump;
	gohigh = 1;
}
if gohigh = 1
{
	y -= vsp;
	vsp += 5/60;
	//making smoke come
	if scurrent >= sc
	{
		instance_create_layer(x,y,"shadow", oSmoke);
		scurrent = 0;
	}
	else
	{
		scurrent += 1/10;
	}
	
	
	
}
if y < 0
{
	if raaah != 1
	{
		gohigh = 2;
		opicocutscene3.picocutscenept = 2;
		raaah = 1;
	}
}