//grenade arc
arcX += lengthdir_x(flySpeed, flyDirection);
arcY += lengthdir_y(flySpeed, flyDirection);
flyStep = point_distance(arcX, arcY, arcXPrevious, arcYPrevious);
flyTravel = flyTravel + flyStep;
arc = (dsin((flyTravel / flyDistance) * 180)) * flyHeight;

arcXPrevious = arcX;
arcYPrevious = arcY;

if (flySpeed != 0)
{
	//update position with arc
	x = arcX;
	y = arcY - arc;
	
	image_angle += rotationSpeed * -sign(x - xstart);
	
	//grenade landed
	if (flyTravel > flyDistance)
	{
		x = endX;
		y = endY;
		flySpeed = 0;
		cooldownCurrent = cooldown;
	}
}

//after it gets to the target it explodes
//grenade stays still for one second
if (cooldownCurrent != 0)
{
	cooldownCurrent--;
}
else
{
	//create explosion object and destroy self
	instance_create_layer(x, y, layer, oexplosion);
	instance_destroy();
}
