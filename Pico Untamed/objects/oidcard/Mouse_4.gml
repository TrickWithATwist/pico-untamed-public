if (ready = 1) and (ORoomManager.idcardunlock = 0)
{
	audio_play_sound(meow, 1, 0);
	visible = false;
	ORoomManager.idcardunlock = 1;
}