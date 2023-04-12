//if grenade is not at the target then it goes to target
x += ((ogrenadetarget.x - x) * .2) 
y += (((ogrenadetarget.y) - y) * .2)
	
//after it gets to the target it explodes
//grenade stays still for one second
if (cooldown > 0)
{
	cooldown--;
}
else
{
	//play explosion sound
	audio_play_sound(boom, 1, 0);
	
	//create explosion object and destroy self
	instance_create_layer(x, y, layer, oexplosion);
	instance_destroy();
}
