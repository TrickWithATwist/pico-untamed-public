layer_set_visible("uzi", false);

oscillateXPosition += delta_time;
oscillateXPosition = oscillateXPosition mod oscillateXPositionFlying;

oscillateYPosition += delta_time;
oscillateYPosition = oscillateYPosition mod oscillateYPositionFlying;

x = cos_oscillate(oscillateXMinFlying, oscillateXMaxFlying, oscillateXDurationFlying, oscillateXPosition);
y = destY + sin_oscillate(oscillateYMinFlying, oscillateYMaxFlying, oscillateYDurationFlying, oscillateYPosition);


if cdcurrent != cd
{
	//sprite_index = conquestidle;
	cdcurrent += 1/60;
}
else
{
	sprite_index = conquesthanddown;
	instance_create_layer(oPicoboss.x, -256, "rubble", orubble);
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


if hp = 0
{
	oflashconquest.gotime = 1;
}