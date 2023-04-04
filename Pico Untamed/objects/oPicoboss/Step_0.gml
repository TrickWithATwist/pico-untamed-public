//some stuff is temp and will be changed l8er
//keyboard check to go right and left
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

//makes sure x is not out of the room
if x < -1
{
	x += 10;
}
else
{
	if x > 1820
	{
		x -= 10;
	}
}

if left = 1
{
	x -= 10;
	sprite_index = picobossmove;
}
else
{
	if right != 1
	{
		sprite_index = picobossidle;
	}
}
if right = 1
{
	x += 10;
	sprite_index = picobossmove;
}
else
{
	if left != 1
	{
		sprite_index = picobossidle;
	}
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
