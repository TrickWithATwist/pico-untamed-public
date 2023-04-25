//reaction if pico shoots
if (oPico.shooting = 1) and (tankscared = 0) 
{
	sprite_index = darnelscared;
	tankscared = 1;
	
	if (!medalDone)
	{
		ng_unlockmedal(73390);
		medalDone = true;
	}
}

if ORoomManager.darnellsaved = 1
{
	instance_destroy();
}
