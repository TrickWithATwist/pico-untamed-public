if (audio_group_is_loaded(audiogroup_music))
{
	if (lastMusState != musState)
	{
		//i have to stop sounds like this because the gamemaker html export sucks so i cant use audio_group_stop_all - rahim
		audio_stop_sound(musIntro);
		audio_stop_sound(musLoop);
		audio_stop_sound(musRoom6);
		
		switch (musState)
		{
			case music.floor1intro:
				audio_play_sound(musIntro, 0, false);
			break;
			
			case music.floor1loop:
				audio_play_sound(musLoop, 0, true);
			break;
			
			case music.room6:
				audio_play_sound(musRoom6, 0, false);
			break;
			
			//default:
				
		}
		
		lastMusState = musState;
	}
	
	//handle floor1 intro to loop switch
	if (musState == music.floor1intro)
	{
		if (!audio_is_playing(musIntro)) musState = music.floor1loop;
	}
}
else audio_group_load(audiogroup_music);
