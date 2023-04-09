enum music
{
	none,
	floor1intro,
	floor1loop,
	fleetboss,
	size
}

audio_group_load(audiogroup_music);

musState = music.none;
lastMusState = -1;

stopCooldown = -1;
