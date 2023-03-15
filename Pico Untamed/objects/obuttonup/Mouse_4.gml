 

//only works if visible

if visible = true 
{

//when mouse clickes the up arrow button pico runs to its direction
if x > oPico.x
{
	oPico.image_xscale = .6;
}
else
{
	oPico.image_xscale = -.6;
}

//pico behavior when up arrow clicked
if room != f1r4
{
	oPico.picomove = 2;
	clicked = 1;
}
if room = f1r4
{
	oPico.picomove = 5;
	clicked = 1;
	oPico.rockdestination = x;
}

//destroys other buttons if they are in the room
if instance_exists(obuttonright)
{
	obuttonright.visible = false;
}
if instance_exists(obuttonleft)
{
	obuttonleft.visible = false;
}
if instance_exists(obuttondown)
{
	obuttondown.visible = false;
}
 
//makes sprite not visible when done
donewithstuff = 1;
}