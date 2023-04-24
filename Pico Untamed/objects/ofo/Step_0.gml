
if roomfade = 1
{
	image_alpha += fade_speed;
}

if image_alpha >= 1
{
	room_goto(f1r1);
}