if cutscenept = 0
{
	sprite_index = sfleetbase; 
}
if oneframe = 0
{
	instance_create_layer(0,0,"fadein",otextbox);
	otextbox.text_showing = 1;
	//layer_set_visible("inventory", false);
	layer_set_visible("uzi", false);
	otextbox.dialogue = 19;
	oneframe = 1;
}
if cutscenept = 1
{
	sprite_index = sfleetjump;
	if image_index = 4
	{
		gohigh = 1;
	}
}
if gohigh = 1
{
	y -= vsp;
	vsp += 5/60;
}