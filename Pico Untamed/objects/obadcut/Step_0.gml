instance_destroy(oHPbar);
if text = 6
{
	sprite_index = endcut3bad;
}
if text = 7
{
	sprite_index = fade;
	if oneframe = 0
	{
		audio_play_sound(sndButtonPress, 0, 1);
		oneframe = 1;
	}
}
if text = 8
{
	sprite_index = endcut4bad;
}
if text = 11
{
	sprite_index = fade;
}
if text = 16
{
	sprite_index = fade;
	ofo4.roomfade = 1;
}

