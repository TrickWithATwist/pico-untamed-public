if (audio_group_is_loaded(audiogroup_music))
{
	stopCooldown = max(-1, stopCooldown - 1);
	
	if (stopCooldown == 0)
	{
		audio_sound_gain(musF1Intro, 1, 0);
		audio_sound_gain(musF1Loop, 1, 0);
		audio_sound_gain(musFleetBoss, 1, 0);
		musState = music.none;
	}
	
	if (lastMusState != musState)
	{
		//i have to stop sounds like this because the gamemaker html export sucks so i cant use audio_group_stop_all - rahim
		audio_stop_sound(musF1Intro);
		audio_stop_sound(musF1Loop);
		audio_stop_sound(musFleetBoss);
		
		switch (musState)
		{
			case music.floor1intro:
				audio_play_sound(musF1Intro, 0, false, 1);
			break;
			
			case music.floor1loop:
				audio_play_sound(musF1Loop, 0, true, 1);
			break;
			
			case music.fleetboss:
				audio_play_sound(musFleetBoss, 0, true, 1);
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
