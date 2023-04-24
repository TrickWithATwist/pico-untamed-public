if (fadeType == 0) fadeAlpha = max( 0,				fadeAlpha-fadeInSpeed );
if (fadeType == 1) fadeAlpha = min( 1+fadeOutSpeed, fadeAlpha+fadeOutSpeed );

//Start Button
if (oButton.clicked && oButton.buttonCurrent == 0)
{
	fadeType = 1;
	
	if (fadeType == 1 && fadeAlpha > 1)
	{
		audio_stop_all();
		room_goto(f1r1);
	}
}
