/// @description Recalculate if size changes
if (browser_width != curr_width || browser_height != curr_height)
{
	curr_width = browser_width;
	curr_height = browser_height;
	window_set_size(browser_width, browser_height);
}