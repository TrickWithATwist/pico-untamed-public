//reaction if pico shoots
if (oPico.shooting = 1) and (tankscared = 0) 
{
	sprite_index = nenescared;
	tankscared = 1;
	
	//Scare friends medal
	if (!medalDone)
	{
		ng_unlockmedal(73390);
		medalDone = true;
	}
}

if ORoomManager.nenesaved = 1
{
	instance_destroy();
}
