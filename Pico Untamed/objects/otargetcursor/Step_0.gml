//follows mouse
x = mouse_x;
y = mouse_y;


sprite_index = starget;

//changes color when hovering over boss
if (place_meeting(x,y,ofleetboss) || place_meeting(x,y,oAtomica)) sprite_index = stargetlockon;

if (oPicoboss.protected == 1) sprite_index = starget;
