//grenade arc
x += lengthdir_x(flySpeed, flyDirection);
y += lengthdir_y(flySpeed, flyDirection);
flyStep = point_distance(x, y, xprevious, yprevious);
flyTravel = flyTravel + flyStep;
arc = (dsin((flyTravel / flyDistance) * 180)) * flyHeight;

if (flyTravel > flyDistance) && (flySpeed != 0)
{
	flySpeed = 0;
	cooldownCurrent = cooldown;
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
