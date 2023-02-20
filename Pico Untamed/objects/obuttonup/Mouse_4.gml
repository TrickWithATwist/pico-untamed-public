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
