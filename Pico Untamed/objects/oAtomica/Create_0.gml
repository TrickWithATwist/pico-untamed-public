x = room_width/2;
y = -320;

scale = 0.6;

image_xscale = scale;
image_yscale = scale;

enum atomicaState
{
	top,
	hovering,
	flying,
	size
}

state = 0;

oscillate = 0;

leftOneFrame = false;
leftOneFrameDone = false;

rightOneFrame = false;
rightOneFrameDone = false;

hoveringCooldown = 60*5;
hoveringCooldownCurrent = 0;

flyingCooldown = 60*15;
flyingCooldownCurrent = 0;

smokeCooldown = 3;
smokeCooldownCurrent = 0;

laugh = 0;
laughPlay = false;
