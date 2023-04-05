//reaction if pico shoots
if (oPico.shooting = 1) and (BFscared = 0) 
{
	sprite_index = bfscared;
	BFscared = 1;
	ng_unlockmedal(73390);
}