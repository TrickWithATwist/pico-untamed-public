
if roomfade = 1
{
	image_alpha += fade_speed;
}

if image_alpha >= 1
{
	room_goto(f2r7);
	ORoomManager.myroom = 7;
	ORoomManager.mydirection = 1;
}