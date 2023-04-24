if cut = 3
{
	sprite_index = sci2;
	if oneframe = 0
	{
		instance_create_layer(0,0,"Instances_2" , oconquesteye);
		oneframe = 1
	}
}
if cut = 4
{
	instance_destroy(oconquesteye);
	if ORoomManager.good = 1
	{
		sprite_index = sci3good;
	}
	else
	{
		sprite_index = sci3bad;
	}
}
if cut = 8
{
	sprite_index = sci4;
}
if cut = 11
{
	ofo2.roomfade = 1;	
}