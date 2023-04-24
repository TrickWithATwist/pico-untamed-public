if (!oButton.clicked)
{
	if (audio_is_playing(sndButton)) audio_stop_sound(sndButton);
	audio_play_sound( sndButton, 4, false, 1, 0,);
	hover = true;
}
image_blend = c_white;