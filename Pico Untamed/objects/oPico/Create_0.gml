//establishing y position for pico
y = 704;


//establishing image scale for pico
image_xscale = .55;
image_yscale = .55;

//counter for step event
counter = 0

//pico moving? 0 for no, 1 for yes
picomove = 0;

//x when pico moves (temp value)
finalx = 0;

//transition variable, gets button to go to next room idk
transition = 0;

//initial/max speed and acceleration for pico
hsp = 1;
maxhsp = 25;

//varible for if pico is shooting or not
shooting = 0;
alreadyshot = 0;

//cooldown for up transition
cooldown = 1;
cooldowncurrent = 0;

