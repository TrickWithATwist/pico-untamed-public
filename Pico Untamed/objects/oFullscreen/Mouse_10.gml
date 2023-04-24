/*if (!oButton.clicked)
{*/
	if (audio_is_playing(hoverSound)) audio_stop_sound(hoverSound);
	audio_play_sound( hoverSound, 4, false, 1, 0, hoverPitch );
	hover = true;
//}
