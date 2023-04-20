//if room is 2 
//if Tankman is not saved be visible
if ((room = f2r4) or (room = f2r2)) and (ORoomManager.nenesaved = 0)
{
	image_alpha = 1;
}
else
{
	visible = false;
}