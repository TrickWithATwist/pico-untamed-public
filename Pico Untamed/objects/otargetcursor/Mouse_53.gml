if oPicoboss.protected = 0
{
	//play gun sound effect
	if (audio_is_playing(gunsfx)) audio_stop_sound(gunsfx);
	audio_play_sound(gunsfx, 1, 0);
	
	if place_meeting(x,y,ofleetboss)
	{
		ofleetboss.fleethp = max( 0, ofleetboss.fleethp-2 );
	}
	
	if place_meeting(x,y,oAtomica)
	{
		oAtomica.hp = max( 0, oAtomica.hp-2 );
	}
	
	if place_meeting(x,y,ocassboss)
	{
		ocassboss.hp = max( 0, ocassboss.hp-2 );
	}
	if place_meeting(x,y,orubble)
	{
		orubble.tact = 2;
	}
	if place_meeting(x,y,oconquest)
	{
		oconquest.hp = max( 0, oconquest.hp-2 );
	}
}
