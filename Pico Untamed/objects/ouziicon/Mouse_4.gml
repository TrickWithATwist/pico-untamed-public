
//only work if pico is standing still
if oPico.picomove = 0
{
	//make pico shoot
	oPico.shooting = 1;
	oPico.alreadyshot = 0;
	oPico.image_index = 0;
	oPico.image_speed = 1;

	//play gun sound effect
	audio_play_sound(gunsfx, 1, 0);
}