for (var i = 0; i < image_number; i++)
{
	draw_sprite(sDisclaimer, i, (room_width/2) - (sprite_width * round(image_number/2)) + i * sprite_width, sprite_height*2 + sin_oscillate( -10, 10, duration, get_timer() - i * 1000000*duration/4));
}
