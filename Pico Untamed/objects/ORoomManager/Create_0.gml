//establishing essential variables for rooms

//my floor determines floor pico is on
myfloor = 1;

//my room determines which room pico is on said floor
myroom = 1;

//my direction determines direction pico is facing when he enters a room
// 1 is right, 0 is left
mydirection = 1;

//variables specific to floor 1 when player starts game
armoryunlock = 0;
room4unlock = 0;




//variable to determine if gaurd tutorial has been done or not
guardtutorial = 0;

//variables that determine whether people are saved or not
BFsaved = 0;
Tankmansaved = 0;

//variable that makes dialogue show up when you enter f1r12
f1r12dialogue = 0;


//PICO INVENTORY VARIABLES
uziunlock = 1;
//TEMP FOR DEV

idcardunlock = 0;


instance_create_layer(0, 0, layer, oCamera );
