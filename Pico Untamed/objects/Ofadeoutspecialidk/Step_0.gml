
if roomfade = 1
{
	image_alpha += fade_speed;
}

if image_alpha >= 1
{
	room_goto(f2r8real);
	ORoomManager.myroom = 8;
	ORoomManager.mydirection = 0;
	atomicadefeated = 1;
}