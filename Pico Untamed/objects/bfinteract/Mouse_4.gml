

//pico can only interact with bf if he hasn't been saved and not clicked yet
if (ORoomManager.BFsaved = 0) and (canclick = 1)
{
	canclick = 0;
	oidcardscanner.scannerable = 0;
}