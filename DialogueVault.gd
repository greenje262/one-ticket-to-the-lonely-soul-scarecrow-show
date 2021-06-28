extends Node

#use this to build your shit
#finished is whether or not the scrow will talk again - when dialogue is complete, finished flips to true
#words are used to build the subtitles
#clip is used to call the audio file
#signal references a signal to call, if necessary, to play a cutscene, prompt a choice, or whatever
var scrow01 = {
	"finished": false,
	"dialogue": [
		{"text": "Hello! Welcome back.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I hope you enjoy your time with us.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Please let me know if you need anything.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I would be happy to assist you.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "By the way, did you happen to bring what I asked for?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Oh, marvelous, thank you, thank you!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "This will keep those pesky bugs off my face.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "No respite from them out here, I'm afraid.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Well, enjoy your journey!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Oh, well, not to worry.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow02 = {
	"finished": false,
	"dialogue": [
		{"text": "Oh, hello there. Thanks for coming to see me.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I know I'm not the one you're here to see, but it's nice that you dropped by all the same.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "It's been kind of quiet lately, not many people are coming through these days.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I've kind of come to expect it though.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "We were made to scare things away, after all.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": ". . .", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Do you think we have an obligation to do the things we're good at?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Oh...sure, I guess that just makes sense. Uh, thank you for chatting with me.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Daiyou ne?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow03 = {
	"finished": false,
	"dialogue": [
		{"text": "I...thought I heard someone...mmm...thrashing about out there.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I didn't...mmm...realize...that it was you. It has been...quite some time", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You look as...delicious as ever.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Tell me, are you...eating well?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Hmmm, wonderful, wonderful! That is...good to hear.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Oh, oh, oh...hmm...well, that is...too bad.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I hope for more...delectable feasts in your future.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow04 = {
	"finished": false,
	"dialogue": [
		{"text": "Hello! How wonderful it is to see your shining face once again.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "How long has it been? I am shocked you could remain parted from me for so long!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "No need to be shy, now. You are welcome to stay and bask in my radiant glow for as long as you like.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "After all, I don't keep up this magnificent visage simply for my health!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You...will stay a while, won't you?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Phenomenal! There is truly no greater joy in the world than two noble souls sharing a moment of consummate friendship.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Oh ho! As a matter of fact, I just remembered a pressing appointment that I simply cannot miss.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Though it stings my heart, we will have to have our tête-à-tête another time! Ta ta for now!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow05 = {
	"finished": false,
	"dialogue": [
		{"text": "Hey there! Are you feeling better?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I was thinking more about what we talked about last time.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I think you're just overthinking things.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Either way, I'm glad you came to me.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "The other scarecrows can be kind of...well, you know.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "They don't know you like I do.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "So, do you need more help?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Oh, dear, dear, of course.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I will listen for as long as you need.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Oh, think you've got it all figured out, huh?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow06 = {
	"finished": false,
	"dialogue": [
		{"text": "Oh, just the person I was hoping to see today!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Just yesterday, I came up with a real gut-buster.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Okay, here we go: why don't scarecrows need to eat?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": ". . .", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Because we're already stuffed! Ha ha ha!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "What about you? Got a good joke for me?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Ha ha! Incredible! Your jokes are almost as good as mine!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Ah, no problem!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "It's hard to be as naturally funny as I am, after all. Ha ha ha!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Good to see you, have fun out there!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow07 = {
	"finished": false,
	"dialogue": [
		{"text": "Hey! It's me, Jeff, the developer.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You're moving through the maze pretty well.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You'll probably be finished before long.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Anyway, just wanted to check in and say thanks for playing.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I'm a small-time game dev, so it means a lot that you took the time to play.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "What do you think? Are you having fun so far?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Oh, great!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I wasn't sure anyone besides me was going to like this game by the time it was finished.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "That means more than I can tell you, thank you.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Enjoy the rest of the game!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Ah, I'm sorry to hear it.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "If you want to duck out early, you can press the QUIT KEYBIND key to quit.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Otherwise, I hope it gets better from here.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow08 = {
	"finished": false,
	"dialogue": [
		{"text": "Welcome!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You're doing an adequate job traversing the maze.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "No need to stop and chat with me.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Though...rest and hydration are both important as well.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "So also feel free to take a break now and then!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Uh...sorry. I'm still new at this.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "It can be tough learning the ropes, don't you think?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Yes, you get it! Thanks for your support.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Keep up the good work!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Wow, things must be really easy for you then. I'm jealous!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow09 = {
	"finished": false,
	"dialogue": [
		{"text": "Hey y-\nOh. It's jst you.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Ah, sorry, I don't mean it like that, it's just that, well...", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I mean, you can see...they dug up Nell and took them away.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I just really miss them.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I know that's just how things go out here sometimes, but I can't help it.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Nell really was one of a kind.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Do you think I'll see them again?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Of course, yes, I mustn't lose hope!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Right...well, all I can do is look to the future and hope for the best.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Thanks for hearing me out.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow10 = {
	"finished": false,
	"dialogue": [
		{"text": "Whoa, look who it is!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Great to see you - too bad the weather isn't better, huh?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Maybe we can do something about that.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "There we go, that's much better.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You're pretty close to the end now, but I'm glad you stopped to see me first.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "How are you? Is everything okay?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
		
	],
	"dialogue_yes": [
		{"text": "That's wonderful. I'm so proud of you.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Oh, never mind. Things are difficult right now, but you have people who love you.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var barks = {}
