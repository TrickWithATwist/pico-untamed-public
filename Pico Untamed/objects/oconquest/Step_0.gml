x += hsp;

if cdcurrent != cd
{
	//sprite_index = conquestidle;
	cdcurrent += 1/60;
}
else
{
	sprite_index = conquesthanddown;
	instance_create_layer(irandom_range(288,1600), -256, "rubble", orubble);
	cdcurrent = 0;
}

if sprite_index = conquesthanddown
{
	if cd2c != cd2
	{
		cd2c += 1/60;
	}
	else
	{
		sprite_index = conquestidle;
		cd2c = 0;
	}
}