if (room = f1r1) and (ORoomManager.BFsaved = 1)
{
	instance_destroy();
}
if ORoomManager.idcardunlock = 1
{
	image_alpha += 5/60;
}
if ORoomManager.bffirsttime = 1
{
	instance_destroy();
}