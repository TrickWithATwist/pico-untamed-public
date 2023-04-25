if ORoomManager.idcardunlock = 1
{
	image_alpha += 5/60;
}
if ORoomManager.bffirsttime = 1
{
	instance_destroy();
}