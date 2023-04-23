//follows mouse
x = mouse_x;
y = mouse_y;


sprite_index = starget;

//changes color when hovering over boss
if (place_meeting(x,y,ofleetboss) || place_meeting(x,y,oAtomica)) || place_meeting(x,y,ocassboss) || place_meeting(x,y,orubble) sprite_index = stargetlockon;

if (oPicoboss.protected == 1) sprite_index = starget;
