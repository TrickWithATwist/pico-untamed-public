draw_set_color(c_white);
draw_set_alpha(1);

for (var i = 0; i < sNumber; i++)
{
	draw_sprite(sDisclaimer, i, (room_width/2) - (sWidth * round(sNumber/2)) + i * sWidth, sHeight*2 + sin_oscillate( -10, 10, duration, get_timer() - i * 1000000*duration/4));
}


draw_set_font(textfont);

draw_text(50,400, "The story, all names, characters, and incidents portrayed in this game \nare fictitious. No identification with actual persons (living or deceased), \nplaces, is intended or should be inferred.");
draw_text(610, 900, "Click anywhere to proceed.");


draw_set_color(c_black);
draw_set_alpha(fadeAlpha);

draw_rectangle(0, 0, room_width, room_height, false);


draw_set_color(c_white);
draw_set_alpha(1);
