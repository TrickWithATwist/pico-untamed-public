switch (state)
{
	case atomicaState.top:
		y += (320 - y) * 0.1;
		
		if (round(y) == 320)
		{
			oscillate = 0;
			cooldownCurrent = cooldown;
			state = atomicaState.middle;
		}
	break;
	
	case atomicaState.middle:
		oscillate += delta_time;
		
		x = room_width/2 + sin_oscillate(-5,5,8,oscillate);
		y = 320 + sin_oscillate(-5,5,4,oscillate);
		
		cooldownCurrent = max( 0, cooldownCurrent-1 );
		
		if (cooldownCurrent == 0)
		{
			oscillate = 0;
			sprite_index = atomicafly;
			state = atomicaState.hovering;
		}
	break;
	
	case atomicaState.hovering:
		oscillate += delta_time;
		
		x = sin_oscillate(384, room_width-384, 10, oscillate);
		y = 320 + sin_oscillate(-10, 10, 5, oscillate);
		
		direction = point_direction(xprevious, 0, x, 0);
		image_xscale = (direction == 0 ?  -1 : 1) * scale;
	break;
			
	//default:
				
}
