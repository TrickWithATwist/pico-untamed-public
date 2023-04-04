x = mouse_x;
y = mouse_y;
//follows mouse



if place_meeting(x,y,ofleetboss)
{
	if oPicoboss.protected = 0
	{
		sprite_index = stargetlockon;
	}
	else
	{
		sprite_index = starget;
	}
}
else
{
	sprite_index = starget;
}
//changes color when hovering over boss