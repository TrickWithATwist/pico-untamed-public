if oPicoboss.protected = 0
{
	//play gun sound effect
	if (audio_is_playing(gunsfx)) audio_stop_sound(gunsfx);
	audio_play_sound(gunsfx, 1, 0);
}
if sprite_index = stargetlockon
{
	ofleetboss.fleethp += -2;
}