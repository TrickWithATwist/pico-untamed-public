if oneframe = 0
{
	instance_create_layer(0,0,"fadein",otextbox);
	otextbox.text_showing = 1;
	//layer_set_visible("inventory", false);
	layer_set_visible("uzi", false);
	otextbox.dialogue = 47;
	oneframe = 1;
}
if ded = 2
{
	sprite_index = atomicadead;
	if of2 = 0
	{
		//audio_play_sound(fleetshotgun, 1, 0);
		ORoomManager.good = 0;
		of2 = 1;
	}
}
if animationdone = 1
{
	image_index = 6;
	if cooldowncurrent != cooldown
	{
		cooldowncurrent += 1/60
	}
	else
	{
		if of3 = 0
		{
			opicocutscene4.sprite_index = picoshame;
			opicocutscene4.image_speed = 1;
			instance_create_layer(0,0,"fadein",otextbox);
			otextbox.text_showing = 1;
			//layer_set_visible("inventory", false);
			layer_set_visible("uzi", false);
			otextbox.dialogue = 60;
			of3 = 1;
		}
	}
}