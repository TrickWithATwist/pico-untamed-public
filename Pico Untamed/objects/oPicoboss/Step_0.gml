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
}
if right = 1
{
	x += 10 ; 
}
//will add sprite index changes and such soon