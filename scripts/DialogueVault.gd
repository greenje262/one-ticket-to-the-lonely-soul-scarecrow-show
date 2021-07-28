extends Node

#use this to build your shit
#finished is whether or not the scrow will talk again - when dialogue is complete, finished flips to true
#words are used to build the subtitles
#clip is used to call the audio file
#signal references a signal to call, if necessary, to play a cutscene, prompt a choice, or whatever
var scrow01 = {
	"finished": false,
	"dialogue": [
		{"text": "Hello, and welcome to the maze.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I...recognize you. You've been here before.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You pretty much know the drill by now.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I'll spare you the spiel and let you be on your way.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Unless I'm mistaking you for someone else?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "No, no, I don't think so.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Please, enjoy the maze.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "And remember...we are at your service.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow02 = {
	"finished": false,
	"dialogue": [
		{"text": "Oh, good, it's you!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I was just thinking about the story you told me the last time you came through", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "The world beyond the maze sounds like such a fascinating place.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I wish I could visit, just once.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "But...that's just not possible.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Anyway, what about you?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Have you been anywhere new recently?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Wow, that sounds incredible!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You're quite lucky, you know, to be able to have such wonderful experiences.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Thanks for sharing with me.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "See you around!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Ah, come on! I'm relying on you. I live vicariously through your stories. I mean, the only things I ever hear about the world come from visitors like yourself. They just tell us that we have everything we need here, that there's nothing for us out there. That we can set down roots here without having to worry. But I can't help feeling that if that's really the truth, then why don't they let us go look? I dream every night about glittering cities, delicious food, and seas of smiling faces. I dream of complexity, of challenge, and satisfaction. I try to peek through the corn all the time, to see if I can spot anything out there, anything at all. But there's nothing. Just dirt and fog. Did I really mean to set down roots here? Did I really have a choice? I don't know...", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow03 = {
	"finished": false,
	"dialogue": [
		{"text": "I thought I heard something...thrashing about out there.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "But I didn't...expect it to be you.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "It is always...such a treat to have you visit.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You look as delicious as ever.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Don't be shy now, please, come closer.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Tell me, have you...been eating well?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Mmm...wonderful! Wonderful. There is nothing better than a...filling meal in the company of your family, who...whoever they might be. That magical dinner table, a twisting...landscape of shapes, textures, and colors, above which participants laugh and smile with one another. No two of these landscapes look the same, the map of each becoming a...shared secret, a cherished memory for years to come. A hidden place in which to...escape the blistering speed of daily life, inhabited only by yourself and those you...hold dear. It is impossible to overstate how important these experiences are. Neglecting this kind of...connection can wither and darken our hearts. I...truly hope that you and I are able to share meal like this someday. That would be...delectable.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Oh...oh no...", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I am...sorry...to hear that.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Good food is the key to a good...good life.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I pray your next feast finds you soon.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow04 = {
	"finished": false,
	"dialogue": [
		{"text": "Oh. Hello.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Thanks for coming to visit, it's always nice to see you.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Things have been kind of quiet recently.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "But I guess that shouldn't be too surprising.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I mean, we were built to scare things away, right?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Hmm...", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Do you think we have an obligation to do the things we're good at?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Oh...you think so?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I'm not sure, but...well, you may be right.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Either way, thanks for coming to see me.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "It's nice to talk to someone.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Yeah, me neither. You know...between you and me, I don't really like scaring crows. I think they're really cool, actually. They use tools, and form social groups. In a lot of ways, they're more capable than scarecrows. But even so, I feel this weird pressure to keep scaring them. I guess it's because I'm...supposed to? Just because I was made a scarecrow? It's...tough for me to wrap my head around. Like...why should my ability take priority over my passion? Isn't that kinda backwards? Is it not worth doing if I'm not maximizing my potential? Phew...sorry. I get really fired up about this because I'm afraid that I'm wrong, and that scarecrows shouldn't aspire to more than scaring crows. But...it's nice to know someone else feels the same way, at least. Thanks a lot for letting me vent like this. I appreciate it.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow05 = {
	"finished": false,
	"dialogue": [
		{"text": "Oh, hey! How are you doing?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I remember last time you were having a bit fo trouble.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I hope my advice helped.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Have things been going okay?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You know you can tell me anything.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Only if you want to! I just want to help.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "So? Is there anything bothering you?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Oh, of course, I can see it in your eyes.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Go on then, tell me all about it.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I'll listen for as long as you need.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Oh, come on, that can't be true. What's the matter? I'm just offering to help you with your problems. You should be grateful that you have someone like me. I'm not like the others. I understand you. I won't laugh at you, or talk about you behind your back. I'll listen and think and care for you. You need me. It's not like I do this because I get anything out of it. I do it because I'm a good person, and it's the right thing to do. If anything, you're being selfish for not opening up to me. After everything we've shared between us, don't you think I have the right to know what's going on with you? Don't I deserve to know how you're feeling? I think I do. I think I've earned that much. But go ahead, do whatever you want.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow06 = {
	"finished": false,
	"dialogue": [
		{"text": "Oh ho ho! Just the person I was hoping to see today!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Just yesterday, I came up with a real gut-buster.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Okay, here we go: why don't scarecrows need to eat?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": ". . .", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Because we're already stuffed!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Ha ha ha ha!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "What about you? Got any good jokes for me?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Ha ha ha! Wow, that's great! I'm stealing that one. Hoo boy, thank you. Things have been tense around here, as perhaps you could tell. I've been trying my best to smile through it with a joke and a laugh, but it's not that easy sometimes. I really appreciate that you and I could share a small moment of levity like that. We don't get to connect like this with many people, so when we do, it's kind of important, you know? And I think the best way to make and maintain those connections is with a smile. Sadly, it can be a bit of a risk sometimes. Some people just want you to behave how they expect you to, or will try to take advantage of you when you meet them with kindness. That's hard. But when you get a smile back, when someone meets you on your level, that can make the risk worth it. Anyway, I've chewed your ear off for long enough. Thanks for spending some time with me.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Well, no problem!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "It's hard to be as naturally funny as I am, after all.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Ha ha ha!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow07 = {
	"finished": false,
	"dialogue": [
		{"text": "Oh, it's you.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You sure come through here a lot, huh?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Having a good time?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You'd be the only one.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "If you like this place so much, maybe you ought to stay.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "What do you think? Would you live in a place like this?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "You're kidding, right? What do you think you're doing here? What do you think we're doing here? Does that seriously never cross your mind? Damn it. You walk through here all the time, chatting with us, laughing as you try to escape the maze. Don't kid yourself. We're not your friends, we're your entertainment. This isn't a maze, it's a zoo, and you're getting a rush from the illusion that you've been locked inside with the animals. Fuck that. You buy your ticket, you get your kicks, and then you get to leave. But we never do. We'll do this over and over and over again until the field is barren and the crows have nothing left to take. And after all this, after you and every other tourist stops coming through, you think the people who sold you that ticket are going to take care of us? We'll be tossed in a heap, left to rot, and that'll be that. They don't give a shit about us, and neither do you. Anyway, enjoy trying to escape the maze, and don't talk to me anymore.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Yeah, I didn't fucking think so.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Go on then, keep it moving.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You've probably got a life to get back to, after all.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow08 = {
	"finished": false,
	"dialogue": [
		{"text": "Well, well, look who it is. How have you been?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Things have been kind of...kind of...ki...nngh...", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Hey there!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "It's me, Jeff, the developer.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "That scarecrow's fine, don't worry about it. They don't feel any pain when I do that.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Just wanted to pop in and check up on you.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I really appreciate you taking the time to play my game.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "It really does mean a lot.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "How are things going? Are you enjoying it so far?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Great, that's great! I'm really glad to hear that.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "To be honest, by the end, I wasn't sure anyone was going to like this game.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Thanks again for playing.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Okay, I'll let you get back to it. Enjoy!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "...whoa...uh, wow.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "That felt really bad. I didn't like that.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	],
	"dialogue_no": [
		{"text": "Oh no! I'm really sorry to hear that.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I hope you're willing to stick it out a little longer.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "If not, don't worry about ducking out early.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I won't take it personally.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Thanks for giving my game a shot, and  hope it gets better.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "...whoa...uh, wow.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "That felt really bad. I didn't like that.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow09 = {
	"finished": false,
	"dialogue": [
		{"text": "Whoa! Jeez, you startled me.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Sorry, I'm a bit jumpy right now.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I'm in a bit of a pickle.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You see, I've...well, I've figured out how to leave this place.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "And every fiber of my being is telling me to just do it.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "To finally escape.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "What do you think? Should I just...go?", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": ["choice"]}
	],
	"dialogue_yes": [
		{"text": "Yeah, right.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Okay then, here I go. I hope this works!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "See you out there.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
	],
	"dialogue_no": [
		{"text": "But why should I stay? Life here is...difficult. If I have the chance to make a better life somewhere else, shouldn't I take it? Do I have a duty to the others to stay and help improve our lives here? I'll be honest, I don't think there's much chance of that. Do I suffer then, in solidarity? Can I use the knowledge I have to help everyone escape somehow? What about those who don't want to go? What about the scarecrows they bring in to replace us? I don't want to suffer, and I'm in a position where I have a lot of control over that. I don't want others to suffer either, but I have no control at all over that. I just...don't know what to do. But I trust you, you've always been straight up with me. I'll stick around for now, and keep trying to puzzle it out.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var scrow10 = {
	"finished": false,
	"dialogue": [
		{"text": "Well, well, hello.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "It's about time you made it to me.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "The sun has nearly set!", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "You look like you've been on a bit of a journey.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Not to worry, the exit is quite close now.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "Thank you for choosing to spend your time here.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null},
		{"text": "I hope you do not forget this place, or any of us, anytime soon.", "x_pos": 600, "y_pos": 100, "x_size": 400, "y_size": 400, "clip": "", "signal": null}
	]
}

var barks = {}
