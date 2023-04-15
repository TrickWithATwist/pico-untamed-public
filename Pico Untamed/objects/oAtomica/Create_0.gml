x = room_width/2;
y = -320;

scale = 0.6;

image_xscale = scale;
image_yscale = scale;

enum atomicaState
{
	top,
	middle,
	hovering,
	size
}

state = 0;

oscillate = 0;

xScalePrevious = image_xscale;

leftOneFrame = false;
leftOneFrameDone = false;

rightOneFrame = false;
rightOneFrameDone = false;

cooldown = 60*5;
cooldownCurrent = 0;

smokeCooldown = 3;
smokeCooldownCurrent = 0;

laugh = 0;
laughPlay = false;
