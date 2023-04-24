if (hover)
{
	image_blend = c_white;
	draw_sprite_ext(sButtonGun, 0, (xDraw + xOffsetCurrent) + -20, yDraw, 0.5, 0.5, 0, c_white, 1);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(optionStringX, optionStringY, optionString);
}
else image_blend = c_gray;

draw_sprite_ext(sprite_index, 0, xDraw + xOffsetCurrent, yDraw + yOffsetCurrent, image_xscale, image_yscale, 0, image_blend, image_alpha);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
