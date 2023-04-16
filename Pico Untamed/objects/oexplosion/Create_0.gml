//play explosion sound
audio_play_sound(boom, 1, 0);

//damage pico
if place_meeting(x,y,oPicoboss) oHPbar.HP = max(0, oHPbar.HP-2);

image_xscale = .5;
image_yscale = .5;
