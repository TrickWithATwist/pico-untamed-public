//some stuff is temp and will be changed l8er
//keyboard check to go right and left
var move = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * 10;

//makes sure x is not out of the room
x = clamp(x, 0, room_width);

//player movement
if (move != 0)
{
	x += move;
	sprite_index = picobossmove;
}
else
{
	sprite_index = picobossidle;
}


oPicoboss.protected = 0;

if (place_meeting(x,y,osafespot1))
{
	if obossbox1.boxhp > 1
	{
		oPicoboss.protected = 1;
	}
}

if (place_meeting(x,y,osafespot2))
{
	if obossbox2.boxhp > 1
	{
		oPicoboss.protected = 2;
	}
}
