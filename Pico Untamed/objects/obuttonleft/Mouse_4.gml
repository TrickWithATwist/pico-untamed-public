
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


//make pico turn left
oPico.image_xscale = -.6;

