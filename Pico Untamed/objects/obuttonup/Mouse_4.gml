

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
oPico.picomove = 2;
clicked = 1;

//destroys other buttons if they are in the room
if instance_exists(obuttonright)
{
	obuttonright.visible = false;
}
if instance_exists(obuttonup)
{
	obuttonup.visible = false;
}
if instance_exists(obuttondown)
{
	obuttondown.visible = false;
}

}