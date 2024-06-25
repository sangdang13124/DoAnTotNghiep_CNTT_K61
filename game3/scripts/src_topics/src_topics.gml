global.topics = {};

global.topics[$ "Example"] = [
	TEXT("Hello there!"),
	TEXT("Ths is some example text."),
	TEXT("We should test having a page with lots of words in it, to make sure that the line break feature is working properly.")
];

global.topics[$ "Good Morning"] = [
	SPEAKER("Sam", spr_portrait_sam, PORTRAIT_SIDE.LEFT),
	TEXT("Good morning! How are you today!"),
	SPEAKER("Rudy", spr_portrait_rudy, PORTRAIT_SIDE.RIGHT),
	TEXT("I'm doing very well! And you?"),
	SPEAKER("Sam", spr_portrait_sam, PORTRAIT_SIDE.LEFT),
	TEXT("I can't complain, except for one thing..."),
	SPEAKER("Sam", spr_portrait_sam_mad),
	TEXT("The supermarket was out of carrot juice today!")
];

global.topics[$ "Breakfast"] = [
	SPEAKER("Sam", spr_portrait_ss, PORTRAIT_SIDE.LEFT),
	CHOICE("Hello, explorer, this is an extremely dangerous maze. Do you need any help?",
		OPTION("No, I'm a good adventurer", "Chose No"),
		OPTION("Yes, I'm very worried", "Chose Yess"))
];

global.topics[$ "Chose No"] = [
	TEXT("Ohh, so good luck, I believe you will pass and win the reward easily "),
	GOTO("End of Breakfast")
];

global.topics[$ "Chose Yess"] = [
	TEXT("You are a brave person, don't worry, your mission is to explore the maze, open doors, fight monsters and win worthy rewards."),
	GOTO("End of Breakfast")
];

global.topics[$ "End of Breakfast"] = [
	TEXT("Let's fight")
];