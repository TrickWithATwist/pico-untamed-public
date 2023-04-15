image_alpha = max(0, image_alpha-0.1);

scale = max(0, scale-0.02);
image_xscale = scale;
image_yscale = scale;

if (image_alpha == 0) instance_destroy();
