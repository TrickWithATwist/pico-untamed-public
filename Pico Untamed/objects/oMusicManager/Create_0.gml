enum music
{
	none,
	floor1intro,
	floor1loop,
	room6,
	size
}

audio_group_load(audiogroup_music);

musState = music.none;
lastMusState = -1;
