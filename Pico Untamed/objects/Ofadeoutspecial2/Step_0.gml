
if roomfade = 1
{
	image_alpha += fade_speed;
}

if image_alpha >= 1
{
	room_goto(f2r5);
	ORoomManager.myroom = 5;
	ORoomManager.mydirection = 1;
}