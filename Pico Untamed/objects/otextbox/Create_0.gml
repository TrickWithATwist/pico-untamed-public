//determines which box is showing
choice = 0;
//if choice = 0, click to continue will be in the corner
text_showing = 0;
//dialogue
dialogue = 0;

dialogueArray =
[
	"Pico: It seems to be a card scanner. Maybe it can free Boyfriend.", //0
	
	"Pico: Obey... Obey who?", //1
	"", //empty for now //2
	"", //3
	
	"Pico: I hear footsteps! I need to hide right now!\n         Those rocks look safe.",
	
	"", //5
	"", //6
	"", //7
	"Pico: Ugh, this room is giving me bad memories...", //8
	
	"Pico: Hmm, what's with that card on the table?", //9
	
	
	"Pico: I wonder what's behind that window.", //10
	
	"Pico: These seem to be blueprints. What for?", //11
	
	"Pico: I wonder what that did. Better check outside.", //12
	
	
	
	"Boyfriend: Beep beep bo bop beep.", //13
	
	"Boyfriend: Skrrrp boop beep bop.", //14
	
	"Pico: I see. I'll get you out of here, I promise...", //15
	
	
	"Captain: Well well, if it isn't the school shooter. Get me out of\n                 here will ya?", //16
	
	"Captain: Heh heh I like you kid. Try going to the room down the \n                  hall. You might find something there.", //17
	
	"Captain: Well what are you waiting for?! Find another way to get \n                 me out!", //18
	
	
	"Fleet: So you're that ginger freak I've heard so much about...", //19
	
	"Fleet: I'd be more worried about me blowing out your brains than that.", //20
	
	"Fleet: Kids like you shouldn't run around so carelessly with guns.\n             Maybe it's time for an adult to give you some discipline.", //21
	
	
	"Fleet: What are you waiting for? Pull the trigger.", //22
	
	"Fleet: So you're gonna get answers from me, huh?", //23
	
	"Fleet: Or are you just too soft and scared to handle killing somone?", //24
	
	"Fleet: I know you don't really care for these people...\n            You just want some excitement in your boring little life.", //25
	
	"Fleet: Hard to be the popular kid when everyone you knew is dead ha ha...", //26
	
	"Fleet: You think you're better than me?..", //27
	
	"Fleet: Your life is just as WORTHLESS as the victims you FAILED to save...", //28
	
	"Pico: I TOLD YOU TO SHUT UP.", //29
	
	"Fleet: Too late.", //30
	
	"Pico: ...", //31
	
	"Pico: Another scum removed from this planet.", //32
	
	"Pico: Ew what the hell?! Is that what I think it is?", //33
	
	"Pico: First it was the arm gun and now this. Just what are these guys\n          making?", //34
	
	"Pico: Sounds like another guard is coming. Gotta hide.", //35
	
	"Guard: Intruder!", //36
	
	"Pico: I can walk through the vents to avoid running to the guard.", //37
	
	"Atomica: Who are you? You here to fight?", //38
	
	"Atomica: Nope! Looks like we're doing things the hard way!", //39
	
	"Atomica: Good, then GTFO.", //40
	
	"Pico: Afraid I can't do that.", //41
	
	"Nene: Pico.... Are you okay?", //42
	
	"Nene: Just be careful, okay?", //43
	
	"Pico: Right.", //44
	
	"Darnell: Took you long enough.", //45
	
	"Darnell: A guard dropped a grenade near my cell. You should use it.", //46
	
	"Atomica: Please! Don't kill me, have mercy.", //47
	
	"Atomica: I'm just an intern! I have no idea what's going on!", //48
	
	"Atomica: All I want to do is just build a future for myself, nothing more!", //49
	
	"Atomica: I didn't want to fight, I was just scared.", //50
	
	"Atomica: You're Pico right? The kid who survived that shooting that happened 3 months ago?", //51
	
	"Atomica: You know what it's like, then, to be scared, just wanting all the violence to end.", //52
	
	"Pico: ...", //53
	
	"Pico: But now isn't the time to be scared.", //54
	
	"Pico: I have friends who are counting on me to save them. I can't let myself get held back.", //55
	
	"Pico: Can you help me unlock their cells?", //56
	
	"Atomica: The button behind you should unlock them.", //57
	
	"Pico: Thanks.", //58
	
	"Pico: Goodbye.", //59
];

//stupid thing for room 4 and 5
stupidvar = 0;

//control dialogue
switch (room)
{
	case f1r1:
		dialogue = 1;
	break;
	case f1r2:
		dialogue = 2;
	break;
}