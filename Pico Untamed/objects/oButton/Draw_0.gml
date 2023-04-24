if (hover)
{
	image_blend = c_white;
	draw_sprite_ext(sButtonGun, 0, (xDraw + xOffsetCurrent) + -20, yDraw, 0.5, 0.5, 0, c_white, 1);
}
else image_blend = c_gray;

draw_sprite_ext(sprite_index, 0, xDraw + xOffsetCurrent, yDraw + yOffsetCurrent, image_xscale, image_yscale, 0, image_blend, image_alpha);
