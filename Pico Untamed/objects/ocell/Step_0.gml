//if room is 2 
//if BF is not saved be visible
if (room = f1r2) and (ORoomManager.BFsaved = 0)
{
	image_alpha = 1;
}
else
{
	if ORoomManager.bffirsttime = 0
	{
		image_alpha -= 1/40;
		if image_alpha < 0
		{
			ORoomManager.bffirsttime = 1;
		}
	}
	else
	{
		instance_destroy();
	}
}