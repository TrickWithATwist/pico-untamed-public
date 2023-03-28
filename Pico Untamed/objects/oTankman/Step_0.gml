//reaction if pico shoots
if (oPico.shooting = 1) and (tankscared = 0) 
{
	sprite_index = Tankmanscared;
	tankscared = 1;
}
if ORoomManager.Tankmansaved = 1
{
	instance_destroy();
}