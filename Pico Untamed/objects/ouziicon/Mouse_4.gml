
//only work if pico is standing still
if oPico.picomove = 0
{
	//make pico shoot
	//oPico.visible = true;
	oPico.shooting = 1;
	oPico.alreadyshot = 0;
	oPico.image_index = 0;
	oPico.image_speed = 1;

	//play gun sound effect
	if (audio_is_playing(gunsfx)) audio_stop_sound(gunsfx);
	audio_play_sound(gunsfx, 1, 0);
}