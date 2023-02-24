

//function only works if visible

if visible = true
{

if clicked = 0
{

	//get pico to move
	oPico.finalx = x
	oPico.picomove = 1;

	//turn invisible 
	visible = false;
	
	//change clicked value
	clicked = 1;
}


//make pico turn right
oPico.image_xscale = .6;

//destroys other buttons if they are in the room
if instance_exists(obuttonleft)
{
	obuttonleft.visible = false;
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