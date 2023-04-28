//medal code
//trigger
MD = false;








//rahim's code
x = room_width/2;
y = -320;

scale = 0.6;

image_xscale = scale;
image_yscale = scale;

hp = 250;

enum atomicaState
{
	top,
	hovering,
	flying,
	dead,
	size
}

state = 0;

destX = room_width/2;
destY = 320;

#region Oscillation
oscillateXMinHovering = -5;
oscillateXMaxHovering = 5;

oscillateXDurationHovering = 10;

oscillateYMinHovering = -5;
oscillateYMaxHovering = 5;

oscillateYDurationHovering = 5;


oscillateXMinFlying = -384;
oscillateXMaxFlying = room_width + 384;

oscillateXDurationFlying = 10;

oscillateYMinFlying = -50;
oscillateYMaxFlying = 50;

oscillateYDurationFlying = 5;


oscillateXPositionHovering = 1000000*oscillateXDurationHovering;
oscillateYPositionHovering = 1000000*oscillateYDurationHovering;

oscillateXPositionFlying = 1000000*oscillateXDurationFlying;
oscillateYPositionFlying = 1000000*oscillateYDurationFlying;

oscillateXPosition = 0;
oscillateYPosition = 0;
#endregion


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

flipCount = 0;

laugh = 0;
laughPlay = false;

bombCooldown = 60;
bombCooldownCurrent = bombCooldown;

lerping = false;

displayon = true;
displayalpha = 0;
