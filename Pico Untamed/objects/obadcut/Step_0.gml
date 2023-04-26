instance_destroy(oHPbar);
if text = 5
{
	sprite_index = endcut2bad;
}
if text = 6
{
	sprite_index = endcut3bad;
}
if text = 7
{
	sprite_index = fade;
	if oneframe = 0
	{
		audio_play_sound(sndButtonPress, 1, 0);
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
	if (!MD)
	{
		ng_unlockmedal(73395);
		MD = true;
	}
}

