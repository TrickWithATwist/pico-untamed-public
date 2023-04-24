cooldown = max( 0, cooldown-1 );

if (cooldown == 0) fadeType = 1;


if (fadeType == 0) fadeAlpha = max( 0,				fadeAlpha-fadeInSpeed );
if (fadeType == 1) fadeAlpha = min( 1+fadeOutSpeed, fadeAlpha+fadeOutSpeed );

if (fadeType == 1 && fadeAlpha > 1) room_goto(rTitle);
