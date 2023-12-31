
// hover is a boolean variable checking if mouse is touching hitbox
var hover = point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom);

// if hover is true then image scale increases to max value, else decreases to min 
if hover = 1
{
	
	image_xscale = lerp(image_xscale, scale_max, stretch_speed);
	image_yscale = lerp(image_yscale, scale_max, stretch_speed);
}
else
{
	
	image_xscale = lerp(image_xscale, start_scale, stretch_speed);
	image_yscale = lerp(image_yscale, start_scale, stretch_speed);
	
}
