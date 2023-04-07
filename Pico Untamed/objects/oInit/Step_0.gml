if (clicked)
{
	cooldown = max(0, cooldown - 1);
	if (cooldown = 0) room_goto_next();
}
