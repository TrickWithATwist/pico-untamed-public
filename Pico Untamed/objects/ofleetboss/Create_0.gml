//setting initial x and y values
x = 992;
y = 384;

//cooldown for movement, moves every two seconds
cooldown = 2;
cooldowncurrent = 0;

//varaible for random x position
randx = irandom_range(100, 1820);
//varaible for random y position
randy = irandom_range(100,384);

//current randx and y 
currentrandx = randx;
currentrandy = randy;

//moves 6 times and then shoots
movementcounter = 0;