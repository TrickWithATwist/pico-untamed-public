//when shooting animation stops keep gun out and stay still
if (alreadyshot = 0) and (sprite_index = picoshoot)  
{
	image_speed = 0;
	image_index = 9;
	alreadyshot = 1;
}
if sprite_index = picoshot
{
	image_speed = 0;
	image_index = 4;
}