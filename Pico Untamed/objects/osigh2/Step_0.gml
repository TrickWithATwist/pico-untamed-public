lol = point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom);
if lol = 1
{
	otgun.locationy = 692;
	otgun.visible = true;
}
else
{
	if otgun.locationy = 692
	{
		otgun.visible = false;
	}
}