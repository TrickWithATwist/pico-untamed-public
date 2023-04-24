if ( hover )
{
	xOffsetCurrent += (xOffset - xOffsetCurrent) * accel;
	yOffsetCurrent += (yOffset - yOffsetCurrent) * accel;
}
else
{
	xOffsetCurrent += -xOffsetCurrent * decel;
	yOffsetCurrent += -yOffsetCurrent * decel;
}

//Shake
xDraw = x;
//yDraw = y;

xDraw += random_range(-shake,shake);
//yDraw += random_range(-shake,shake);
shake = max(0,shake-((1/shakeLength)*shakeMagnitude));
