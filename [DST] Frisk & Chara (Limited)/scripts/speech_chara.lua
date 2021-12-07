--[[
	--- This is Wilson's speech file for Don't Starve Together ---
	Write your character's lines here.
	If you want to use another speech file as a base, or use a more up-to-date version, get them from data\scripts\
	
	If you want to use quotation marks in a quote, put a \ before it.
	Example:
	"Like \"this\"."
]]
return {
	ACTIONFAIL =
	{
		SHAVE =
		{
			AWAKEBEEFALO = "*The Beefalo is asleep.",
			GENERIC = "*Not ready to be shaved.",
			NOBITS = "*It's completely naked.",
		},
		STORE =
		{
			GENERIC = "*It's inventory is currently full.",
			NOTALLOWED = "*It doesn't belong there.",
			INUSE = "*It's not your turn yet.",
		},
		RUMMAGE =
		{	
			GENERIC = "*(You cannot do that.)",
			INUSE = "*(You should wait...)",	
		},
        COOK =
        {
            GENERIC = "*Maybe later.",
            INUSE = "*(It's not your turn yet)",
            TOOFAR = "*(You're not near it yet!)",
        },
        GIVE =
        {
            DEAD = "*Maybe it's best to hold on to it.",
            SLEEPING = "*Come back when it's awake.",
            BUSY = "*(You should try again later.)",
        },
        GIVETOPLAYER = 
        {
        	FULL = "*They're stuffed to the brim!",
            DEAD = "*Maybe it's best to hold on to it.",
            SLEEPING = "Too unconscious to care.",
            BUSY = "*(You should try again later.)",
    	},
    	GIVEALLTOPLAYER = 
        {
        	FULL = "*They're stuffed to the brim!",
            DEAD = "*Maybe it's best to hold on to it.",
            SLEEPING = "Too unconscious to care.",
            BUSY = "*(You should try again later.)",
    	},
        WRITE =
        {
            GENERIC = "*(You try but fail.)",
            INUSE = "*Seems like someones writing up a storm",
        },
        CHANGEIN =
        {
            GENERIC = "*(You try but fail.)",
            BURNING = "*It's not advisable to be near that.",
            INUSE = "*(Your urge to feel fabulous fills you with determination.)",
        },
        ATTUNE =
        {
            NOHEALTH = "*Health is too low. Not recommended.",
        },
	},
	ACTIONFAIL_GENERIC = "*(You try but fail.)",
	ANNOUNCE_ADVENTUREFAIL = "*You cannot give up just yet. Stay determined!",
	ANNOUNCE_BEES = "*It flutters with aggression.",
	ANNOUNCE_BOOMERANG = "*Toss it and it may hit your target..or your head.",
	ANNOUNCE_CHARLIE = "*(You feel uneasy.)",
	ANNOUNCE_CHARLIE_ATTACK = "*(...)",
	ANNOUNCE_COLD = "*(Your body begins to shiver.)",
	ANNOUNCE_HOT = "*(You begin sweating and now wish to bathe in ice.)",
	ANNOUNCE_CRAFTING_FAIL = "*(Lacking of ingredients, your invention is unfinished.)",
	ANNOUNCE_DEERCLOPS = "*An angry and hostile creature approaches..",
	ANNOUNCE_DUSK = "*The sun setting is a relaxing scenery",
	ANNOUNCE_EAT =
	{
		GENERIC = "*(The meal stuffs you with more determination.)",
		PAINFUL = "*(The meal tastes similar to Papyrus speghetti. You drop the platter.)",
		SPOILED = "*(This meal is exactly like Papyrus speghetti. You toss the platter.)",
		STALE = "*(You feel a kick to the stomach after eating that.)",
		INVALID = "*(You outright refuse to even label it food)",
		YUCKY = "*(Papyrus Speghetti looks better than this.)",
	},
	ANNOUNCE_ENTER_DARK = "*Its too dark to make out whats ahead.",
	ANNOUNCE_ENTER_LIGHT = "*(The beautiful yet blinding light fills you determination.)",
	ANNOUNCE_FREEDOM = "*(You're finally free. Now where's Toriel's House?)",
	ANNOUNCE_HIGHRESEARCH = "*(Your new brilliance fills you with determination.)",
	ANNOUNCE_HOUNDS = "*A group of aggressive beasts are approaching.",
	ANNOUNCE_WORMS = "*A group of aggressive beasts are approaching.",
	ANNOUNCE_HUNGRY = "*(Your stomach needs more DETERMINATION.)",
	ANNOUNCE_HUNT_BEAST_NEARBY = "*The track is fresh. A monster is nearby.",
	ANNOUNCE_HUNT_LOST_TRAIL = "*The track has dissapeared.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "*The track is heavily smuged to be recognizable.",
	ANNOUNCE_INV_FULL = "*Inventory Full.",
	ANNOUNCE_KNOCKEDOUT = "*(You feel less conscience than before.)",
	ANNOUNCE_LOWRESEARCH = "*(Your newfound knowledge provided you nothing useful!)",
	ANNOUNCE_MOSQUITOS = "*Flys with straw for noses.",
    ANNOUNCE_NOWARDROBEONFIRE = "*It's not advisable to be near that.",
    ANNOUNCE_NODANGERGIFT = "*It's not advisable to be near that.",
	ANNOUNCE_NODANGERSLEEP = "*It's not advisable to be near that.",
	ANNOUNCE_NODAYSLEEP = "*It cannot be used when it's so bright.",
	ANNOUNCE_NODAYSLEEP_CAVE = "*(You're too filled with determination to sleep!)",
	ANNOUNCE_NOHUNGERSLEEP = "*(The urge to stuff your face overwhelms your will to sleep.)",
	ANNOUNCE_NOSLEEPONFIRE = "*(It reminds you of Undynes ever burning house.)",
	ANNOUNCE_NODANGERSIESTA = "*(You're too filled with determination to sleep!)",
	ANNOUNCE_NONIGHTSIESTA = "*(You're till filled with determination to sleep!)",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "*The wet and humid cave does not seem like the best place to relax.",
	ANNOUNCE_NOHUNGERSIESTA = "*(Your stomach needs more DETERMINATION.)",
	ANNOUNCE_NODANGERAFK = "*(You refuse to flee.)",
	ANNOUNCE_NO_TRAP = "*(Your tension suddenly dissapears.)",
	ANNOUNCE_PECKED = "*A bird pecks your head relentlessly.",
	ANNOUNCE_QUAKE = "*The ground shakes and the cave roars.",
	ANNOUNCE_RESEARCH = "*(Newfound brilliance fills you determination.)",
	ANNOUNCE_SHELTER = "*A nice and shelter loving tree.",
	ANNOUNCE_THORNS = "*(You've been pricked!)",
	ANNOUNCE_BURNT = "*It's been burnt to a crisp!",
	ANNOUNCE_TORCH_OUT = "*The light vanished!",
	ANNOUNCE_FAN_OUT = "*The fan has whisked away!",
    ANNOUNCE_COMPASS_OUT = "*The compass has lost its intended use.",
	ANNOUNCE_TRAP_WENT_OFF = "*(You probably regretted opening that, right?)",
	ANNOUNCE_UNIMPLEMENTED = "*Struck! It's not ready.",
	ANNOUNCE_WORMHOLE = "*(Seeing the innards made you slightly uncomfortable.)",
	ANNOUNCE_CANFIX = "\n*This seems to be repairable.",
	ANNOUNCE_ACCOMPLISHMENT = "*(You're full of determination!)",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "*(You think of your friends, you feel great.)",	
	ANNOUNCE_INSUFFICIENTFERTILIZER = "*This plant needs a little love.",
	ANNOUNCE_TOOL_SLIP = "*(The tool slips out of your hands quickly!)",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "*Lightning strikes avoided!",

	ANNOUNCE_DAMP = "*(You feel your clothes drenched in water.)",
	ANNOUNCE_WET = "*(You feel like a soggy sponge.)",
	ANNOUNCE_WETTER = "*(You might as well be a soggy sponge.)",
	ANNOUNCE_SOAKED = "*(Just become the most determined soaked sponge ever.)",
	
	ANNOUNCE_BECOMEGHOST = "*REALLY NOT FEELING UP TO IT RIGHT NOW. SORRY.",
	ANNOUNCE_GHOSTDRAIN = "*(Your humanity is slowly withering away...)",

	DESCRIBE_SAMECHARACTER = "*Who's MESSING with the save states AGAIN?",
	
	BATTLECRY =
	{
		GENERIC = "*(You decide to attack)",
		PIG = "*It's a Pigman! He seems rather dimwitted.)",
		PREY = "*Look at that small creature go.",
		SPIDER = "*Must be Muffet's Friends",
		SPIDER_WARRIOR = "*The spider urges you to buy his donuts.",
	},
	COMBAT_QUIT =
	{
		GENERIC = "*It's been resolved accordingly.",
		PIG = "*The pigman just flaunts around randomly.",
		PREY = "*The creature seems defenseless.",
		SPIDER = "*Now where's Muffet?",
		SPIDER_WARRIOR = "*(You didn't want the donuts anyway.)",
	},
	DESCRIBE =
	{

		BERNIE_INACTIVE =
		{
			BROKEN = "*It finally fell apart.",
			GENERIC = "*It's all scorched.",
		},
		BERNIE_ACTIVE = "*(The teddy bear reminds you of that haunted training dummy.)",
		

        PLAYER =
        {
            GENERIC = "*It's %s!",
            ATTACKER = "*That %s looks shifty...",
            MURDERER = "*Genocide run!",
            REVIVER = "*%s, friend of ghosts.",
            GHOST = "*%s could use a heart.",
        },
		WILSON = 
		{
			GENERIC = "*It's Wilson!",
			ATTACKER = "*That Wilson looks shifty...",
			MURDERER = "*Murderer!",
			REVIVER = "*Wilson, friend of ghosts.",
			GHOST = "*Wilson could use a heart.",
		},
		WOLFGANG = 
		{
			GENERIC = "*It's Wolfgang!",
			ATTACKER = "*That Wolfgang looks shifty...",
			MURDERER = "*Murderer!",
			REVIVER = "*Wolfgang, friend of ghosts.",
			GHOST = "*Wolfgang could use a heart.",
		},
		WAXWELL = 
		{
			GENERIC = "*It's Maxwell!",
			ATTACKER = "*That Maxwell looks shifty...",
			MURDERER = "*Murderer!",
			REVIVER = "*Maxwell, friend of ghosts.",
			GHOST = "*Maxwell could use a heart.",
		},
		WX78 = 
		{
			GENERIC = "*It's WX-78!",
			ATTACKER = "*That WX-78 looks shifty...",
			MURDERER = "*Murderer!",
			REVIVER = "*WX-78, friend of ghosts.",
			GHOST = "*WX-78 could use a heart.",
		},
		WILLOW = 
		{
			GENERIC = "*It's Willow!",
			ATTACKER = "*That Willow looks shifty...",
			MURDERER = "Murderer!",
			REVIVER = "*Willow, friend of ghosts.",
			GHOST = "*Willow could use a heart.",
		},
		WENDY = 
		{
			GENERIC = "*It's Wendy!",
			ATTACKER = "*That Wendy looks shifty...",
			MURDERER = "*Murderer!",
			REVIVER = "*Wendy, friend of ghosts.",
			GHOST = "*Wendy could use a heart.",
		},
		WOODIE = 
		{
			GENERIC = "*It's Woodie!",
			ATTACKER = "*That Woodie looks shifty...",
			MURDERER = "*Murderer!",
			REVIVER = "*Woodie, friend of ghosts.",
			GHOST = "*Woodie could use a heart.",
		},
		WICKERBOTTOM = 
		{
			GENERIC = "*It's Wickerbottom!",
			ATTACKER = "*That Wickerbottom looks shifty...",
			MURDERER = "*Murderer!",
			REVIVER = "*Wickerbottom, friend of ghosts.",
			GHOST = "*Wickerbottom could use a heart.",
		},
		WES = 
		{
			GENERIC = "*It's Wes!",
			ATTACKER = "*That Wes looks shifty...",
			MURDERER = "*Murderer!",
			REVIVER = "*Wes, friend of ghosts.",
			GHOST = "*Wes could use a heart.",
		},
		MULTIPLAYER_PORTAL = "*(Unknowing why the portal led you here forces you to venture onwards.)",
        MIGRATION_PORTAL = {
            GENERIC = "*It's a friend device to stay closer together. Literally!",
            OPEN = "*(You have the urge to leap in.)",
            FULL = "*It seems rather full.",
        },
		GLOMMER = "*(Seeing a cute monster fly around reminds you of the old days and fills you with determination.)",
		GLOMMERFLOWER = 
		{
			GENERIC = "*The petals shimmer in the light.",
			DEAD = "*The petals droop and shimmer in the light.",
		},
		GLOMMERWINGS = "*(Wings from a dead monster. You feel rather ill.)",
		GLOMMERFUEL = "*Its poop. Pink poop!",
		BELL = "*A rather old bell. Looks rather useless(?)",
		STATUEGLOMMER = 
		{	
			GENERIC = "*A cute monster statue.",
			EMPTY = "*A broken cute monster statue.",
		},

		WEBBERSKULL = "*A skull from a young spider.",
		WORMLIGHT = "*It bright radiantly. Also very tasty looking.",
		WORMLIGHT_LESSER = "*Kinda wrinkled.",
		WORM =
		{
		    PLANT = "*The plant seems safe.",
		    DIRT = "*Just looks like a pile of dirt.",
		    WORM = "*It's a worm trap!",
		},
        WORMLIGHT_PLANT = "*Seems worth plucking.",
		MOLE =
		{
			HELD = "*The mole seems frightened by you.",
			UNDERGROUND = "*Something's under there, searching for minerals.",
			ABOVEGROUND = "*(The urge to boop his nose fills you with determination.)",
		},
		MOLEHILL = "*(You're tempted to jump in.)",
		MOLEHAT = "*Its great for the night yet horrible for the face!",

		EEL = "*Slippery. Very Slippery.",
		EEL_COOKED = "*Slippery. Very Nutritious!",
		UNAGI = "*It smells delicious!",
		EYETURRET = "*A big eye that's worth poking",
		EYETURRET_ITEM = "*A big eye that's having a nap.",
		MINOTAURHORN = "*(You feel a little empty looking at it.)",
		MINOTAURCHEST = "*The chest contains...",
		THULECITE_PIECES = "*It's some smaller chunks of Thulecite.",
		POND_ALGAE = "*Some algae by a pond.",
		GREENSTAFF = "*It returns the invention back to it's origins.",
		POTTEDFERN = "*A fern in a pot.",

		THULECITE = "*Wonder where this is from?",
		ARMORRUINS = "*It's oddly light.",
		RUINS_BAT = "*A weapon using a wing of a bat. Flap!",
		RUINSHAT = "*The craftmanship of the hat fills you with determination.",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "*Calm.",
            WARN = "*Warning.",
            WAXING = "*Warning!",
            STEADY = "*Steady.",
            WANING = "*Receding.",
            DAWN = "*Dissapearing.",
            NOMAGIC = "*Gone.",
		},
		BISHOP_NIGHTMARE = "*The Bishop ponders where all the light went.",
		ROOK_NIGHTMARE = "*The Rook feels its horn is smaller than the other.",
		KNIGHT_NIGHTMARE = "*The Knight wobbles back and fourth, maintaining it's posture.",
		MINOTAUR = "*The Minotaur feels it's treasure is in Jeopardy.",
		SPIDER_DROPPER = "*More of muffets friends.",
		NIGHTMARELIGHT = "*I wonder what function this served.",
		NIGHTSTICK = "*It's electric!",
		GREENGEM = "*It's green and gemmy.",
		RELIC = "*Ancient household goods.",
		RUINS_RUBBLE = "*This can be fixed.",
		MULTITOOL_AXE_PICKAXE = "*It's brilliant!",
		ORANGESTAFF = "*This beats walking.",
		YELLOWAMULET = "*Warm to the touch.",
		GREENAMULET = "*Just when I thought I couldn't get any better.",
		SLURPERPELT = "*(You feel uncomfortable holding this.)",	

		SLURPER = "*(You feel the urge to lay your head on it)",
		SLURPER_PELT = "*(You feel uncomfortable looking at this.)",
		ARMORSLURPER = "*A soggy, sustaining suit.",
		ORANGEAMULET = "*Teleportation can be so useful.",
		YELLOWSTAFF = "*A gem on a stick.",
		YELLOWGEM = "*This gem is yellow.",
		ORANGEGEM = "*It's an orange gem.",
		TELEBASE = 
		{
			VALID = "*It's ready to go.",
			GEMS = "*It needs more purple gems.",
		},
		GEMSOCKET = 
		{
			VALID = "*Looks ready.",
			GEMS = "*It needs a gem.",
		},
		STAFFLIGHT = "*(Though pretty, you feel rather uncomfortable near it.)",
	
        ANCIENT_ALTAR = "*An ancient and mysterious structure.",

        ANCIENT_ALTAR_BROKEN = "*This seems to be broken.",

        ANCIENT_STATUE = "*An old statue that holds a strange history.",

        LICHEN = "*An algae that looks slightly edible.",
		CUTLICHEN = "*If you gotta eat you gotta eat",

		CAVE_BANANA = "*It's yellow and fun to feel!",
		CAVE_BANANA_COOKED = "*Yum!",
		CAVE_BANANA_TREE = "*It holds multiple yellow things!.",
		ROCKY = "*The Rock Lobster flexes it's large pincer.",
		
		COMPASS =
		{
			GENERIC="*Which way am I facing?",
			N = "*North",
			S = "*South",
			E = "*East",
			W = "*West",
			NE = "*Northeast",
			SE = "*Southeast",
			NW = "*Northwest",
			SW = "*Southwest",
		},

		NIGHTMARE_TIMEPIECE =	-- Duplicated
		{
			WAXING = "*Warning!",
			STEADY = "*Going Steady.",
			WANING = "*It's receding.",
			DAWN = "*It's Dissapearing!",
			WARN = "*Warning.",
			CALM = "*Calm.",
			NOMAGIC = "*Gone.",
		},

		HOUNDSTOOTH="*It's sharp!",
		ARMORSNURTLESHELL="*It sticks to your back.",
		BAT="*The bat shows off his sharp pearly whites!",
		BATBAT = "*(You feel the urge to fly with these.)",
		BATWING="*(Dead angry flying rat.)",
		BATWING_COOKED="*(Nutritious.)",
        BATCAVE = "*They say every so often a man in a bat suit comes out.",
		BEDROLL_FURRY="*It's so warm and comfy.",
		BUNNYMAN="*The bunnyman sniffs for meat.",
		FLOWER_CAVE="*A flower!",
		FLOWER_CAVE_DOUBLE="*A flower!",
		FLOWER_CAVE_TRIPLE="*A flower!",
		GUANO="*Another flavour of poop.",
		LANTERN="*A more civilized light.",
		LIGHTBULB="*It's strangely tasty looking.",
		MANRABBIT_TAIL="*I just like holding it.",
		MUSHTREE_TALL = {
            GENERIC = "*That mushroom got too big for its own good.",
            BLOOM = "*(You can't tell by looking, but it's smelly.)",
        },
		MUSHTREE_MEDIUM = {
            GENERIC = "*(You'd rather not be near it).",
            BLOOM = "*(You can't tell by looking, but it's smelly.)",
        },
		MUSHTREE_SMALL = {
            GENERIC = "*A cute small, growing-like-crazy mushroom.",
            BLOOM = "*(You can't tell by looking, but it's smelly.)",
        },
        MUSHTREE_TALL_WEBBED = "*They must sell a lot of baked goods here.",
        SPORE_TALL = "*It's so bright and cozy looking.",
        SPORE_MEDIUM = "*It's so bright and cozy looking.",
        SPORE_SMALL = "*It's so bright and cozy looking.",
        SPORE_TALL_INV = "*It's nice and snug in my pocket!",
        SPORE_MEDIUM_INV = "*It's nice and snug in my pocket!",
        SPORE_SMALL_INV = "*It's nice and snug in my pocket!",
		RABBITHOUSE=
		{
			GENERIC = "*(You have a feeling veggie-only eaters live here.)",
			BURNT = "*Burnt with a lingering aroma of veggies.",
		},
		SLURTLE="*Slimy slime slimy slug thing",
		SLURTLE_SHELLPIECES="*A puzzle with no solution.",
		SLURTLEHAT="*(You feel kinda silly wearing this.)",
		SLURTLEHOLE="*Seems super slimy.",
		SLURTLESLIME="*(Letting the slime glide agaisnt your fingers fill you with determination.)",
		SNURTLE="*Slimy slime slimy slug thing #2!",
		SPIDER_HIDER="*More spider solicitors selling baked goods!",
		SPIDER_SPITTER="*(You definitely don't want his baked goods.)",
		SPIDERHOLE="*Not the greatest spider bakery in town",
		STALAGMITE="*Look its a rock",
		STALAGMITE_FULL="*Wow its a great rock",
		STALAGMITE_LOW="*(You sure love admiring rocks)",
		STALAGMITE_MED="*Man admiring rocks is so hot right now.",
		STALAGMITE_TALL="*Wow its a rock.",
		STALAGMITE_TALL_FULL="*The coolest rock in rocksville",
		STALAGMITE_TALL_LOW="*The second coolest rock in rocksville",
		STALAGMITE_TALL_MED="*Please stop examining rocks, gosh darnit.",

		TURF_CARPETFLOOR = "Yet another ground type.",
		TURF_CHECKERFLOOR = "Yet another ground type.",
		TURF_DIRT = "Yet another ground type.",
		TURF_FOREST = "Yet another ground type.",
		TURF_GRASS = "Yet another ground type.",
		TURF_MARSH = "Yet another ground type.",
		TURF_ROAD = "Yet another ground type.",
		TURF_ROCKY = "Yet another ground type.",
		TURF_SAVANNA = "Yet another ground type.",
		TURF_WOODFLOOR = "Yet another ground type.",

		TURF_CAVE="Yet another ground type.",
		TURF_FUNGUS="Yet another ground type.",
		TURF_SINKHOLE="Yet another ground type.",
		TURF_UNDERROCK="Yet another ground type.",
		TURF_MUD="Yet another ground type.",

		TURF_DECIDUOUS = "Yet another ground type.",
		TURF_SANDY = "Yet another ground type.",
		TURF_BADLANDS = "Yet another ground type.",

		POWCAKE = "*(You don't know if you're hungry enough.)",
        CAVE_ENTRANCE = "*(You wonder if you could move that rock.)",
        CAVE_ENTRANCE_RUINS = "*(You feel nostalgic for some odd reason.)",
        CAVE_ENTRANCE_OPEN = {
            GENERIC = "*(You cannot seem to enter.)",
            OPEN = "*(You feel great nostalgia just looking at it.)",
            FULL = "*(It's too bustling for you to enter.)",
        },
        CAVE_EXIT = {
            GENERIC = "*(You'll just stay down here, I suppose.)",
            OPEN = "*(You've had enough discovery for now.)",
            FULL = "*(It's too bustling for you to exit.)",
        },
		MAXWELLPHONOGRAPH = "*Not the theme you thought it'd play.",
		BOOMERANG = "*Aerodynamical!",
		PIGGUARD = "*The pigguard shuffles towards you and his totem.",
		ABIGAIL = "*(You'd feel Napstablook and Abigail would be great friends.)",
		ADVENTURE_PORTAL = "*(Readying yourself for a new adventure fills you with determination.)",
		AMULET = "*(You feel safe with this around.)",
		ANIMAL_TRACK = "*Tracks left by an animal.",
		ARMORGRASS = "*(You feel itchy just looking at this.)",
		ARMORMARBLE = "*As pretty as it looks, it weighs more than a boulder.",
		ARMORWOOD = "*It's a perfectly reasonable piece of clothing.",
		ARMOR_SANITY = "*(This armor makes you feel uneasy.)",
		ASH =
		{
			GENERIC = "*All that's left after fire has done its job.",
			REMAINS_GLOMMERFLOWER = "*The flower seemed to have withered when you left...",
			REMAINS_EYE_BONE = "*The eyebone seemed to have withered when you left...",
			REMAINS_THINGIE = "*This was once some thing before it got burned...",
		},
		AXE = "*A sharp axe.",
		BABYBEEFALO = "*The baby yearns for more love from it's parents.",
		BACKPACK = "*A standard brown backpack.",
		BACONEGGS = "*It looks delicious!",
		BANDAGE = "*Seems sterile enough.",
		BASALT = "*That's too strong to break through.",
		BATBAT = "*(You have the urge to fly using this wing.)",	-- Duplicated
		BEARDHAIR = "*I dont need this im only 5 years old homie.",
		BEARGER = "*The bearger thinks about how honey is love. Honey is life.",
		BEARGERVEST = "*Welcome to hibernation station!",
		ICEPACK = "*The fur keeps the temperature inside stable.",
		BEARGER_FUR = "*A mat of thick fur.",
		BEDROLL_STRAW = "*It smells like wet.",
		BEE =
		{
			GENERIC = "*The bee wiggles its stinger around.",
			HELD = "*Don't let it sting you!",
		},
		BEEBOX =
		{
			READY = "*It's full of honey.",
			FULLHONEY = "*It's full of honey.",
			GENERIC = "*Don't let it sting you!",
			NOHONEY = "*It's empty.",
			SOMEHONEY = "*I should wait a bit.",
			BURNT = "*Burnt beebox. Sad day.",
		},
		BEEFALO =
		{
			FOLLOWER = "*The beefalo has taking a liking to you.",
			GENERIC = "*The beefalo is content with life.",
			NAKED = "*The beefalo feels exposed and mildly humiliated.",
			SLEEPING = "*(The urge to sleep on a comfy beefalo fills you with determination.)",
		},
		BEEFALOHAT = "*What a nice hat.",
		BEEFALOWOOL = "*It smells like beefalo tears.",
		BEEHAT = "*A bee helmet! Yeah thats kinda it.",
		BEEHIVE = "*It's buzzing with activity.",
		BEEMINE = "*It isn't recommended to aggrevate this contraption.",
		BEEMINE_MAXWELL = "*Bottled mosquito rage!",
		BERRIES = "*Red berries taste the best.",
		BERRIES_COOKED = "*Cooking them only made it taste worse.",
		BERRYBUSH =
		{
			BARREN = "*I think it needs to be fertilized.",
			WITHERED = "*Nothing will grow in this heat.",
			GENERIC = "*Red berries taste the best.",
			PICKED = "*Maybe they'll grow back?",
		},
		BIGFOOT = "*That is one biiig foot.",
		BIRDCAGE =
		{
			GENERIC = "*Maybe a bird wants to live here?",
			OCCUPIED = "*That's my bird!",
			SLEEPING = "*The bird is sleeping soundly.",
			HUNGRY = "*He's looking a bit peckish.",
			STARVING = "*This bird is dire need of food.",
			DEAD = "*The bird is dead..",
			SKELETON = "*(You decided it'd be best to give it to Papyrus as a pet.)",
		},
		BIRDTRAP = "*It's great for getting little creatures!",
		BIRD_EGG = "*A small, normal egg.",
		BIRD_EGG_COOKED = "*Sunny side yum!",
		BISHOP = "*The Bishop eyes you with deadly intent!",
		BLOWDART_FIRE = "*This seems fundamentally unsafe.",
		BLOWDART_SLEEP = "*Just don't breathe in.",
		BLOWDART_PIPE = "*Good practice for my birthday cake!",
		BLUEAMULET = "*Cool as ice!",
		BLUEGEM = "*It sparkles with cold energy.",
		BLUEPRINT = "*It contains information on interesting contraptions.",
		BELL_BLUEPRINT = "*It contains information on a rather simple bell.",
		BLUE_CAP = "*It's weird and gooey.",
		BLUE_CAP_COOKED = "*It's different now...",
		BLUE_MUSHROOM =
		{
			GENERIC = "*It's a mushroom.",
			INGROUND = "*It's sleeping.",
			PICKED = "*All thats left is a gaping hole.",
		},
		BOARDS = "*Boards.",
		BOAT = "*A boat thats partially intact.",
		BONESHARD = "*Papyrus might enjoy this.",
		BONESTEW = "*Full of meaty goodness",
		BUGNET = "*(Holding onto this net hoping to catch somethinng fills you with determination.)",
		BUSHHAT = "*It feels itchy just looking at it.",
		BUTTER = "*(Holding butter fills you with determination...and slippery fingers.)",
		BUTTERFLY =
		{
			GENERIC = "*(Seeing a butterfly flutter fills you with determination.)",
			HELD = "(*Holding the butterfly fills you with determination.)",
		},
		BUTTERFLYMUFFIN = "*A muffin with a butterfly baked accessory.",
		BUTTERFLYWINGS = "*Without these, it's just butter.",
		BUZZARD = "*The buzzard idly looks for meat as it turns its head by 360 degrees.",
		CACTUS = 
		{
			GENERIC = "*Sharp but delicious.",
			PICKED = "*Deflated, but still spiny.",
		},
		CACTUS_MEAT_COOKED = "*Grilled fruit of the desert.",
		CACTUS_MEAT = "*(You feel like your butt is going to be sore after eating it.)",
		CACTUS_FLOWER = "*A pretty flower from a prickly plant.",

		COLDFIRE =
		{
			EMBERS = "*The fire is at its last spark.",
			GENERIC = "*(Being near a nice calming campfire fills you with determination.)",
			HIGH = "*The fire is roaring!",
			LOW = "*The fire needs a little energy.",
			NORMAL = "(Being near a nice calming campfire fills you with determination.)",
			OUT = "*The fire is out.",
		},
		CAMPFIRE =
		{
			EMBERS = "*The fire is at its last spark.",
			GENERIC = "(Being near a nice calming campfire fills you with determination.)",
			HIGH = "*The fire is roaring!",
			LOW = "*The fire needs a little energy.",
			NORMAL = "(Being near a nice calming campfire fills you with determination.)",
			OUT = "*The fire is out.",
		},
		CANE = "*The cane brings a spring to anyones step!",
		CATCOON = "*The catcoon looks around for valuable 'treasure'.",
		CATCOONDEN = 
		{
			GENERIC = "*It's a den in a stump.",
			EMPTY = "*Its owner ran out of lives.",
		},
		CATCOONHAT = "*Ears hat!",
		COONTAIL = "*The tail of a catcoon.",
		CARROT = "*A basic vegetable thats great to eat.",
		CARROT_COOKED = "*Mushy.",
		CARROT_PLANTED = "*The earth is making plantbabies.",
		CARROT_SEEDS = "*It's a seed.",
		WATERMELON_SEEDS = "*It's a seed.",
		CAVE_FERN = "*It's a fern.",
		CHARCOAL = "*It's small, dark and smells like burnt wood.",
        CHESSJUNK1 = "*A pile of broken chess pieces.",
        CHESSJUNK2 = "*Another pile of broken chess pieces.",
        CHESSJUNK3 = "*Even more broken chess pieces.",
		CHESTER = "*Chester ponders why it'll never be full.",
		CHESTER_EYEBONE =
		{
			GENERIC = "*The temptation to poke is strong.",
			WAITING = "*Looks like it'll wake up another time.",
		},
		COOKEDMANDRAKE = "*Poor little guy.",
		COOKEDMEAT = "*Char broiled to perfection.",
		COOKEDMONSTERMEAT = "*(You find this traumatizing.)",
		COOKEDSMALLMEAT = "*Small yet delicious.",
		COOKPOT =
		{
			COOKING_LONG = "*(Waiting for your food to cook fills you with determination.)",
			COOKING_SHORT = "*(Knowing your food is near done pushes your determination further.)",
			DONE = "*(Knowing that the food is ready makes your stomach full of determination.)",
			EMPTY = "*It's an empty pot. How saddening.",
			BURNT = "*The cookpot and cooked before properly cooking!",
		},
		CORN = "*High in fructose!",
		CORN_COOKED = "*High in fructose!",
		CORN_SEEDS = "*It's a seed.",
		CROW =
		{
			GENERIC = "*The crow seems to scurry along its way.",
			HELD = "*The crow seems discontent in his insituation.",
		},
		CUTGRASS = "*It's some grass. Wow.",
		CUTREEDS = "*It's some reeds. Amazing.",
		CUTSTONE = "*(Caressing these smooth stones fills you with ectasy..I mean determination.)",
		DEADLYFEAST = "*Even more potent than Papyrus speghetti.",
		DEERCLOPS = "*The deerclops is aggrevated you tread in his territory.",
		DEERCLOPS_EYEBALL = "*A huge eyeball. What a regretful site.",
		EYEBRELLAHAT =	"*What a weird hat.",
		DEPLETED_GRASS =
		{
			GENERIC = "*There's no more grass on this patch.",
		},
		DEVTOOL = "*(Having no idea what this is fills you with curiosity.)",
		DEVTOOL_NODEV = "*(Having no idea what this is fills you with curiosity.)",
		DIRTPILE = "*It's a pile of dirt... or IS it?",
		DIVININGROD =
		{
			COLD = "*The signal is very faint.",
			GENERIC = "*It's some kind of homing device.",
			HOT = "*This thing's going crazy!",
			WARM = "*(The locations signal calls to you)",
			WARMER = "*(Knowing the location is at your fingertips fills you with determination.)",
		},
		DIVININGRODBASE =
		{
			GENERIC = "*(You seem curious at what this does.)",
			READY = "*A large key is required for it to function.",
			UNLOCKED = "*It's now functioning properly.",
		},
		DIVININGRODSTART = "*This rod will come in handy.",
		DRAGONFLY = "*The dragonfly radiates intense heat from it's body.",
		ARMORDRAGONFLY = "*Grants fire immunity while looking spiffy.",
		DRAGON_SCALES = "*They're still warm.",
		DRAGONFLYCHEST = "*The chest itself holds more value than anything else in this world.",
		LAVASPIT = 
		{
			HOT = "*Hot spit!",
			COOL = "*I like to call it 'Basaliva'.",
		},

		LAVAE = "*The Lavae looks at you with hostility.",
		LAVAE_PET = 
		{
			STARVING = "*The Lavae is in dire need of food.",
			HUNGRY = "*The grumbles of the Lavae can be heard afar.",
			CONTENT = "*(The content Lavae fills you with determination.)",
			GENERIC = "*(Knowing that the Lavae loves you fills you with determination.)",
		},
		LAVAE_EGG = 
		{
			GENERIC = "*The egg is warm and pleasantly ok to touch.",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "*The egg shivers and is losing life quickly.",
			COMFY = "*(Knowing the egg will hatch fills you with determination.)",
		},
		LAVAE_TOOTH = "*It's an egg tooth!",

		DRAGONFRUIT = "*What a weird fruit.",
		DRAGONFRUIT_COOKED = "*Still weird.",
		DRAGONFRUIT_SEEDS = "*It's a seed.",
		DRAGONPIE = "*A delicious and healthy dragonpie.",
		DRUMSTICK = "*A partial uncooked turkey dinner.",
		DRUMSTICK_COOKED = "*A partial turkey dinner.",
		DUG_BERRYBUSH = "*Mothernature misses it's dugged baby.",
		DUG_GRASS = "*Mothernature misses it's dugged baby.",
		DUG_MARSH_BUSH = "*Mothernature misses it's dugged baby.",
		DUG_SAPLING = "*Mothernature misses it's dugged baby.",
		DURIAN = "*(The horrible smell of a Durian drains your Determination.)",
		DURIAN_COOKED = "*(The horrible smell of a cooked durian kills your Determination.)",
		DURIAN_SEEDS = "*It's a seed.",
		EARMUFFSHAT = "*Now you can attract all the bunny girls!",
		EGGPLANT = "*It doesn't look like an egg.",
		EGGPLANT_COOKED = "*It's even less eggy.",
		EGGPLANT_SEEDS = "*It's a seed.",
		DECIDUOUSTREE = 
		{
			BURNING = "*A tree is burning.",
			BURNT = "*The tree has lost all life. How saddening.",
			CHOPPED = "*(You promise the cut tree you'll spread trees everywhere. You weirdo.)",
			POISON = "*The Poison tree flails it's roots angrily.",
			GENERIC = "*It's all Leafy. Most of the time.",
		},
		ACORN = "*There's definitely something inside there.",
        ACORN_SAPLING = "*It'll be a tree soon!",
		ACORN_COOKED = "*Roasted to perfection.",
		BIRCHNUTDRAKE = "*A mad little nut.",
		EVERGREEN =
		{
			BURNING = "*A tree is burning.",
			BURNT = "*The tree has lost all life. How saddening.",
			CHOPPED = "*(You promise the cut tree you'll spread trees everywhere. You weirdo.)",
			GENERIC = "*Not much to say about a green tree.",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "*A tree is burning.",
			BURNT = "*The tree has lost all life. How saddening.",
			CHOPPED = "*(You promise the cut tree you'll spread trees everywhere. You weirdo.)",
			GENERIC = "*This tree has a long way to go.",
		},
		EYEPLANT = "*The Eyeplant has it's eyeballs all over you.",
		FARMPLOT =
		{
			GENERIC = "*This farmplot needs attention.",
			GROWING = "*(Seeing life burst from the earth fills you with determination.)",
			NEEDSFERTILIZER = "*This farmplot needs a little love.",
			BURNT = "*The farmplot has burnt. How saddening.",
		},
		FEATHERHAT = "*Now you can be one with the bird people. If they exist?",
		FEATHER_CROW = "*A crow feather.",
		FEATHER_ROBIN = "*A redbird feather.",
		FEATHER_ROBIN_WINTER = "*A snowbird feather.",
		FEM_PUPPET = "*She's seem to be in a bad situation.",
		FIREFLIES =
		{
			GENERIC = "*(Seeing fireflies spark up the night fills you with determination.)",
			HELD = "*These guys glow in your pocket!",
		},
		FIREHOUND = "*The firehound is acting unstable.",
		FIREPIT =
		{
			EMBERS = "*The fire is at it's last spark!",
			GENERIC = "*(Chilling around the calm fire fills you with determination.)",
			HIGH = "*The fire roars a flame.",
			LOW = "*The fire is losing it's spark.",
			NORMAL = "*(Chilling around the calm fire fills you with determination.)",
			OUT = "*(You can reignite it whenever you feel like it.)",
		},
		COLDFIREPIT =
		{
			EMBERS = "*The fire is at it's last spark!",
			GENERIC = "*(Chilling around the calm fire fills you with determination.)",
			HIGH = "The fire roars a flame.",
			LOW = "*The fire is losing it's spark.",
			NORMAL = "*(Chilling around the calm fire fills you with determination.)",
			OUT = "*(You can reignite it whenever you feel like it.)",
		},
		FIRESTAFF = "*A staff the breaths fire.",
		FIRESUPPRESSOR = 
		{	
			ON = "*Fling on!",
			OFF = "*All quiet on the flinging front.",
			LOWFUEL = "*The fuel tank is getting a bit low.",
		},

		FISH = "*A slippery squirmy feller",
		FISHINGROD = "*Hook, line and stick!",
		FISHSTICKS = "*Looks delicious!",
		FISHTACOS = "*Looks delicious!",
		FISH_COOKED = "*Grilled to perfection.",
		FLINT = "*A sharp rock, generally used for many tools in this world.",
		FLOWER = "*(Seeing a cute flower fills you with determination.)",
        FLOWER_WITHERED = "*(A withered flower. How saddening.)",
		FLOWERHAT = "*It smells like prettiness.",
		FLOWER_EVIL = "*These flowers are uncomfortable to be around.",
		FOLIAGE = "*Some leafy greens.",
		FOOTBALLHAT = "*A hat that absorbs an adequate amount of damage.",
		FROG =
		{
			DEAD = "*The frog has died.",
			GENERIC = "*(The frog reminds you of froggit.)",
			SLEEPING = "*Aww, look at him sleep!",
		},
		FROGGLEBUNWICH = "*It's delicious!",
		FROGLEGS = "*It's delicious!",
		FROGLEGS_COOKED = "*Tastes like chicken.",
		FRUITMEDLEY = "*It's delicious!",
		FURTUFT = "*Black and white fur.", 
		GEARS = "*A pile of mechanical parts.",
		GHOST = "*Napstablook's family members are really aggressive.",
		GOLDENAXE = "*That's one fancy axe.",
		GOLDENPICKAXE = "*Hey, isn't gold really soft?",
		GOLDENPITCHFORK = "*Why did I even make a pitchfork this fancy?",
		GOLDENSHOVEL = "*(Knowing this shovel will dig lots of junk fills you with determination.)",
		GOLDNUGGET = "*Sell one of these for a whole BOX of Nice Cream!",
		GRASS =
		{
			BARREN = "*It needs poop.",
			WITHERED = "*It's not going to grow back while it's so hot.",
			BURNING = "*That's burning fast!",
			GENERIC = "*(*You have the urge to hide behind the grass for no real reason.)",
			PICKED = "*Just a patch of cut grass remains.",
		},
		GREEN_CAP = "*It seems pretty normal.",
		GREEN_CAP_COOKED = "*It's different now...",
		GREEN_MUSHROOM =
		{
			GENERIC = "*It's a mushroom.",
			INGROUND = "*It's sleeping.",
			PICKED = "*All thats left is a gap of where the mushroom spawned from.",
		},
		GUNPOWDER = "*It looks completely unsafe to be near this.",
		HAMBAT = "*This seems unsanitary.",
		HAMMER = "*It's a hammer. I mean I guess It can fill you with determination?",
		HEALINGSALVE = "*(Knowing that the stinging sensation is good fills you with determination.)",
		HEATROCK =
		{
			FROZEN = "*It's stone cold.",
			COLD = "*It's now 'normal' cold.",
			GENERIC = "*(Knowing this rock will keep you nice and cool fills you with determination.)",
			WARM = "*It's a warm rock.",
			HOT = "*(You're tempted to fry an egg on this rock.)",
		},
		HOME = "*(Seeing a nice cozy home fills you with determination.)",
		HOMESIGN =
		{
			GENERIC = "It says 'NYEH HEH HEH.'-By The Great Papyrus.",
            UNWRITTEN = "*(You're tempted to write gibberish on the blank canvas.)",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "*It says 'Great deals at Muffet's Bakery'.",
            UNWRITTEN = "*(You're tempted to write gibberish on the blank canvas.)",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "It says 'Grillbys' with the rest of the text smothered in smog.",
            UNWRITTEN = "*(You're tempted to write gibberish on the blank canvas.)",
			BURNT = "\"Don't play with matches.\"",
		},
		HONEY = "*Looks delicious!",
		HONEYCOMB = "*Bees used to live in this.",
		HONEYHAM = "*It's Delicious!",
		HONEYNUGGETS = "It's Delicious!",
		HORN = "*(You attempted to hear the universe with this thing. Kinda weird thing to do.)",
		HOUND = "*A hound approaches. It looks at you with ill intent.",
		HOUNDBONE = "*Creepy.",
		HOUNDMOUND = "*Housed with savage and wild looking pups.",
		ICEBOX = "*(Knowing this IceBox will keep your food fresh fills you with determination.)",
		ICEHAT = "*For those who just are hot-headed by nature.",
		ICEHOUND = "*The Ice Hound's mouth is full of Saliva. It's now awkwardly frozen.",
		INSANITYROCK =
		{
			ACTIVE = "*Not to be around when active.",
			INACTIVE = "*It's more of a pyramid than an obelisk.",
		},
		JAMMYPRESERVES = "*It's delicious.",
		KABOBS = "*It's delicious.",
		KILLERBEE =
		{
			GENERIC = "*The Killer Bee will attempt to sting you!",
			HELD = "*(If it's between you and me, it'd be fine if we killed this bugger.)",
		},
		KNIGHT = "*The Knight wobbles back and fourth while maintaining its posture.",
		KOALEFANT_SUMMER = "*The Koalefant looks at you with unease.",
		KOALEFANT_WINTER = "*The Koalefant looks at you with unease.",
		KRAMPUS = "*The Krampus has its Eye on the Prize!",
		KRAMPUS_SACK = "*(Knowing this sack can hold more inventory fills you with determination.)",
		LEIF = "*The Lief protects his kind with full vigor.",
		LEIF_SPARSE = "*The Lief protects his kind with full vigor.",
		LIGHTNING_ROD =
		{
			CHARGED = "*It's full of untapped energy!",
			GENERIC = "*(Knowing this lightning rod can protect you from lightning fills you with determination.)",
		},
		LIGHTNINGGOAT = 
		{
			GENERIC = "*The lightning goat hops along by.",
			CHARGED = "(Knowing that the lightning goat is fully charged is hella scary pce out wtf.)",
		},
		LIGHTNINGGOATHORN = "*A small horn that absorbs lightning.",
		GOATMILK = "*You'll be shocked by the results!",
		LITTLE_WALRUS = "*The little guy looks at you with great frustration.",
		LIVINGLOG = "*(You attempt to talk to the log. All you hear is groans.)",
		LOG =
		{
			BURNING = "*Poor logs.",
			GENERIC = "*Typical logs. Used in everyday survival life.",
		},
		LUREPLANT = "*What a strange plant.",
		LUREPLANTBULB = "*(You comtemplate if you should eat it whole or not.)",
		MALE_PUPPET = "He's trapped!",

		MANDRAKE_ACTIVE = "*As you retreat, the Mandrake attempts to cling to you!",
		MANDRAKE_PLANTED = "*(You're tempted to pull on the head.)",
		MANDRAKE = "*A mandrake root has strange powers.",

		MANDRAKESOUP = "*It's delicious!",
		MANDRAKE_COOKED = "*A very crispy mandrake.",
		MARBLE = "Fancy!",
		MARBLEPILLAR = "*A pillar that could be used for your survival.",
		MARBLETREE = "*A pillar that could be used for your survival.",
		MARSH_BUSH =
		{
			BURNING = "*That's burning fast!",
			GENERIC = "*It looks thorny. Better not.",
			PICKED = "*That hurt.",
		},
		BURNT_MARSH_BUSH = "*It's all burnt up.",
		MARSH_PLANT = "*It's a plant.",
		MARSH_TREE =
		{
			BURNING = "*Spikes and fire!",
			BURNT = "*Now it's burnt and spiky.",
			CHOPPED = "*(You feel content defeating a prickly tree.)",
			GENERIC = "*The tree is thorny to the max.",
		},
		MAXWELL = "*This man soul is easy uneasy.",
		MAXWELLHEAD = "*A statue erected for a strange man.",
		MAXWELLLIGHT = "*These lights feel off from other lights...",
		MAXWELLLOCK = "*Looks almost like a key hole.",
		MAXWELLTHRONE = "*That doesn't look very comfortable.",
		MEAT = "*Tasty, now wheres the salt?",
		MEATBALLS = "It's delicious!",
		MEATRACK =
		{
			DONE = "*(Knowing the jerky will last a long while fills you with determination.)",
			DRYING = "*The meat takes awhile to properly dry",
			DRYINGINRAIN = "*The rain is holding up the drying process..",
			GENERIC = "*Drying meats on these racks can offer longevity to your food supply.",
			BURNT = "*Does the wood taste like jerky atleast?",
		},
		MEAT_DRIED = "*(Mouth waters thinkign about gnawing on jerky.)",
		MERM = "The Merm looks at you as a good appetizer!",
		MERMHEAD = 
		{
			GENERIC = "*The stinkiest thing I'll smell all day.",
			BURNT = "*Burnt merm flesh somehow smells even worse.",
		},
		MERMHOUSE = 
		{
			GENERIC = "*The house looks worse than a public outdoor potty.",
			BURNT = "*Nothing to live in, now.",
		},
		MINERHAT = "*Great for working in the dark!",
		MONKEY = "*The Splumonkey gathers more 'ammo'...",
		MONKEYBARREL = "*A barrel full of poop flinging monkeys.",
		MONSTERLASAGNA = "*(The meal reminds you of Papyrus speghetti and you drop it immediately.)",
		FLOWERSALAD = "*A bowl of foliage.",
        ICECREAM = "'*I scream for (N)ice cream!'",
        WATERMELONICLE = "*It's not a Nice Cream but it'll do.",
        TRAILMIX = "*A healthy, natural snack.",
        HOTCHILI = "*So hot that even the bowling looks like it's melting.",
        GUACAMOLE = "*It's Delicious!",
		MONSTERMEAT = "*(You do not enjoy seeing this)",
		MONSTERMEAT_DRIED = "*(Even dried you do not enjoy this.)",
		MOOSE = "*The MooseGoose honks the honks of its fellow honkers.",
		MOOSEEGG = "*This egg seems to carry multiple souls within it.",
		MOSSLING = "*The Mossling seems to be full of spark and spin!",
		FEATHERFAN = "*Down to bring my temperature down.",
        MINIFAN = "*Somehow the breeze comes out the back twice as fast.",
		GOOSE_FEATHER = "*(You can create a soft pillow with these!)",
		STAFF_TORNADO = "*Spinning doom.",
		MOSQUITO =
		{
			GENERIC = "*The Mosquito readies its sucker straw.",
			HELD = "*Hey, is that my blood?",
		},
		MOSQUITOSACK = "*(You feel uneasy holding a sack of blood.)",
		MOUND =
		{
			DUG = "*Digging up someones grave isn't the sane thing to do.",
			GENERIC = "*(You feel tempted to dig up graves.)",
		},
		NIGHTLIGHT = "It gives off a spooky light.",
		NIGHTMAREFUEL = "This stuff is crazy!",
		NIGHTSWORD = "*The sword radiates an unsettling aura.",
		NITRE = "*Generally used for explosions.",
		ONEMANBAND = "*(Knowing that people enjoy your music fills you with determination.)",
		PANDORASCHEST = "*And within the treasure chest is...",
		PANFLUTE = "*(Knowing that people might enjoy your panflute solo fills you with determination.)",
		PAPYRUS = "*(The name reminds you of a certain skeleton with a strong fond of speghetti recipes.)",
		PENGUIN = "**The Pengull becomes an annoyance like a drunk uncle on New Years Day.",
		PERD = "*The turkey eyes your berries and wobbles flirtatiously",
		PEROGIES = "It's delicious!",
		PETALS = "*(Knowing you'll make great use of these petals fills you with determination.)",
		PETALS_EVIL = "*These petals feel really 'tainted'...",
		PHLEGM = "*It's thick and pliable. And salty.",
		PICKAXE = "*Do people really examine their pickaxes? (You pander this for no clear reason.)",
		PIGGYBACK = "*A backpack made with mutilated pig corpses. Saddening.",
		PIGHEAD = 
		{	
			GENERIC = "*Very saddening.",
			BURNT = "*Rest In Peace.",
		},
		PIGHOUSE =
		{
			FULL = "*(Knowing the house is brimming with cheerful piggies fills you with determination)",
			GENERIC = "*The houses are pretty admirable.",
			LIGHTSOUT = "*(You're tempted to press your face agaisnt the window.)",
			BURNT = "*Now the pig are homeless. Saddening.",
		},
		PIGKING = "*The Pigking looks at you with smiles and joy",
		PIGMAN =
		{
			DEAD = "*What a sad sight to see.",
			FOLLOWER = "*The pigman follows but will trail off whenever..",
			GENERIC = "*(You feel comfortable around the pig people.)",
			GUARD = "*He looks serious.",
			WEREPIG = "*The werepig looks at you with only food on his mind!",
		},
		PIGSKIN = "*It smells but can come in handy.",
		PIGTENT = "*Smells like bacon.",
		PIGTORCH = "*Sure looks cozy.",
		PINECONE = "*The pinecone wants to grow to a massive Leif!",
        PINECONE_SAPLING = "*It'll be a tree soon!",
        LUMPY_SAPLING = "*Even lumpy trees get love too!",
		PITCHFORK = "*A sharp tool to remove turf off the ground",
		PLANTMEAT = "*Not the best way to start off being a vegatarian..",
		PLANTMEAT_COOKED = "Not the best way to start off being a vegatarian..",
		PLANT_NORMAL =
		{
			GENERIC = "*(Waiting for the plant to grow fills you with determination.)",
			GROWING = "*(Knowing the plant will grow any moment fills you with determination.)",
			READY = "(*The plant has fully given life and your brimming with determination!)",
			WITHERED = "*The heat killed it.",
		},
		POMEGRANATE = "*It looks like the inside of an alien's brain.",
		POMEGRANATE_COOKED = "*Haute Cuisine!",
		POMEGRANATE_SEEDS = "*It's a seed.",
		POND = "*(You imagine Onionsan would not enjoy being in such a confined space)",
		POOP = "*(You ponder why smothering poop on your hands is a good idea. It isn't.)",
		FERTILIZER = "*No need to hold it bare handed anymore!",
		PUMPKIN = "*Its a pumpkin!",
		PUMPKINCOOKIE = "*It's delicious!",
		PUMPKIN_COOKED = "*How did it not turn into a pie?",
		PUMPKIN_LANTERN = "*Spooky!",
		PUMPKIN_SEEDS = "*It's a seed.",
		PURPLEAMULET = "*(The amulet whispers manipulative things. You're not fond of it.)",
		PURPLEGEM = "*(It holds magical energy beyond your comprehension.)",
		RABBIT =
		{
			GENERIC = "*(The cute rabbit hopping around fills you with determination.)",
			HELD = "*(You pet the rabbit joyfully, it snuggles agaisnt you.)",
		},
		RABBITHOLE = 
		{
			GENERIC = "*(You're tempted to jump right in for some reason)",
			SPRING = "*(You attempt to squish through the mud. Not the greatest of ideas.",
		},
		RAINOMETER = 
		{	
			GENERIC = "*It measures cloudiness.",
			BURNT = "*The measuring parts went up in a cloud of smoke.",
		},
		RAINCOAT = "*Great for keeping your little body dry.",
		RAINHAT = "*Great for keeping your little noggin dry.",
		RATATOUILLE = "*It's delicious!",
		RAZOR = "*(You ponder about growing a beard. It fills you with determination.)",
		REDGEM = "*It sparkles with inner warmth.",
		RED_CAP = "*It smells funny.",
		RED_CAP_COOKED = "*It's different now...",
		RED_MUSHROOM =
		{
			GENERIC = "*It's a mushroom.",
			INGROUND = "*It's sleeping.",
			PICKED = "*Alls thats left is a gaping hole.",
		},
		REEDS =
		{
			BURNING = "*That's really burning!",
			GENERIC = "*It's a clump of cattails.",
			PICKED = "*Alls thats left is just the root of it.",
		},
        RELIC = 
        {
            GENERIC = "*Ancient household goods.",
            BROKEN = "*Nothing to work with here.",
        },
        RUINS_RUBBLE = "*This can be fixed.",
        RUBBLE = "*Just bits and pieces of rock.",
		RESEARCHLAB = 
		{	
			GENERIC = "*It's used to making all new sorts of contraptions.",
			BURNT = "*It won't be doing much science now.",
		},
		RESEARCHLAB2 = 
		{
			GENERIC = "*It's used to create even better contraptions than the last contraption maker!",
			BURNT = "*The extra science didn't keep it alive.",
		},
		RESEARCHLAB3 = 
		{
			GENERIC = "*It's used to create even better contraptions than the last contraption and the contraption before that!",
			BURNT = "Whatever it was, it's burnt now.",
		},
		RESEARCHLAB4 = 
		{
			GENERIC = "*It's used to create even better contraptions than the last contraption and the last contraption and the last contraption before that!",
			BURNT = "*Fire doesn't really solve naming issues...",
		},
		RESURRECTIONSTATUE = 
		{
			GENERIC = "*That's the strangest looking statue ever.",
			BURNT = "*Not much use anymore.",
		},		RESURRECTIONSTONE = "*(Being near this resurrectionstone fills you with determination.)",
		ROBIN =
		{
			GENERIC = "*The robin enjoys its sunflower seeds",
			HELD = "*Its nice and snug in your pocket.",
		},
		ROBIN_WINTER =
		{
			GENERIC = "*The robin enjoys its icicles(?)",
			HELD = "*It's so soft.",
		},
		ROBOT_PUPPET = "*It's trapped!",
		ROCK_LIGHT =
		{
			GENERIC = "*A crusted over lava pit.",
			OUT = "*Looks fragile.",
			LOW = "*The lava's crusting over.",
			NORMAL = "*Nice and comfy.",
		},
		ROCK = "*It's a rock. Yeah, that's literally it. Expected it to move or something?",
		ROCK_ICE = 
		{
			GENERIC = "*Time to make ice cubes!",
			MELTED = "*Watching Ice freeze is like watching paint dry. Why?",
		},
		ROCK_ICE_MELTED = "*Nothing useful until it freezes again.",
		ICE = "*Ice to meet you.",
		ROCKS = "*(You ponder why the rock isn't talking to you.)",
        ROOK = "*Deadly as they are reckless.",
		ROPE = "*Some short lengths of rope.",
		ROTTENEGG = "*Ew! It stinks!",
		SANITYROCK =
		{
			ACTIVE = "*That's a CRAZY looking rock!",
			INACTIVE = "*Where did the rest of it go?",
		},
		SAPLING =
		{
			BURNING = "*That's burning fast!",
			WITHERED = "*Just needs to be a bit cooler.",
			GENERIC = "*This twiggy sapling could snap any moment.",
			PICKED = "*Whoops.",
		},
		SEEDS = "*Each one is a tiny mystery.",
		SEEDS_COOKED = "*Roasted seeds ain't half bad.",
		SEWING_KIT = "*Got a torn shirt? Just push it through this!",
		SHOVEL = "*(Your curiosity of what could be potentionally be undergrund fills you with determination)",
		SILK = "*Sometimes if you lay money on silk, you wake up with a donut.",
		SKELETON = "*(You feel conflicted if that is Sans or Papyrus sleeping.)",
		SCORCHED_SKELETON = "*Spooky.",
		SKULLCHEST = "*(The intimidating box gives you mix feelings about opening. Open it?)",
		SMALLBIRD =
		{
			GENERIC = "*The tallbird bobbles its body up and down.",
			HUNGRY = "*It looks hungry.",
			STARVING = "*It must be starving.",
		},
		SMALLMEAT = "*A small piece of meat from a small animal.",
		SMALLMEAT_DRIED = "*A little jerky.",
		SPAT = "*What a crusty looking animal.",
		SPEAR = "*Used by people who hunt for their food.",
		SPIDER =
		{
			DEAD = "*Saddening.",
			GENERIC = "*Selling any baked goods today?",
			SLEEPING = "*Guess ill get my donut another day.",
		},
		SPIDERDEN = "*The Best place to get all your baked goods!",
		SPIDEREGGSACK = "*(You feel happy knowing you have a spider bakery in your pocket!)",
		SPIDERGLAND = "*It has a tangy, antiseptic smell.",
		SPIDERHAT = "*(You feel slightly demotivated.)",
		SPIDERQUEEN = "*The spiderqueen glares at you with her children rushing beside her.",
		SPIDER_WARRIOR =
		{
			DEAD = "*Saddening.",
			GENERIC = "*Aggressive salesmen. (You decline their half-baked deals)",
			SLEEPING = "*Best not to wake em'",
		},
		SPOILED_FOOD = "*It's a furry ball of rotten food.",
		STATUEHARP = "*What has happened to the head?",
		STATUEMAXWELL = "*A statue chisled out of stone",
		STEELWOOL = "*Scratchy metal fibers.",
		STINGER = "*Looks sharp!",
		STRAWHAT = "*Great for the blistering heat and other general things aswell.",
		STUFFEDEGGPLANT = "*It's delicious!",
		SUNKBOAT = "*(As much as you want to use it, it's pretty useless.)",
		SWEATERVEST = "*This vest is dapper as all get-out.",
		REFLECTIVEVEST = "*Keep off, evil sun!",
		HAWAIIANSHIRT = "*It's not lab-safe!",
		TAFFY = "*It's delicious!",
		TALLBIRD = "*The tallbird looks at you as a child-thieving threat!",
		TALLBIRDEGG = "*Will it hatch?",
		TALLBIRDEGG_COOKED = "*Delicious and nutritional.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "*It needs a little WAMRTH and attention.",
			GENERIC = "*Looks like it's hatching.",
			HOT = "*The egg is sweating prefusely. Not a good sign.",
			LONG = "*The egg is taking its sweet ole time to hatch.",
			SHORT = "*The egg is about to burst!",
		},
		TALLBIRDNEST =
		{
			GENERIC = "*Will you take the egg?",
			PICKED = "*The nest is empty.",
		},
		TEENBIRD =
		{
			GENERIC = "*Not a very tall bird.",
			HUNGRY = "*I'd better find it some food.",
			STARVING = "*It has a dangerous look in it's eye.",
		},
		TELEBASE =	-- Duplicated
		{
			VALID = "*It's ready to go.",
			GEMS = "*It needs more purple gems.",
		},
		GEMSOCKET = -- Duplicated
		{
			VALID = "*Looks ready.",
			GEMS = "*It needs a gem.",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "*It fully functional!",
			GENERIC = "*This appears to be a nexus to another world!",
			LOCKED = "*There's still something missing.",
			PARTIAL = "*The contraption is almost complete. Just a bit more tinkering..",
		},
		TELEPORTATO_BOX = "*This may control the polarity of the whole universe.",
		TELEPORTATO_CRANK = "*Tough enough to handle the most intense experiments.",
		TELEPORTATO_POTATO = "*This metal potato contains great and fearful power...",
		TELEPORTATO_RING = "*A ring that could focus dimensional energies.",
		TELESTAFF = "*It can show me the world.",
		TENT = 
		{
			GENERIC = "*Seeing a nice cozy tent makes you sleepy, also determination,",
			BURNT = "*Nothing left to sleep in.",
		},
		SIESTAHUT = 
		{
			GENERIC = "*Knowing this Siesta will keep you cool from the blazing heat fills you with determination.",
			BURNT = "*It won't provide much shade now.",
		},
		TENTACLE = "*The tentacle swipes violently seeking for a handshake.",
		TENTACLESPIKE = "*It's pointy and slimy.",
		TENTACLESPOTS = "*These were its genitalia.",
		TENTACLE_PILLAR = "*A slimy pole.",
        TENTACLE_PILLAR_HOLE = "*Seems stinky, but worth exploring.",
		TENTACLE_PILLAR_ARM = "*Little slippery arms.",
		TENTACLE_GARDEN = "*Yet another slimy pole.",
		TOPHAT = "*A hat that gives you that 'Dapper' look",
		TORCH = "*Great for keeping the night away.",
		TRANSISTOR = "*It's whirring with electricity.",
		TRAP = "*Ready to trap the most clueless of creatures!",
		TRAP_TEETH = "*This is a nasty surprise.",
		TRAP_TEETH_MAXWELL = "*These seem very dangerous. Wouldn't trust walking on them.",
		TREASURECHEST = 
		{
			GENERIC = "*Are you a box lover or hater?",
			BURNT = "*That trunk was truncated.",
		},
		TREASURECHEST_TRAP = "*How convenient!",
		TREECLUMP = "*Something seems to be blocking your destination.",
		
		TRINKET_1 = "*They are all melted together.", --Melty Marbles
		TRINKET_2 = "*It's just a cheap replica.", --Fake Kazoo
		TRINKET_3 = "*The knot is stuck. Forever.", --Gord's Knot
		TRINKET_4 = "*It must be some kind of religious artifact.", --Gnome
		TRINKET_5 = "*Sadly, it's too small for me to escape on.", --Tiny Rocketship
		TRINKET_6 = "*Their electricity carrying days are over.", --Frazzled Wires
		TRINKET_7 = "*I have no time for fun and games!", --Ball and Cup
		TRINKET_8 = "*Great. All of my tub stopping needs are met.", --Hardened Rubber Bung
		TRINKET_9 = "*I'm more of a zipper person, myself.", --Mismatched Buttons
		TRINKET_10 = "*I hope I get out of here before I need these.", --Second-hand Dentures
		TRINKET_11 = "*He whispers beautiful lies to me.", --Lying Robot
		TRINKET_12 = "*I'm not sure what I should do with a dessicated tentacle.", --Dessicated Tentacle
		TRINKET_13 = "*It must be some kind of religious artifact.", --Gnomette
		TRINKET_14 = "*Now if I only had some tea...", -- Leaky Teacup
		TRINKET_15 = "*The king's bishop.", -- White Bishop
		TRINKET_16 = "*This is the wrong bishop.", -- Black Bishop
		TRINKET_17 = "*An ice cream fork!", -- Bent Spork
		TRINKET_18 = "*I wonder what it's hiding?", -- Toy Trojan Horse
		TRINKET_19 = "*It doesn't spin very well.", -- Unbalanced Top
		TRINKET_20 = "*Now I can scratch my back; all my problems are solved!", -- Back Scratcher
		TRINKET_21 = "*This egg beater is all bent out of shape.", -- Beaten Beater
		TRINKET_22 = "*Sadly, it's not strong enough to be useful for anything.", -- Frayed Yarn
		TRINKET_23 = "*I can put my shoes on without help, thanks.", -- Shoe Horn
		TRINKET_24 = "*Is it really lucky?", -- Lucky Cat Jar
		TRINKET_25 = "*It smells kind of stale.", -- Air Unfreshener
		TRINKET_26 = "*Food and a cup! The ultimate survival container.", -- Potato Cup
		TRINKET_27 = "*Good, I can hang my clothes up if I ever find a hook.", -- Wire Hanger
		
		TRUNKVEST_SUMMER = "*Wilderness casual.",
		TRUNKVEST_WINTER = "*Winter survival gear.",
		TRUNK_COOKED = "*Somehow even more nasal than before.",
		TRUNK_SUMMER = "*A light breezy trunk.",
		TRUNK_WINTER = "*A thick, hairy trunk.",
		TUMBLEWEED = "*Tumble tumble tumble...",
		TURF_CARPETFLOOR = "*It's surprisingly scratchy.",	-- Duplicated
		TURF_CHECKERFLOOR = "*These are pretty snazzy.",	-- Duplicated
		TURF_DIRT = "*A chunk of ground.",	-- Duplicated
		TURF_FOREST = "*A chunk of ground.",	-- Duplicated
		TURF_GRASS = "*A chunk of ground.",	-- Duplicated
		TURF_MARSH = "*A chunk of ground.",	-- Duplicated
		TURF_ROAD = "*Hastily cobbled stones.",	-- Duplicated
		TURF_ROCKY = "*A chunk of ground.",	-- Duplicated
		TURF_SAVANNA = "*A chunk of ground.",	-- Duplicated
		TURF_WOODFLOOR = "*These are floorboards.",	-- Duplicated
		TURKEYDINNER = "*Mmmm.",
		TWIGS = "*(You're tempted to just swing the stick around)",
		UMBRELLA = "*I wonder if there's a wet statue I can attach this too?",
		GRASS_UMBRELLA = "*I wonder if there's a wet statue I can attach this too?",
		UNIMPLEMENTED = "*It doesn't look finished! It could be dangerous.",
		WAFFLES = "It's delicious!",
		WALL_HAY = 
		{	
			GENERIC = "*The walls look strong enoug to handle some grit.",
			BURNT = "*That won't do at all.",
		},
		WALL_HAY_ITEM = "*This seems like a bad idea.",
		WALL_STONE = "*That's a nice wall.",
		WALL_STONE_ITEM = "*Super strong and sturdy. Great Defense.",
		WALL_RUINS = "*An ancient piece of wall.",
		WALL_RUINS_ITEM = "*A solid piece of history.",
		WALL_WOOD = 
		{
			GENERIC = "*Pointy!",
			BURNT = "*Burnt!",
		},
		WALL_WOOD_ITEM = "*Pickets!",
		WALL_MOONROCK = "*Spacey and smooth!",
		WALL_MOONROCK_ITEM = "*Very light but surprisingly tough.",
		WALRUS = "*The walruses has its darting eyes on you.",
		WALRUSHAT = "*It's covered with walrus hairs.",
		WALRUS_CAMP =
		{
			EMPTY = "*A home for two blubbery aggressors.",
			GENERIC = "*It looks warm and cozy inside.",
		},
		WALRUS_TUSK = "*A big ivory tusk.",
		WARDROBE = 
		{
			GENERIC = "*Time to outdress Mettaton.",
            BURNING = "*That's burning fast!",
			BURNT = "*So long, style.",
		},
		WARG = "*(Your tempted to beckon it to you but it doesn't seem like the right choice.)",
		WASPHIVE = "*Those bees are mad.",
		WATERMELON = "*Sticky sweet.",
		WATERMELON_COOKED = "*Juicy and warm.",
		WATERMELONHAT = "Let the juice run down your face.",
		WETGOOP = "*It's delicious!",
		WINTERHAT = "*It'll be good for when winter comes.",
		WINTEROMETER = 
		{
			GENERIC = "*It checks the weather.",
			BURNT = "*Its measuring days are over.",
		},
		WORMHOLE =
		{
			GENERIC = "*Soft and undulating.",
			OPEN = "*Science compels me to jump in.",
		},
		WORMHOLE_LIMITED = "*Guh, that thing looks worse off than usual.",
		ACCOMPLISHMENT_SHRINE = "*Using this will show reveal everything. You sure?",        
		LIVINGTREE = "*(You feel like you're being watched.)",
		ICESTAFF = "*It's cold to the touch.",
		REVIVER = "*But what if they want to be a ghost?",
		LIFEINJECTOR = "*Booooost!",
		SKELETON_PLAYER =
		{
			MALE = "*%s, Stay determined! Don't lose hope because of %s.",
			FEMALE = "*%s, Stay determined! Don't lose hope because of %s.",
			ROBOT = "*%s, Stay determined! Don't lose hope because of %s.",
			DEFAULT = "*%s, Stay determined! Don't lose hope because of %s.",
		},
		HUMANMEAT = "*(You refuse.)",
		HUMANMEAT_COOKED = "*(You refuse.)",
		HUMANMEAT_DRIED = "*(You refuse.)",
		MOONROCKNUGGET = "*(You refuse.)",
	},
	DESCRIBE_GENERIC = "*(Whatever that thing is compells you to investigate further)",
	DESCRIBE_TOODARK = "*It's too dark to see!",
	DESCRIBE_SMOLDERING = "*That thing is about to catch fire.",
	EAT_FOOD =
	{
		TALLBIRDEGG_CRACKED = "*Mmm. Beaky.",
	},
}
