//if touching pico then set protection to be greater than 0
if place_meeting(x,y,oPicoboss)
{
	if obossbox2.boxhp > 1
	{
		oPicoboss.protected = 2;
	}
}
else
{
	oPicoboss.protected = 0;
}