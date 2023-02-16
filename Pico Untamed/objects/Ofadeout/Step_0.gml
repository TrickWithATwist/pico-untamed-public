
//when pico is out of the room the fade transition begins
if roomfade = 1
{
	image_alpha += fade_speed;
}

if image_alpha >= 1
{
	oPico.transition = 1;
}