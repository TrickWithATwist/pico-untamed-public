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

cooldown = 60*5;
cooldownCurrent = 0;
