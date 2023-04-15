switch (state)
{
	case atomicaState.top:
		y += (320 - y) * 0.1;
		
		//Smoke
		smokeCooldownCurrent = max( 0, smokeCooldownCurrent-1 );
		if (smokeCooldownCurrent == 0)
		{
			instance_create_layer(x-70, y+10, layer, oSmoke);
			smokeCooldownCurrent = smokeCooldown;
		}
		
		if (round(y) == 320)
		{
			oscillate = 0;
			
			//Destroy smoke
			smokeCooldownCurrent = 0;
			if (instance_exists(oSmoke)) instance_destroy(oSmoke);
			
			hoveringCooldownCurrent = hoveringCooldown;
			state = atomicaState.hovering;
		}
	break;
	
	case atomicaState.hovering:
		oscillate += delta_time;
		
		x = room_width/2 + sin_oscillate(-5,5,8,oscillate);
		y = 320 + sin_oscillate(-5,5,4,oscillate);
		
		//Smoke
		smokeCooldownCurrent = max( 0, smokeCooldownCurrent-1 );
		if (smokeCooldownCurrent == 0)
		{
			instance_create_layer(x-70, y+10, layer, oSmoke);
			smokeCooldownCurrent = smokeCooldown;
		}
		
		hoveringCooldownCurrent = max( 0, hoveringCooldownCurrent-1 );
		if (hoveringCooldownCurrent == 0)
		{
			oscillate = 0;
			
			//Destroy smoke
			smokeCooldownCurrent = 0;
			if (instance_exists(oSmoke)) instance_destroy(oSmoke);
			
			sprite_index = atomicafly;
			flyingCooldownCurrent = flyingCooldown;
			state = atomicaState.flying;
		}
	break;
	
	case atomicaState.flying:
		oscillate += delta_time;
		
		x = sin_oscillate(-384, room_width+384, 10, oscillate);
		y = 320 + sin_oscillate(-50, 50, 5, oscillate);
		
		//Smoke
		smokeCooldownCurrent = max( 0, smokeCooldownCurrent-1 );
		if (smokeCooldownCurrent == 0)
		{
			instance_create_layer(x+80*sign(image_xscale), y+10, layer, oSmoke);
			smokeCooldownCurrent = smokeCooldown;
		}
		
		
		//Left Right Detection
		if (round(x) == -384) //Left
		{
			rightOneFrameDone = false;
			
			if (!leftOneFrameDone)
			{
				leftOneFrame = true;
				leftOneFrameDone = true;
			}
		}
		
		if (leftOneFrame)
		{
			if (chance(0.18, 1)) laughPlay = true;
			
			//Destroy smoke
			smokeCooldownCurrent = 0;
			if (instance_exists(oSmoke)) instance_destroy(oSmoke);
			
			image_xscale = scale;
			
			leftOneFrame = false;
		}
		
		
		if (round(x) == room_width+384) //Right
		{
			leftOneFrameDone = false;
			
			if (!rightOneFrameDone)
			{
				rightOneFrame = true;
				rightOneFrameDone = true;
			}
		}
		
		if (rightOneFrame)
		{
			if (chance(0.18, 1)) laughPlay = true;
			
			//Destroy smoke
			smokeCooldownCurrent = 0;
			if (instance_exists(oSmoke)) instance_destroy(oSmoke);
			
			image_xscale = scale * -1;
			rightOneFrame = false;
		}
		
		//Play Laugh Sound funnymomen ts
		if (laughPlay)
		{
			if (laugh == 0)
			{
				audio_play_sound(sndAtomicaLaugh, 1, false);
			}
			else
			{
				audio_play_sound(sndAtomicaLaugh2, 1, false);
			}
			
			laugh++;
			laugh = laugh mod 2;
			laughPlay = false;
		}
		
		flyingCooldownCurrent = max( 0, flyingCooldownCurrent-1 );
		if (flyingCooldownCurrent == 0)
		{
			oscillate = 0;
			
			//Destroy smoke
			smokeCooldownCurrent = 0;
			if (instance_exists(oSmoke)) instance_destroy(oSmoke);
			
			sprite_index = atomicajump;
			image_xscale = scale;
			hoveringCooldownCurrent = hoveringCooldown;
			
			
			leftOneFrame = false;
			leftOneFrameDone = false;
			
			rightOneFrame = false;
			rightOneFrameDone = false;
			
			state = atomicaState.hovering;
		}
	break;
			
	//default:
				
}
