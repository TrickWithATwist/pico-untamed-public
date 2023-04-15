/// @desc chance(percent, range)
/// @arg percent
/// @arg range

// Returns true or false depending on RNG
// ex: 
//      chance(0.7,1);    -> Returns true 70% of the time

function chance(percent, range)
{
	return percent > random(range);
}
