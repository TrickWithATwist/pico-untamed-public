switch (state)
{
	case atomicaState.top:
		y += (destY - y) * 0.1;
		
		//Smoke
		smokeCooldownCurrent = max( 0, smokeCooldownCurrent-1 );
		if (smokeCooldownCurrent == 0)
		{
			instance_create_layer(x-70, y+10, layer, oSmoke);
			smokeCooldownCurrent = smokeCooldown;
		}
		
		if (round(y) == destY)
		{
			oscillateXPosition = 0;
			oscillateYPosition = 0;
			
			//Destroy smoke
			smokeCooldownCurrent = 0;
			if (instance_exists(oSmoke)) instance_destroy(oSmoke);
			
			hoveringCooldownCurrent = hoveringCooldown;
			state = atomicaState.hovering;
		}
	break;
	
	case atomicaState.hovering:
		oscillateXPosition += delta_time;
		oscillateXPosition = oscillateXPosition mod oscillateXPositionHovering;
		
		oscillateYPosition += delta_time;
		oscillateYPosition = oscillateYPosition mod oscillateYPositionHovering;
		
		
		x = destX + sin_oscillate(oscillateXMinHovering, oscillateXMaxHovering, oscillateXDurationHovering, oscillateXPosition);
		y = destY + sin_oscillate(oscillateYMinHovering, oscillateYMaxHovering, oscillateYDurationHovering, oscillateYPosition);
		
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
			oscillateXPosition = 0;
			oscillateYPosition = 0;
			
			//Destroy smoke
			smokeCooldownCurrent = 0;
			if (instance_exists(oSmoke)) instance_destroy(oSmoke);
			
			sprite_index = atomicafly;
			flyingCooldownCurrent = flyingCooldown;
			state = atomicaState.flying;
		}
	break;
	
	case atomicaState.flying:
		oscillateXPosition += delta_time;
		oscillateXPosition = oscillateXPosition mod oscillateXPositionFlying;
		
		oscillateYPosition += delta_time;
		oscillateYPosition = oscillateYPosition mod oscillateYPositionFlying;
		
		
		x = sin_oscillate(oscillateXMinFlying, oscillateXMaxFlying, oscillateXDurationFlying, oscillateXPosition);
		y = destY + sin_oscillate(oscillateYMinFlying, oscillateYMaxFlying, oscillateYDurationFlying, oscillateYPosition);
		
		//Smoke
		smokeCooldownCurrent = max( 0, smokeCooldownCurrent-1 );
		if (smokeCooldownCurrent == 0)
		{
			instance_create_layer(x+80*sign(image_xscale), y+10, layer, oSmoke);
			smokeCooldownCurrent = smokeCooldown;
		}
		
		
		//Left Right Detection
		if (round(x) == oscillateXMinFlying) //Left
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
		
		
		if (round(x) == oscillateXMaxFlying) //Right
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
			oscillateXPosition = 0;
			oscillateYPosition = 0;
			
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
