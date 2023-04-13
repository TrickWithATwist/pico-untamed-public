

if go = 1
{
if (y <= 704) and wah = 0
{
	y += 40;
}
else
{
	wah = 1;
}

if wah = 1
{
	y = 704;
	sprite_index = picocrouch;
	if oneframe = 1
	{
		image_index = 0;
		oneframe = 2;
	}
} 
}

if wah = 2
{
	oPico.visible = true;
	layer_set_visible("inventory", true);
	layer_set_visible("uzi", true);
	wah = 3;
}