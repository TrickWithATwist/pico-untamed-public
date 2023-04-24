//Button
if (oButton.image_alpha == 0) && (oButton.clicked && oButton.buttonCurrent == 0)
{
	audio_stop_all();
	room_goto_next();
}
