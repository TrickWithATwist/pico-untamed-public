if of2r6pico.part = 1
{
	if oneframe = 0
	{
		audio_play_sound(guardboom, 1, 0, 1);
		oHPbar.HP += -1;
		sprite_index = guardshoot;
		image_index = 0;
		image_speed = 1;
		oneframe = 1;
	}
}