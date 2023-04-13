//play explosion sound
audio_play_sound(boom, 1, 0);

//kill guard
if place_meeting(x,y,oguardshield)
{
	oguardshield.guardalive = 0;
	oguardshield.deadstart = true;
}

image_xscale = .5;
image_yscale = .5;