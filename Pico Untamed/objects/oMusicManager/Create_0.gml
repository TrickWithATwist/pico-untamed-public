enum music
{
	none,
	titleintro,
	titleloop,
	cutscene,
	floor1intro,
	floor1loop,
	fleetboss,
	floor2,
	atomicaboss,
	floor2room8,
	finalboss,
	cutsceneending,
	size
}

audio_group_load(audiogroup_music);

musState = music.none;
lastMusState = -1;

stopCooldown = -1;
