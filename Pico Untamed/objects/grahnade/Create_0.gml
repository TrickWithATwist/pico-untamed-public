//arc
arcX = x;
arcY = y;

arcXPrevious = arcX;
arcYPrevious = arcY;

endX = ogrenadetarget.x;
endY = ogrenadetarget.y;

arc = 0; 
flyDirection = point_direction(x, y, endX, endY);
flyDistance = point_distance(x, y, endX,endY);
flySpeed = 25;
flyTravel = 0;
flyStep = 0;
flyHeight = flyDistance / 2;
//flyHeight = clamp(flyHeight, 10, 150);
direction = flyDirection;

//cooldown for stalling time
cooldown = 60;
cooldownCurrent = -1;
