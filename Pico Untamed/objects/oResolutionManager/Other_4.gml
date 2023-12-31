// Enable views
view_enabled = true;
view_visible[0] = true;

// Set camera
view_set_camera(0, camera);


// Resize window & application surface
window_set_size(RES_W, RES_H);
surface_resize(application_surface, RES_W, RES_H);
display_set_gui_size(RES_W, RES_H);

/* Center window
var display_width = display_get_width();
var display_height = display_get_height();

var window_width = RES_W;
var window_height = RES_H;

window_set_position(display_width/2 - window_width/2, display_height/2 - window_height/2);*/

curr_width = browser_width;
curr_height = browser_height;
window_set_size(browser_width, browser_height);
