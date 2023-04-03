//if touching pico then set protection to be greater than 0
if place_meeting(x,y,oPicoboss)
{
	if obossbox1.boxhp > 1
	{
		oPicoboss.protected = 1;
	}
}
else
{
	oPicoboss.protected = 0;
}