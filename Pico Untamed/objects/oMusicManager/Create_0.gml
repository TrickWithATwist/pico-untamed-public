enum music
{
	none,
	floor1intro,
	floor1loop,
	room6,
	size
}

musState = music.none;
lastMusState = -1;

introCooldown = 60*30;
introCooldownCurrent = 0;

stopCooldown = -1;
