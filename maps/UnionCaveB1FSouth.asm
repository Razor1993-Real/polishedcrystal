UnionCaveB1FSouth_MapScriptHeader:

.MapTriggers: db 0

.MapCallbacks: db 0

UnionCaveB1FSouth_MapEventHeader:

.Warps: db 4
	warp_def $5, $3, 2, UNION_CAVE_1F
	warp_def $3, $11, 1, UNION_CAVE_B2F
	warp_def $21, $5, 3, MURKY_SWAMP
	warp_def $17, $11, 1, ROUTE_32_COAST

.XYTriggers: db 0

.Signposts: db 3
	signpost 18, 2, SIGNPOST_ITEM, UnionCaveB1FSouthHiddenXSpclDef
	signpost 25, 12, SIGNPOST_ITEM, UnionCaveB1FSouthHiddenNugget
	signpost 30, 4, SIGNPOST_ITEM, UnionCaveB1FSouthHiddenFullRestore

.PersonEvents: db 14
	person_event SPRITE_SUPER_NERD, 4, 5, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 3, TrainerPokemaniacAndrew, -1
	person_event SPRITE_SUPER_NERD, 2, 17, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 3, TrainerPokemaniacCalvin, -1
	person_event SPRITE_POKEFAN_M, 13, 16, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 2, TrainerHikerPhillip, -1
	person_event SPRITE_POKEFAN_M, 30, 14, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 2, TrainerHikerLeonard, -1
	person_event SPRITE_FISHER, 20, 3, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 4, TrainerFirebreatherJay, -1
	person_event SPRITE_SUPER_NERD, 30, 7, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 2, TrainerSuper_nerdRory, -1
	person_event SPRITE_POKEFAN_M, 17, 12, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerRuin_maniacGlyn, -1
	person_event SPRITE_ROCK_BOULDER_FOSSIL, 4, 14, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, PERSONTYPE_JUMPSTD, 0, strengthboulder, -1
	person_event SPRITE_ROCK_BOULDER_FOSSIL, 32, 8, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, PERSONTYPE_JUMPSTD, 0, strengthboulder, -1
	person_event SPRITE_ROCK_BOULDER_FOSSIL, 15, 11, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_JUMPSTD, 0, smashrock, -1
	person_event SPRITE_ROCK_BOULDER_FOSSIL, 24, 12, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, PERSONTYPE_JUMPSTD, 0, smashrock, -1
	person_event SPRITE_BALL_CUT_FRUIT, 20, 14, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, DUSK_STONE, 1, EVENT_UNION_CAVE_B1F_SOUTH_DUSK_STONE
	person_event SPRITE_BALL_CUT_FRUIT, 26, 8, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, SUPER_REPEL, 1, EVENT_UNION_CAVE_B1F_SOUTH_SUPER_REPEL
	person_event SPRITE_BALL_CUT_FRUIT, 28, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, LIGHT_CLAY, 1, EVENT_UNION_CAVE_B1F_SOUTH_LIGHT_CLAY

TrainerPokemaniacAndrew:
	trainer EVENT_BEAT_POKEMANIAC_ANDREW, POKEMANIAC, ANDREW, PokemaniacAndrewSeenText, PokemaniacAndrewBeatenText, 0, PokemaniacAndrewScript

PokemaniacAndrewScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x5a181
	waitbutton
	closetext
	end

PokemaniacAndrewSeenText:
	text "Who's there?"

	para "Leave me and my"
	line "#mon alone!"
	done

PokemaniacAndrewBeatenText:
	text "Go…"
	line "Go away!"
	done

UnknownText_0x5a181:
	text "Just me and my"
	line "#mon. I'm de-"
	cont "lirious with joy."
	done

TrainerPokemaniacCalvin:
	trainer EVENT_BEAT_POKEMANIAC_CALVIN, POKEMANIAC, CALVIN, PokemaniacCalvinSeenText, PokemaniacCalvinBeatenText, 0, PokemaniacCalvinScript

PokemaniacCalvinScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x5a230
	waitbutton
	closetext
	end

PokemaniacCalvinSeenText:
	text "I came all the way"
	line "here to conduct my"
	cont "#mon research."

	para "Let me demonstrate"
	line "my findings in a"
	cont "real battle!"
	done

PokemaniacCalvinBeatenText:
	text "You demonstrated"
	line "on me!"
	done

UnknownText_0x5a230:
	text "I should compile"
	line "and announce my"
	cont "study findings."

	para "I might even be-"
	line "come famous like"
	cont "Prof.Elm."
	done

TrainerHikerPhillip:
	trainer EVENT_BEAT_HIKER_PHILLIP, HIKER, PHILLIP, HikerPhillipSeenText, HikerPhillipBeatenText, 0, HikerPhillipScript

HikerPhillipScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x5a073
	waitbutton
	closetext
	end

HikerPhillipSeenText:
	text "It's been a while"
	line "since I last saw"
	cont "another person."

	para "Don't be shy."
	line "Let's battle!"
	done

HikerPhillipBeatenText:
	text "Uurggh…"
	done

UnknownText_0x5a073:
	text "I've been lost for"
	line "a long time…"

	para "I don't mind it"
	line "here, but I am"
	cont "soooo hungry!"
	done

TrainerHikerLeonard:
	trainer EVENT_BEAT_HIKER_LEONARD, HIKER, LEONARD, HikerLeonardSeenText, HikerLeonardBeatenText, 0, HikerLeonardScript

HikerLeonardScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x5a0fb
	waitbutton
	closetext
	end

HikerLeonardSeenText:
	text "What do you know!"
	line "A visitor!"
	done

HikerLeonardBeatenText:
	text "Wahahah! You're a"
	line "feisty one!"
	done

UnknownText_0x5a0fb:
	text "I live down here."

	para "You can, too, if"
	line "you'd like."

	para "There's plenty of"
	line "room, you see."
	done

TrainerFirebreatherJay:
	trainer EVENT_BEAT_FIREBREATHER_JAY, FIREBREATHER, JAY, .SeenText, .BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "I learned how to"
	line "breathe fire by"

	para "watching my #-"
	line "mon!"
	done

.BeatenText:
	text "Our fire couldn't"
	line "beat you…"
	done

.AfterText:
	text "One time my hat"
	line "caught on fire."

	para "It looked kind of"
	line "like a Magmar… but"
	cont "it hurt!"
	done

TrainerSuper_nerdRory:
	trainer EVENT_BEAT_SUPER_NERD_RORY, SUPER_NERD, RORY, .SeenText, .BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "This'll be over"
	line "in a jiffy."
	done

.BeatenText:
	text "Maybe I was a bit"
	line "off…"
	done

.AfterText:
	text "A jiffy is the"
	line "scientific name"

	para "for 1/100th of a"
	line "second."
	done

TrainerRuin_maniacGlyn:
	trainer EVENT_BEAT_RUIN_MANIAC_GLYN, RUIN_MANIAC, GLYN, .SeenText, .BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext .AfterText
	waitbutton
	closetext
	end

.SeenText:
	text "My #mon were"
	line "born from fossils"

	para "I found in this"
	line "very cave!"
	done

.BeatenText:
	text "And they lost in"
	line "this very cave,"
	cont "too!"
	done

.AfterText:
	text "Rocks hide all"
	line "sorts of interest-"
	cont "ing items."
	done

UnionCaveB1FSouthHiddenXSpclDef:
	dwb EVENT_UNION_CAVE_B1F_SOUTH_HIDDEN_X_SPCL_DEF, X_SPCL_DEF

UnionCaveB1FSouthHiddenNugget:
	dwb EVENT_UNION_CAVE_B1F_SOUTH_HIDDEN_NUGGET, NUGGET

UnionCaveB1FSouthHiddenFullRestore:
	dwb EVENT_UNION_CAVE_B1F_SOUTH_HIDDEN_FULL_RESTORE, FULL_RESTORE
