//if the window has not been clicked by pico and door hasn't been unlocked yet 
if (owindow.posterclick = 0) and (ORoomManager.room4unlock = 0)
{
	//make sure player can't interact with window object
	owindow.clickable = 0;
	
	//hides the ui
	obuttonleft.visible = false;
	layer_set_visible("inventory", false);
	layer_set_visible("uzi", false);
	
	//makes lock present if it already is
	if olock.lockpresent = 0
	{
		olock.lockpresent = 1;
	}
	
}