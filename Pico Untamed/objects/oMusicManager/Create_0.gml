enum music
{
	none,
	floor1intro,
	floor1loop,
	fleetboss,
	floor2,
	size
}

audio_group_load(audiogroup_music);

musState = music.none;
lastMusState = -1;

stopCooldown = -1;
