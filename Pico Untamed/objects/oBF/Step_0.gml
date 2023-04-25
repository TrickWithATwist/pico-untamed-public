//reaction if pico shoots
if (oPico.shooting = 1) and (BFscared = 0) 
{
	sprite_index = bfscared;
	BFscared = 1;
	
	//Scare friends medal
	if (!medalDone)
	{
		ng_unlockmedal(73390);
		medalDone = true;
	}
}
if ORoomManager.BFsaved = 1
{
	if instance_exists(bfinteract)
	{
		instance_destroy(bfinteract);
	}
	if (BFscared = 0)
	{
		sprite_index = bffreed;
	}
	if ORoomManager.bffirsttime = 2
	{
		instance_destroy();
	}
}