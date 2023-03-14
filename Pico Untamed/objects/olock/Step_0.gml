/// behaviors depending on value of lock present 
if lockpresent = 0
{
	visible = 0;
	y = initialy;
	vsp = 2;
}
if lockpresent = 1
{
	visible = true; 
	
	//glide up to the screen
	if (y <= finaly) = false
	{
		y -= vsp;
		if y > 300
		{
			vsp += 40/30;
		}
		else
		{
			if vsp != 2
			{
				vsp -= 160/60;
			}
		}
	}
}