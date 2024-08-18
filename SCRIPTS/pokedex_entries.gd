extends Node

var pokedex_entries = {
	"bulbasaur": {
		"pokemon_name": "bulbasaur",
		"dex_info": [
			"A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokémon.",
			"For some time after its birth, it grows by gaining nourishment from the seed on its back.",
			"The seed on its back is filled with nutrients. The seed grows steadily larger as its body grows."
		]
	},
	"ivysaur": {
		"pokemon_name": "ivysaur",
		"dex_info": [
			"When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.",
			"Exposure to sunlight adds to its strength. Sunlight also makes the bud on its back grow larger.",
			"The bulb on its back grows by drawing energy. It gives off an aroma when it is ready to bloom."
		]
	},
	"venusaur": {
		"pokemon_name": "venusaur",
		"dex_info": [
			"The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.",
			"It uses its petals to capture sunlight. It thrives in the sunlight. It also gives off a pleasant fragrance.",
			"After a rainy day, the flower on its back smells stronger. The scent attracts other Pokémon."
		]
	},
	"charmander": {
		"pokemon_name": "charmander",
		"dex_info": [
			"Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.",
			"It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.",
			"The flame on its tail shows the strength of its life force. If it is weak, the flame also burns weakly."
		]
	},
	"charmeleon": {
		"pokemon_name": "charmeleon",
		"dex_info": [
			"When it swings its burning tail, it elevates the temperature to unbearably high levels.",
			"It lashes about with its tail to knock down its foe. It then tears up the fallen opponent with sharp claws.",
			"In the rocky mountains where Charmeleon live, their fiery tails shine at night like stars."
		]
	},
	"charizard": {
		"pokemon_name": "charizard",
		"dex_info": [
			"Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.",
			"It is said that Charizard's fire burns hotter if it has experienced harsh battles.",
			"Its wings can carry this Pokémon close to an altitude of 4,600 feet. It blows out fire at very high temperatures."
		]
	},
	"squirtle": {
		"pokemon_name": "squirtle",
		"dex_info": [
			"After birth, its back swells and hardens into a shell. Powerfully sprays foam from its mouth.",
			"When it retracts its long neck into its shell, it squirts out water with vigorous force.",
			"Shoots water at prey while in the water. Withdraws into its shell when in danger."
		]
	},
	"wartortle": {
		"pokemon_name": "wartortle",
		"dex_info": [
			"Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.",
			"It is recognized as a symbol of longevity. If its shell has algae on it, that Wartortle is very old.",
			"It cleverly controls its furry ears and tail to maintain its balance while swimming."
		]
	},
	"blastoise": {
		"pokemon_name": "blastoise",
		"dex_info": [
			"A brutal Pokémon with pressurized water jets on its shell. They are used for high-speed tackles.",
			"The rocket cannons on its shell fire jets of water capable of punching holes through thick steel.",
			"It deliberately makes itself heavy so it can withstand the recoil of the water jets it fires."
		]
	},
	"caterpie": {
		"pokemon_name": "caterpie",
		"dex_info": [
			"Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.",
			"For protection, it releases a horrible stench from the antenna on its head to drive away enemies.",
			"It crawls into foliage where it camouflages itself among leaves that are the same color as its body."
		]
	},
	"metapod": {
		"pokemon_name": "metapod",
		"dex_info": [
			"This Pokémon is vulnerable to attack while its shell is soft, exposing its weak and tender body.",
			"Inside the shell, it is soft and weak as it prepares to evolve. It stays motionless in the shell.",
			"Even though it is encased in a sturdy shell, the body inside is tender. It can't withstand a harsh attack."
		]
	},
	"butterfree": {
		"pokemon_name": "butterfree",
		"dex_info": [
			"In battle, it flaps its wings at high speed to release highly toxic dust into the air.",
			"It collects honey every day. It rubs honey onto the hairs on its legs to carry it back to its nest.",
			"It has a superior ability to search for delicious honey from flowers. It can seek, extract, and carry honey."
		]
	},
	"weedle": {
		"pokemon_name": "weedle",
		"dex_info": [
			"Often found in forests, eating leaves. It has a sharp stinger on its head that injects poison.",
			"Its poison stinger is very powerful. Its bright-colored body is intended to warn off its enemies.",
			"It eats its weight in leaves every day. It fends off attackers with the needle on its head."
		]
	},
	"kakuna": {
		"pokemon_name": "kakuna",
		"dex_info": [
			"This Pokémon is almost incapable of moving. As a result, it remains motionless in trees awaiting evolution.",
			"While awaiting evolution, it hides from predators under leaves and in nooks of branches.",
			"Although it is a cocoon, it can move a little. It can extend its poison barb if it is attacked."
		]
	},
	"beedrill": {
		"pokemon_name": "beedrill",
		"dex_info": [
			"Flies at high speed and attacks using its large venomous stingers on its forelegs and tail.",
			"It has three poison barbs. The barb on its tail secretes the most powerful poison.",
			"May appear in a swarm. Flies at violent speeds, all the while stabbing with the toxic stinger on its rear."
		]
	},
	"pidgey": {
		"pokemon_name": "pidgey",
		"dex_info": [
			"A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.",
			"It has an extremely sharp sense of direction. It can unerringly return home to its nest, however far it may be removed from its familiar surroundings.",
			"It rapidly flaps its wings in the grass, stirring up a dust cloud that drives insect prey out into the open."
		]
	},
	 "pidgeotto": {
		"pokemon_name": "pidgeotto",
		"dex_info": [
			"Very protective of its sprawling territorial area, this Pokémon will fiercely peck at any intruder.",
			"This Pokémon flies around, patrolling its living space. If its territory is violated, it shows no mercy in thoroughly punishing the foe with its sharp claws.",
			"It has outstanding vision. However high it flies, it is able to distinguish the movements of its prey."
		]
	},
	"pidgeot": {
		"pokemon_name": "pidgeot",
		"dex_info": [
			"When hunting, it skims the surface of water at high speed to pick off unwary prey such as Magikarp.",
			"It spreads its gorgeous wings widely to intimidate enemies. It races through the skies at Mach-2 speed.",
			"This Pokémon flies at Mach 2 speed, seeking prey. Its large talons are feared as wicked weapons."
		]
	},
	"rattata": {
		"pokemon_name": "rattata",
		"dex_info": [
			"Bites anything when it attacks. Small and very quick, it is a common sight in many places.",
			"Its fangs are long and very sharp. They grow continuously, so it gnaws on hard things to whittle them down.",
			"It is cautious in the extreme, even while it is asleep. It stays in motion to guard against attackers."
		]
	},
	"raticate": {
		"pokemon_name": "raticate",
		"dex_info": [
			"It uses its whiskers to maintain its balance. It apparently slows down if they are cut off.",
			"Gnaws on anything with its tough fangs. It can even topple concrete buildings by gnawing on them.",
			"Its hind feet are webbed. They act as flippers, so it can swim in rivers and hunt for prey."
		]
	},
	"spearow": {
		"pokemon_name": "spearow",
		"dex_info": [
			"Inept at flying high. However, it can fly around very fast to protect its territory.",
			"It flaps its short wings to flush out insects from tall grass. It then plucks them with its stubby beak.",
			"Very protective of its territory, it flaps its short wings busily to dart around at high speed."
		]
	},
	"fearow": {
		"pokemon_name": "fearow",
		"dex_info": [
			"With its huge and magnificent wings, it can keep aloft without ever having to land for rest.",
			"It has the stamina to fly all day on its broad wings. It fights using its sharp beak.",
			"It uses its long beak to attack. It has a surprisingly long reach, so it must be treated with caution."
		]
	},
	"ekans": {
		"pokemon_name": "ekans",
		"dex_info": [
			"Moves silently and stealthily. Eats the eggs of birds, such as Pidgey and Spearow, whole.",
			"It sneaks through grass without making a sound and strikes unsuspecting prey from behind.",
			"The older it gets, the longer it grows. At night, it wraps its long body around tree branches to rest."
		]
	},
	"arbok": {
		"pokemon_name": "arbok",
		"dex_info": [
			"The frightening patterns on its belly have been studied. Six variations have been confirmed.",
			"To intimidate its foes, it spreads its chest wide and makes eerie sounds by expelling air from its mouth.",
			"The pattern on its belly appears to be a frightening face. Weak foes will flee just at the sight of the pattern."
		]
	},
	"pikachu": {
		"pokemon_name": "pikachu",
		"dex_info": [
			"When several of these Pokémon gather, their electricity could build and cause lightning storms.",
			"This forest-dwelling Pokémon stores electricity in its cheeks, so you'll feel a tingly shock if you touch it.",
			"Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy."
		]
	},
	"raichu": {
		"pokemon_name": "raichu",
		"dex_info": [
			"Its long tail serves as a ground to protect itself from its own high-voltage power.",
			"If its electric pouches run empty, it raises its tail to gather electricity from the atmosphere.",
			"If the electric pouches in its cheeks become fully charged, both ears will stand straight up."
		]
	},
	"sandshrew": {
		"pokemon_name": "sandshrew",
		"dex_info": [
			"Burrows deep underground in arid locations far from water. It only emerges to hunt for food.",
			"It loves to bathe in the grit of dry, sandy areas. By sand bathing, the Pokémon rids itself of dirt and moisture clinging to its body.",
			"When it curls up in a ball, it can make any attack bounce off harmlessly. Its hide has turned tough and solid as a result of living in the desert."
		]
	},
	"sandslash": {
		"pokemon_name": "sandslash",
		"dex_info": [
			"Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.",
			"It is skilled at slashing enemies with its claws. If broken, they start to grow back in a day.",
			"The drier the area Sandslash lives in, the harder and smoother the Pokémon's spikes will feel when touched."
		]
	},
	"nidoranf": {
		"pokemon_name": "nidoranf",
		"dex_info": [
			"Although small, its venomous barbs render this Pokémon dangerous. The female has smaller horns.",
			"Small but brave, this Pokémon will hold its ground and even risk its life in battle to protect the female it's friendly with.",
			"A mild-mannered Pokémon that does not like to fight. Beware, its small horns secrete venom."
		]
	},
	"nidorina": {
		"pokemon_name": "nidorina",
		"dex_info": [
			"The female has a gentle temperament. It emits ultrasonic cries that have the power to befuddle foes.",
			"When feeding its young, it first chews and tenderizes the food, then spits it out for the offspring.",
			"When resting deep in its burrow, its thorns always retract. This is proof that it is relaxed."
		]
	},
	"nidoqueen": {
		"pokemon_name": "nidoqueen",
		"dex_info": [
			"Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.",
			"It is adept at sending foes flying with harsh tackles using its tough, scaly body. This Pokémon is at its strongest when it's defending its young.",
			"Nidoqueen's body is encased in extremely hard scales. It is adept at sending foes flying with harsh tackles."
		]
	},
	"nidoranm": {
		"pokemon_name": "nidoranm",
		"dex_info": [
			"It stiffens its ears to sense danger. The larger its horns, the more powerful its secreted venom.",
			"The horn on a male Nidoran's forehead contains a powerful poison. With a slight touch, it can knock out large foes.",
			"Small but powerful, this Pokémon's horn can inject poison that can paralyze or even kill large enemies."
		]
	},
	"nidorino": {
		"pokemon_name": "nidorino",
		"dex_info": [
			"It has a violent disposition and stabs foes with its horn, which oozes poison upon impact.",
			"Nidorino has a horn that is harder than a diamond. If it senses a hostile presence, all the barbs on its back bristle up at once, and it challenges the foe with all its might.",
			"An aggressive Pokémon that is quick to attack. The horn on its head secretes a powerful venom."
		]
	},
	"nidoking": {
		"pokemon_name": "nidoking",
		"dex_info": [
			"It uses its powerful tail in battle to smash, constrict, then break the prey's bones.",
			"When it goes on a rampage, it sets off tremors that can topple buildings. It does this because it is extremely angry.",
			"Nidoking prides itself on its strength. It's forceful and spirited in battle, making use of its thick tail and diamond-crushing horn."
		]
	},
	"clefairy": {
		"pokemon_name": "clefairy",
		"dex_info": [
			"Its magical and cute appeal has many admirers. It is rare and found only in certain areas.",
			"Thought to live with others on quiet mountains, it is popular for its adorable nature.",
			"They appear to be something like a fairy. Tough it is cute, it can punch holes through solid stone."
		]
	},
	"clefable": {
		"pokemon_name": "clefable",
		"dex_info": [
			"A timid fairy Pokémon that is rarely seen. It will run and hide the moment it senses people.",
			"Its hearing is so acute it can hear a pin drop over half a mile away. It lives in quiet places.",
			"Some scientists believe that it gazes intently at the sky on nights with a full moon because it's homesick."
		]
	},
	"vulpix": {
		"pokemon_name": "vulpix",
		"dex_info": [
			"At the time of its birth, Vulpix has one white tail. The tail separates into six if this Pokémon receives plenty of love from its Trainer. The six tails become magnificently curled.",
			"While young, it has six gorgeous tails. When it grows, several new tails are sprouted.",
			"If it is born with a strange number of tails, the Vulpix is said to bring good fortune."
		]
	},
	"ninetales": {
		"pokemon_name": "ninetales",
		"dex_info": [
			"Very smart and very vengeful. Grabbing one of its many tails could result in a 1,000-year curse.",
			"Legend has it that Ninetales came into being when nine wizards possessing sacred powers merged into one.",
			"It is said to live 1,000 years, and each of its tails is loaded with supernatural powers."
		]
	},
	"jigglypuff": {
		"pokemon_name": "jigglypuff",
		"dex_info": [
			"When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.",
			"Nothing can avoid falling asleep hearing a Jigglypuff's song. The sound waves of its singing voice match the brain waves of someone in a deep sleep.",
			"Looking into its cute, round eyes causes it to sing a relaxing melody, inducing its enemies to sleep."
		]
	},
	"wigglytuff": {
		"pokemon_name": "wigglytuff",
		"dex_info": [
			"Its fur is extremely fine, dense, and supple. The exquisitely pleasant fur conveys an image of luxury.",
			"The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.",
			"Its fur is the ultimate in luxuriousness. Sleeping alongside a Wigglytuff is simply divine."
		]
	},
	"zubat": {
		"pokemon_name": "zubat",
		"dex_info": [
			"Forms colonies in perpetually dark places. Uses ultrasonic waves to identify and approach targets.",
			"It does not need eyes, because it emits ultrasonic waves to check its surroundings while it flies.",
			"Even though it has no eyes, it can sense obstacles using ultrasonic waves it emits from its mouth."
		]
	},
	"golbat": {
		"pokemon_name": "golbat",
		"dex_info": [
			"It clamps down on its prey with needle-sharp fangs and drains over 10 ounces of blood in one gulp.",
			"Its fangs easily puncture even thick animal hide. It loves to feast on the blood of people and Pokémon.",
			"It attacks in a stealthy manner, without warning. Its sharp fangs are used to bite and suck blood."
		]
	},
	"oddish": {
		"pokemon_name": "oddish",
		"dex_info": [
			"During the day, it keeps its face buried in the ground. At night, it wanders around sowing its seeds.",
			"This Pokémon grows by absorbing moonlight. During the daytime, it buries itself in the ground, leaving only its leaves exposed to avoid detection by its enemies.",
			"If exposed to moonlight, it starts to move. It roams far and wide at night to scatter its seeds."
		]
	},
	"gloom": {
		"pokemon_name": "gloom",
		"dex_info": [
			"The fluid that oozes from its mouth isn't drool. It is a nectar that is used to attract prey.",
			"What appears to be drool is actually sweet honey. It is very sticky and clings stubbornly if touched.",
			"Smells incredibly foul! However, around one out of a thousand people enjoy sniffing its nose-bending stink."
		]
	},
	"vileplume": {
		"pokemon_name": "vileplume",
		"dex_info": [
			"The larger its petals, the more toxic pollen it contains. Its big head is heavy and hard to hold up.",
			"It has the world's largest petals. With every step, the petals shake out heavy clouds of toxic pollen.",
			"It has the world's largest petals. They are used to spread toxic pollen."
		]
	},
	"paras": {
		"pokemon_name": "paras",
		"dex_info": [
			"Burrows under the ground to gnaw on tree roots. The mushrooms on its back absorb most of the nutrition.",
			"As its body grows larger, the mushrooms on its back grow too. They can be harvested and used as medicine.",
			"No matter how much it eats, the mushrooms growing on its back steal away most of the nutrients it consumes."
		]
	},
	"parasect": {
		"pokemon_name": "parasect",
		"dex_info": [
			"A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.",
			"It scatters toxic spores from the mushroom cap. In China, the spores are used as herbal medicine.",
			"The larger the mushroom on its back grows, the stronger the mushroom spores it scatters."
		]
	},
	"venonat": {
		"pokemon_name": "venonat",
		"dex_info": [
			"Lives in the shadows of tall trees where it eats insects. It is attracted by light at night.",
			"Its large eyes act as radar. In a bright place, you can see that they are clusters of many tiny eyes.",
			"Poison oozes from all over its body. It catches and eats small bugs at night that are attracted by light."
		]
	},
	"venomoth": {
		"pokemon_name": "venomoth",
		"dex_info": [
			"The dust-like scales covering its wings are color-coded to indicate the kinds of poison it has.",
			"When it attacks, it flaps its large wings violently to scatter its poisonous powder all around.",
			"Venomoth are nocturnal—they only are active at night. Their favorite prey are small insects that gather around streetlights, attracted by the light in the darkness."
		]
	},
	"diglett": {
		"pokemon_name": "diglett",
		"dex_info": [
			"Lives about one yard underground where it feeds on plant roots. It sometimes appears above ground.",
			"If a Diglett digs through a field, it leaves the soil perfectly tilled and ideal for planting crops.",
			"It burrows through the ground at a shallow depth. It leaves raised earth in its wake, making it easy to spot."
		]
	},
	"dugtrio": {
		"pokemon_name": "dugtrio",
		"dex_info": [
			"A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.",
			"In battle, it digs through the ground and strikes the unsuspecting foe from an unexpected direction.",
			"These Diglett triplets dig over 60 miles below sea level. No one knows what it's like underground."
		]
	},
	"meowth": {
		"pokemon_name": "meowth",
		"dex_info": [
			"Adores circular objects. Wanders the streets on a nightly basis to look for dropped loose change.",
			"Appears to be more active at night. It loves round and shiny things. It can't stop from picking them up.",
			"It loves anything that shines. It especially adores coins that it picks up and secretly hoards."
		]
	},
	"persian": {
		"pokemon_name": "persian",
		"dex_info": [
			"Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.",
			"Its lithe muscles allow it to walk without making a sound. It attacks in an instant.",
			"Its hidden, retractile claws are thorn-sharp. It attacks in a flash, leaving its prey paralyzed."
		]
	},
	"psyduck": {
		"pokemon_name": "psyduck",
		"dex_info": [
			"While lulling its enemies with its vacant look, this wily Pokémon will use psychokinetic powers.",
			"It has mystical powers but doesn't recall that it has used them. That is why it always looks puzzled.",
			"Psyduck is constantly beset by headaches. If the Pokémon lets its strange power erupt, apparently the pain subsides for a while."
		]
	},
	"golduck": {
		"pokemon_name": "golduck",
		"dex_info": [
			"Often seen swimming elegantly by lake shores. It is often mistaken for the Japanese monster, Kappa.",
			"A Pokémon that lives in lakes. It swims faster than any human swimming champion.",
			"It appears by waterways at dusk. It may use telekinetic powers if its forehead glows mysteriously."
		]
	},
	"mankey": {
		"pokemon_name": "mankey",
		"dex_info": [
			"Extremely quick to anger. It could be docile one moment then thrashing away the next instant.",
			"It is extremely ill-tempered. Groups of them will attack any handy target for no reason.",
			"When Mankey starts shaking and its nasal breathing turns rough, it's a sure sign that it is becoming angry. However, because it goes into a towering rage almost instantly, it is impossible for anyone to flee its wrath."
		]
	},
	"primeape": {
		"pokemon_name": "primeape",
		"dex_info": [
			"Always furious and tenacious to boot. It will not abandon chasing its quarry until it is caught.",
			"It stops being angry only when nobody else is around. To view this moment is very difficult.",
			"It becomes wildly furious if it even senses someone looking at it. It chases anyone that meets its glare."
		]
	},
	"growlithe": {
		"pokemon_name": "growlithe",
		"dex_info": [
			"Very friendly and faithful to people. It will try to repel enemies by barking and biting.",
			"It has a brave and trustworthy nature. It fearlessly stands up to bigger and stronger foes.",
			"A Pokémon with a loyal nature. It will remain motionless until it is given an order by its Trainer."
		]
	},
	"arcanine": {
		"pokemon_name": "arcanine",
		"dex_info": [
			"A Pokémon that has been admired since the past for its beauty. It runs agilely as if on wings.",
			"The sight of it running over 6,200 miles in a single day and night has captivated many people.",
			"Its magnificent bark conveys a sense of majesty. Anyone hearing it can't help but grovel before it."
		]
	},
	"poliwag": {
		"pokemon_name": "poliwag",
		"dex_info": [
			"Its slick black skin is thin and damp. A part of its internal organs can be seen through the skin as a spiral pattern.",
			"The swirl on its belly is its internal organs showing through. If the swirl is tingling, that means Poliwrath is angry.",
			"For Poliwag, swimming is easier than walking. The swirl on its belly is its internal organs showing through the skin."
		]
	},
	"poliwhirl": {
		"pokemon_name": "poliwhirl",
		"dex_info": [
			"Capable of living in or out of water. When out of water, it sweats to keep its body slimy.",
			"The skin on most of its body is moist. However, the skin on its belly spiral feels smooth.",
			"Though it is skilled at walking, it prefers to live on the water, where it has fewer natural enemies."
		]
	},
	"poliwrath": {
		"pokemon_name": "poliwrath",
		"dex_info": [
			"An adept swimmer at both the front crawl and breaststroke. Easily overtakes the best human swimmers.",
			"This strong and skilled swimmer is even capable of crossing the Pacific Ocean just by kicking.",
			"It can swim back and forth across the Pacific Ocean without effort. It's earned the nickname “the swimmer with all the power of the world's strongest tidal wave."
		]
	},
	"abra": {
		"pokemon_name": "abra",
		"dex_info": [
			"Using its ability to read minds, it will identify impending danger and teleport to safety.",
			"It sleeps for 18 hours a day. It uses a variety of extrasensory powers even while asleep.",
			"It can read others' minds and will teleport away when danger approaches."
		]
	},
	"kadabra": {
		"pokemon_name": "kadabra",
		"dex_info": [
			"It stares at its silver spoon to focus its mind. It emits more alpha waves while doing so.",
			"It possesses strong mental abilities. Once it remembers something, it will never forget it.",
			"When it uses its psychic power, it emits strong alpha waves that can ruin precision devices."
		]
	},
	"alakazam": {
		"pokemon_name": "alakazam",
		"dex_info": [
			"Its brain can outperform a supercomputer. Its intelligence quotient is said to be 5,000.",
			"Its brain cells multiply continually until it dies. As a result, it remembers everything.",
			"Its brain is so powerful that while it can forget no memories, it can lose track of its existence."
		]
	},
	"machop": {
		"pokemon_name": "machop",
		"dex_info": [
			"Loves to build its muscles. It trains in all styles of martial arts to become even stronger.",
			"Though small, it is strong enough to easily hoist a sumo wrestler onto its shoulders.",
			"Its whole body is composed of muscles. Even though it's the size of a human child, it can hurl 100 grown-ups."
		]
	},
	"machoke": {
		"pokemon_name": "machoke",
		"dex_info": [
			"Its muscular body is so powerful that it must wear a power-save belt to be able to regulate its motions.",
			"It hefts a Graveler repeatedly to strengthen its entire body. It uses every type of martial arts.",
			"Its formidable body never gets tired. It helps people by doing work such as the moving of heavy goods."
		]
	},
	"machamp": {
		"pokemon_name": "machamp",
		"dex_info": [
			"Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.",
			"It punches with its four arms at blinding speed. It can launch 1,000 punches in two seconds.",
			"It quickly swings its four arms to rock its opponents with ceaseless punches and chops from all angles."
		]
	},
	"bellsprout": {
		"pokemon_name": "bellsprout",
		"dex_info": [
			"A carnivorous Pokémon that traps and eats bugs. It uses its root feet to soak up needed moisture.",
			"Prefers hot and humid places. It ensnares tiny bugs with its vines and devours them.",
			"Even though its body is extremely slender, it is blindingly fast when catching its prey."
		]
	},
	"weepinbell": {
		"pokemon_name": "weepinbell",
		"dex_info": [
			"It spits out Poison Powder to immobilize the enemy and then finishes it with a spray of Acid.",
			"When it appears to be ready for evolution, it spits out poison. The vapor is extremely toxic.",
			"It spits a fluid that dissolves everything. Its prey is melted instantly, and it can eat the fluid."
		]
	},
	"victreebel": {
		"pokemon_name": "victreebel",
		"dex_info": [
			"Lures prey with the sweet aroma of honey. Swallowed whole, the prey is melted in a day, bones and all.",
			"This horrifying plant Pokémon attracts prey with aromatic honey, then melts them in its mouth.",
			"Said to live in huge colonies deep in jungles, although no one has ever returned from there."
		]
	},
	"tentacool": {
		"pokemon_name": "tentacool",
		"dex_info": [
			"Drifts in shallow seas. Anglers who hook them by accident are often punished by its stinging acid.",
			"Tentacool's body is largely composed of water. If it is removed from the sea, it dries up like parchment.",
			"As it floats along on the waves, it uses its toxic feelers to stab anything it touches."
		]
	},
	"tentacruel": {
		"pokemon_name": "tentacruel",
		"dex_info": [
			"The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.",
			"It extends its 80 tentacles to form an intricate network that traps prey.",
			"It lives in complex undersea colonies. Some people have seen these colonies through submarines' portholes."
		]
	},
	"geodude": {
		"pokemon_name": "geodude",
		"dex_info": [
			"Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.",
			"The longer a Geodude lives, the more its edges are chipped and worn away, making it more rounded in appearance. However, this Pokémon's heart will remain hard, craggy, and rough always.",
			"At rest, it looks just like a rock. Carelessly stepping on it will make it swing its fists angrily."
		]
	},
	"graveler": {
		"pokemon_name": "graveler",
		"dex_info": [
			"Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.",
			"Rocks are Graveler's favorite food. This Pokémon will climb a mountain from base to summit, crunchingly feasting on rocks all the while.",
			"With a free and uncaring nature, it doesn't mind if pieces break off while it rolls down mountains."
		]
	},
	"golem": {
		"pokemon_name": "golem",
		"dex_info": [
			"Its boulder-like body is extremely hard. It can easily withstand dynamite blasts without damage.",
			"It sheds its skin once a year. The discarded shell immediately hardens and crumbles away.",
			"Even dynamite can't harm its hard, boulder-like body. It sheds its hide just once a year."
		]
	},
	"ponyta": {
		"pokemon_name": "ponyta",
		"dex_info": [
			"Its hooves are 10 times harder than diamonds. It can trample anything completely flat in little time.",
			"Capable of jumping incredibly high. Its hooves and sturdy legs absorb the impact of a hard landing.",
			"Its legs grow strong while it chases after its parents. It runs in fields and mountains all day."
		]
	},
	"rapidash": {
		"pokemon_name": "rapidash",
		"dex_info": [
			"Very competitive, this Pokémon will chase anything that moves fast in the hopes of racing it.",
			"This Pokémon is very hot-headed by nature, so it always rushes forward in a straight line.",
			"Just love to run. If it sees something faster than itself, it will give chase at top speed."
		]
	},
	"slowpoke": {
		"pokemon_name": "slowpoke",
		"dex_info": [
			"Incredibly slow and dopey. It takes five seconds for it to feel pain when under attack.",
			"If its tail, which is packed with nutrients, falls off, it will grow back in a day.",
			"It is always vacantly lost in thought, but no one knows what it is thinking about. It is good at fishing with its tail."
		]
	},
	"slowbro": {
		"pokemon_name": "slowbro",
		"dex_info": [
			"The Shellder that is latched onto Slowpoke's tail is said to feed on the host's leftover scraps.",
			"If the tail-biting Shellder is thrown off in a harsh battle, it reverts to being an ordinary Slowpoke.",
			"Naturally dull to begin with, it lost its ability to feel pain due to Shellder's seeping poison."
		]
	},
	"magnemite": {
		"pokemon_name": "magnemite",
		"dex_info": [
			"Uses antigravity to stay suspended. Appears without warning and uses Thunder Wave and similar moves.",
			"It is born with the ability to defy gravity. It floats in air on powerful electromagnetic waves.",
			"It moves while constantly hovering. It discharges Thunder Wave and so on from the units at its sides."
		]
	},
	"magneton": {
		"pokemon_name": "magneton",
		"dex_info": [
			"Generates strange radio signals. It raises the temperature by 3.6 degrees Fahrenheit within 3,300 feet.",
			"A linked cluster formed of several Magnemite. It discharges powerful magnetic waves at high voltage.",
			"This Pokémon is constantly putting out a powerful magnetic force. Most computers go haywire when a Magneton approaches."
		]
	},
	"farfetchd": {
		"pokemon_name": "farfetchd",
		"dex_info": [
			"The plant stalk it holds is its weapon. The stalk is used like a sword to cut all sorts of things.",
			"They live where reedy plants grow. Farfetch'd are rarely seen, so it's thought their numbers are decreasing.",
			"It can't live without the stalk it holds. That's why it defends the stalk from attackers with its life."
		]
	},
	"doduo": {
		"pokemon_name": "doduo",
		"dex_info": [
			"A bird that makes up for its poor flying with its fast foot speed. Leaves giant footprints.",
			"Its short wings make flying difficult. Instead, this Pokémon runs at high speed on developed legs.",
			"It races through grassy plains with powerful legs, it can travel great distances without difficulty."
		]
	},
	"dodrio": {
		"pokemon_name": "dodrio",
		"dex_info": [
			"Uses its three brains to execute complex plans. While two heads sleep, one head stays awake.",
			"An enemy that takes its eyes off any of the three heads—even for a second—will get pecked severely.",
			"If one of the heads gets to eat, the others will be satisfied, too, and they will stop squabbling."
		]
	},
	"seel": {
		"pokemon_name": "seel",
		"dex_info": [
			"The light blue fur that covers it keeps it protected against the cold. It loves iceberg-filled oceans.",
			"It loves freezing-cold conditions. Relishes swimming in a frigid climate of around 14 degrees Fahrenheit.",
			"Covered with light blue fur, its hide is thick and tough. It is active in bitter cold of minus 40 degrees Fahrenheit."
		]
	},
	"dewgong": {
		"pokemon_name": "dewgong",
		"dex_info": [
			"Stores thermal energy in its body. Swims at a steady eight knots even in intensely cold waters.",
			"It loves to snooze on bitterly cold ice. The sight of this Pokémon sleeping on a glacier was mistakenly thought to be a mermaid by a mariner long ago.",
			"Its body is covered with a pure white fur. The colder the weather, the more active it becomes."
		]
	},
	"grimer": {
		"pokemon_name": "grimer",
		"dex_info": [
			"Appears in filthy areas. Thrives by sucking up polluted sludge that is pumped out of factories.",
			"Made of congealed sludge. It smells too putrid to touch. Even weeds won't grow in its path.",
			"Wherever Grimer has passed, so many germs are left behind that no plants will ever grow again."
		]
	},
	"muk": {
		"pokemon_name": "muk",
		"dex_info": [
			"Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.",
			"Smells so awful, it can cause fainting. Through degeneration, it lost its sense of smell.",
			"It is usually a great lover of food. It stinks worse than anything you can imagine. It is so overwhelmingly repulsive that nothing can grow near it."
		]
	},
	"shellder": {
		"pokemon_name": "shellder",
		"dex_info": [
			"Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.",
			"Its shell is harder than diamond. It hides in sand on the seafloor and catches prey with its soft tongue.",
			"The shell can withstand any attack. However, when it is open, the tender body is exposed."
		]
	},
	"cloyster": {
		"pokemon_name": "cloyster",
		"dex_info": [
			"When attacked, it launches its horns in quick volleys. Its innards have never been seen.",
			"Once it slams its shell shut, it is impossible to open, even by those with superior strength.",
			"It fights by keeping its shell tightly shut for protection, and by shooting spikes to repel foes."
		]
	},
	"gastly": {
		"pokemon_name": "gastly",
		"dex_info": [
			"Almost invisible, this gaseous Pokémon cloaks the target and puts it to sleep without notice.",
			"Born from gases, anyone would faint if engulfed by its gaseous body, which contains poison.",
			"It wraps its opponent in its gas-like body, slowly weakening its prey by poisoning it through the skin."
		]
	},
	"haunter": {
		"pokemon_name": "haunter",
		"dex_info": [
			"Because of its ability to slip through block walls, it is said to be from another dimension.",
			"It likes to lurk in the dark and tap shoulders with a gaseous hand. Its touch causes endless shuddering.",
			"It hides in the dark, planning to take the life of the next living thing that comes near."
		]
	},
	"gengar": {
		"pokemon_name": "gengar",
		"dex_info": [
			"Under a full moon, this Pokémon likes to mimic the shadows of people and laugh at their fright.",
			"On the night of a full moon, if shadows move on their own and laugh, it must be Gengar's doing.",
			"To steal the life of its target, it slips into the prey's shadow and silently waits for an opportunity."
		]
	},
	"onix": {
		"pokemon_name": "onix",
		"dex_info": [
			"As it digs through the ground, it absorbs many hard objects. This is what makes its body so solid.",
			"It burrows at high speed in search of food. The tunnels it leaves are used as homes by Diglett.",
			"It twists and squirms through the ground. The thunderous roar of its tunneling echoes a long way."
		]
	},
	"drowzee": {
		"pokemon_name": "drowzee",
		"dex_info": [
			"Puts enemies to sleep, then eats their dreams. Occasionally gets sick from eating bad dreams.",
			"It can tell what people are dreaming by sniffing with its big nose. It loves fun dreams.",
			"If your nose becomes itchy while you are sleeping, it is a sure sign that one of these Pokémon is standing above your pillow and trying to eat your dream through your nostrils."
		]
	},
	"hypno": {
		"pokemon_name": "hypno",
		"dex_info": [
			"When it locks eyes with an enemy, it will use a mix of psi moves such as Hypnosis and Confusion.",
			"Always holding a pendulum that it swings at a steady rhythm, it causes drowsiness in anyone nearby.",
			"It carries a pendulum-like device. There once was an incident in which it took away a child it hypnotized."
		]
	},
	"krabby": {
		"pokemon_name": "krabby",
		"dex_info": [
			"Its pincers are not only powerful weapons, they are used for balance when walking sideways.",
			"If it is unable to find food, it will absorb nutrients by swallowing a mouthful of sand.",
			"It can be found near the sea. The large pincers grow back if they are torn out of their sockets."
		]
	},
	"kingler": {
		"pokemon_name": "kingler",
		"dex_info": [
			"The large pincer has 10,000-horsepower strength. However, it is so heavy, it is difficult to aim.",
			"It waves its huge, oversized claw in the air to communicate with others. But since the claw is so heavy, this Pokémon quickly tires.",
			"Its oversized claw is very powerful, but when it's not in battle, the claw just gets in the way."
		]
	},
	"voltorb": {
		"pokemon_name": "voltorb",
		"dex_info": [
			"Usually found in power plants. Easily mistaken for a Poké Ball, they have zapped many people.",
			"It is said to camouflage itself as a Poké Ball. It will self-destruct with very little stimulus.",
			"It looks just like a Poké Ball. It is dangerous because it may electrocute or explode on touch."
		]
	},
	"electrode": {
		"pokemon_name": "electrode",
		"dex_info": [
			"It stores electric energy under very high pressure. It often explodes with little or no provocation.",
			"It is known to drift on winds if it is bloated to bursting with stored electricity.",
			"One of Electrode's characteristics is its penchant for sudden explosions. It is feared, with the nickname 'The Bomb Ball.'"
		]
	},
	"exeggcute": {
		"pokemon_name": "exeggcute",
		"dex_info": [
			"Though it may look like it's just a bunch of eggs, it's a proper Pokémon. Exeggcute communicates with others of its kind via telepathy, apparently.",
			"Even though it appears to be eggs of some sort, it was discovered to be a life-form more like plant seeds.",
			"This Pokémon consists of six eggs that form a closely knit cluster. The six eggs attract each other and spin around. When cracks increasingly appear on the eggs, Exeggcute is close to evolution."
		]
	},
	"exeggutor": {
		"pokemon_name": "exeggutor",
		"dex_info": [
			"It is called 'The Walking Jungle.' If a head grows too big, it falls off and becomes an Exeggcute.",
			"Each of Exeggutor's three heads is thinking different thoughts. The three don't seem to be very interested in one another.",
			"This Pokémon's psychic powers aren't as strong as they might be. The head that gets to eat its fill is the one that controls the other heads."
		]
	},
	"cubone": {
		"pokemon_name": "cubone",
		"dex_info": [
			"Wears the skull of its deceased mother. Its cries echo inside the skull and come out as a sad melody.",
			"It always wears the skull of its dead mother, so no one has any idea what its hidden face looks like.",
			"The skull it wears on its head is that of its dead mother. According to some, it will evolve when it comes to terms with the pain of her death."
		]
	},
	"marowak": {
		"pokemon_name": "marowak",
		"dex_info": [
			"It is small and was originally very weak. Its temperament turned ferocious when it began using bones.",
			"It has evolved into a much stronger form. The bone it holds is its key weapon.",
			"This Pokémon overcame its sorrow to evolve a sturdy new body. Marowak faces its opponents bravely, using a bone as a weapon."
		]
	},
	"hitmonlee": {
		"pokemon_name": "hitmonlee",
		"dex_info": [
			"When in a hurry, its legs lengthen progressively. It runs smoothly with extra-long, loping strides.",
			"This amazing Pokémon has an awesome sense of balance. It can kick in succession from any position.",
			"The legs freely contract and stretch. The stretchy legs allow it to hit a distant foe with a rising kick."
		]
	},
	"hitmonchan": {
		"pokemon_name": "hitmonchan",
		"dex_info": [
			"While apparently doing nothing, it fires punches in lightning-fast volleys that are impossible to see.",
			"Its punches slice the air. They are launched at such high speed, even a slight graze could cause a burn.",
			"The arm-twisting punches it throws pulverize even concrete. It rests after three minutes of fighting."
		]
	},
	"lickitung": {
		"pokemon_name": "lickitung",
		"dex_info": [
			"Its tongue can be extended like a chameleon's. It leaves a tingling sensation when it licks enemies.",
			"Its long tongue, slathered with a thick layer of slobber, leaves a gooey trail when it licks. Any plant or item will wilt after a few days of being licked.",
			"It uses its tongue much like an elephant uses its trunk. Its licks can cause paralysis."
		]
	},
	"koffing": {
		"pokemon_name": "koffing",
		"dex_info": [
			"In hot places, its internal gases could expand and explode without any warning. Be very careful!",
			"Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.",
			"Its thin, balloon-like body is inflated by horribly toxic gases. It reeks when it is nearby."
		]
	},
	"weezing": {
		"pokemon_name": "weezing",
		"dex_info": [
			"Where two kinds of poison gases meet, 2 Koffing can fuse into a Weezing over many years.",
			"It mixes gases between its two bodies. It's said that these Pokémon were seen all over the Galar region at one time.",
			"Weezing loves the gases given off by rotted kitchen garbage. This Pokémon will find a dirty, unkempt house and make it its home."
		]
	},
	"rhyhorn": {
		"pokemon_name": "rhyhorn",
		"dex_info": [
			"Strong, but not too bright, this Pokémon can shatter even a skyscraper with its charging Tackles.",
			"It doesn't care if there is anything in its way. It just charges and destroys all obstacles.",
			"Rhyhorn runs in a straight line, smashing everything in its path. It is not bothered even if it rushes headlong into a block of steel."
		]
	},
	"rhydon": {
		"pokemon_name": "rhydon",
		"dex_info": [
			"Protected by an armor-like hide, it is capable of living in molten lava of 3,600 degrees Fahrenheit.",
			"Its brain developed when it began walking on hind legs. Its drill horn bores tunnels through solid rock.",
			"Its rugged hide protects it from even the heat of lava. However, the hide also makes it insensitive."
		]
	},
	"chansey": {
		"pokemon_name": "chansey",
		"dex_info": [
			"A rare and elusive Pokémon that is said to bring happiness to those who manage to get it.",
			"It is said to deliver happiness. Being compassionate, it shares its eggs with injured people.",
			"This kindly Pokémon lays highly nutritious eggs and shares them with injured Pokémon or people."
		]
	},
	"tangela": {
		"pokemon_name": "tangela",
		"dex_info": [
			"The whole body is swathed with wide vines that are similar to seaweed. The vines sway as it walks.",
			"Its vines snap off easily and painlessly if they are grabbed, allowing it to make a quick getaway. The lost vines are replaced by new growth the very next day.",
			"The vines of a Tangela have a distinct scent. In some parts of Galar, Tangela vines are used as herbs."
		]
	},
	"kangaskhan": {
		"pokemon_name": "kangaskhan",
		"dex_info": [
			"The infant rarely ventures out of its mother's protective pouch until it is three years old.",
			"To protect its young, it will never back down, even when faced with a formidable opponent.",
			"There are records of a lost human child being raised by a childless Kangaskhan."
		]
	},
	"horsea": {
		"pokemon_name": "horsea",
		"dex_info": [
			"If it senses any danger, it will vigorously spray water or a special type of ink from its mouth.",
			"Horsea makes its nest in the shade of corals. If it senses danger, it spits murky ink and flees.",
			"Horsea eats small bugs and moss off of rocks. If the ocean current turns fast, this Pokémon anchors itself by wrapping its tail around rocks or coral to prevent being washed away."
		]
	},
	"seadra": {
		"pokemon_name": "seadra",
		"dex_info": [
			"Capable of swimming backwards by rapidly flapping its wing-like pectoral fins and stout tail.",
			"It is capable of swimming backward by rapidly flapping its winglike pectoral fins and stout tail.",
			"Seadra generates whirlpools by spinning its body. The whirlpools are strong enough to swallow even fishing boats."
		]
	},
	"goldeen": {
		"pokemon_name": "goldeen",
		"dex_info": [
			"Its tail fin billows like an elegant ballroom dress, giving it the nickname of the Water Queen.",
			"Though it appears very elegant when swimming with fins unfurled, it can jab powerfully with its horn.",
			"Goldeen loves swimming wild and free in rivers and ponds. If one of these Pokémon is placed in an aquarium, it will shatter even the thickest glass with one ram of its horn and make its escape."
		]
	},
	"seaking": {
		"pokemon_name": "seaking",
		"dex_info": [
			"In the autumn, its body becomes more fatty in preparing to propose to a mate. It takes on beautiful colors.",
			"During the autumn spawning season, they can be seen swimming powerfully up rivers and creeks.",
			"It is the male's job to make a nest by carving out boulders in a stream using the horn on its head. The females then lay their eggs, and the male guards them until they hatch."
		]
	},
	"staryu": {
		"pokemon_name": "staryu",
		"dex_info": [
			"An enigmatic Pokémon that can effortlessly regenerate any appendage it loses in battle.",
			"If its body is torn, it can grow back if the red core remains. The core flashes at midnight.",
			"Staryu's center section has an organ called the core that shines bright red. If you go to a beach toward the end of summer, the glowing cores of these Pokémon look like the stars in the sky."
		]
	},
	"starmie": {
		"pokemon_name": "starmie",
		"dex_info": [
			"Its central core glows with the seven colors of the rainbow. Some people value the core as a gem.",
			"The center section of its body is called the core. It glows in a different color each time it is seen.",
			"This Pokémon has a geometric body. Because of its body, the locals suspect that it is an alien creature."
		]
	},
	"mrmime": {
		"pokemon_name": "mrmime",
		"dex_info": [
			"If interrupted while it is miming, it will slap around the offender with its broad hands.",
			"Emanations from its fingertips solidify the air into invisible walls that repel even harsh attacks.",
			"It creates invisible walls with its pantomiming. If you don't act impressed, it will attack you."
		]
	},
	"scyther": {
		"pokemon_name": "scyther",
		"dex_info": [
			"With ninja-like agility and speed, it can create the illusion that there is more than one.",
			"It slashes through grass with its sharp scythes, moving too fast for the human eye to track.",
			"It moves so fast that its opponent does not even know what knocked it down."
		]
	},
	"jynx": {
		"pokemon_name": "jynx",
		"dex_info": [
			"It seductively wiggles its hips as it walks. It can cause people to dance in unison with it.",
			"Its cries sound like human speech. However, it is impossible to tell what it is trying to say.",
			"It speaks a language that sounds human. Research is underway to determine what is being said."
		]
	},
	"electabuzz": {
		"pokemon_name": "electabuzz",
		"dex_info": [
			"Normally found near power plants, they can wander away and cause major blackouts in cities.",
			"Electricity runs across the surface of its body. In darkness, its entire body glows a whitish blue.",
			"When a storm arrives, gangs of these Pokémon compete with each other to scale heights that are likely to be stricken by lightning bolts."
		]
	},
	"magmar": {
		"pokemon_name": "magmar",
		"dex_info": [
			"Its body always burns with an orange glow that enables it to hide perfectly among flames.",
			"Born in an active volcano. Its body is always cloaked in flames, so it looks like a big ball of fire.",
			"In battle, Magmar blows out intensely hot flames from all over its body to intimidate its opponent. This Pokémon's fiery bursts create heat waves that ignite grass and trees in its surroundings."
		]
	},
	"pinsir": {
		"pokemon_name": "pinsir",
		"dex_info": [
			"If it fails to crush the foe in its pincers, it will swing around and toss the opponent.",
			"It grips prey with its pincers until the prey is torn in half. What it can't tear, it tosses far.",
			"Loves to compete with other Pinsir. In a contest of strength, the loser is thrown, hard."
		]
	},
	"tauros": {
		"pokemon_name": "tauros",
		"dex_info": [
			"When it targets an enemy, it charges furiously while whipping its body with its long tails.",
			"After heightening its will to fight by whipping itself with its three tails, it charges at full speed.",
			"They fight each other by locking horns. The herd's protector takes pride in its battle-scarred horns."
		]
	},
	"magikarp": {
		"pokemon_name": "magikarp",
		"dex_info": [
			"In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.",
			"This weak and pathetic Pokémon gets easily pushed along rivers when there are strong currents.",
			"Magikarp is a pathetic excuse for a Pokémon that is only capable of flopping and splashing. This behavior prompted scientists to undertake research into it."
		]
	},
	"gyarados": {
		"pokemon_name": "gyarados",
		"dex_info": [
			"Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.",
			"It appears whenever there is world conflict, burning down any place it travels through.",
			"It has an extremely aggressive nature. The Hyper Beam it shoots from its mouth totally incinerates all targets."
		]
	},
	"lapras": {
		"pokemon_name": "lapras",
		"dex_info": [
			"A Pokémon that has been overhunted almost to extinction. It can ferry people across the water.",
			"Crossing icy seas is no issue for this cold-resistant Pokémon. Its smooth skin is a little cool to the touch.",
			"They have gentle hearts. Because they rarely fight, many have been caught. Their numbers have dwindled."
		]
	},
	"ditto": {
		"pokemon_name": "ditto",
		"dex_info": [
			"Capable of copying an enemy's genetic code to instantly transform itself into a duplicate of the enemy.",
			"It can transform into anything. When it sleeps, it changes into a stone to avoid being attacked.",
			"When it encounters another Ditto, it will move faster than normal to duplicate that opponent exactly."
		]
	},
	"eevee": {
		"pokemon_name": "eevee",
		"dex_info": [
			"Its genetic code is unstable, so it could evolve in a variety of ways. There are only a few alive.",
			"Eevee has an unstable genetic makeup that suddenly mutates due to the environment in which it lives. Radiation from various stones causes this Pokémon to evolve.",
			"Thanks to its unstable genetic makeup, this special Pokémon conceals many different possible evolutions."
		]
	},
	"vaporeon": {
		"pokemon_name": "vaporeon",
		"dex_info": [
			"Lives close to water. Its long tail is ridged with a fin, which is often mistaken for a mermaid's.",
			"Its cell structure is similar to water molecules. It will melt away and become invisible in water.",
			"It has evolved to be suitable for an aquatic life. It can invisibly melt away into water."
		]
	},
	"jolteon": {
		"pokemon_name": "jolteon",
		"dex_info": [
			"It accumulates negative ions in the atmosphere to blast out 10,000-volt lightning bolts.",
			"Its cells generate weak power that is amplified by its fur's static electricity to drop thunderbolts.",
			"Jolteon’s cells generate a low level of electricity. This power is amplified by the static electricity of its fur, enabling the Pokémon to drop thunderbolts. The bristling fur is made of electrically charged needles."
		]
	},
	"flareon": {
		"pokemon_name": "flareon",
		"dex_info": [
			"When storing thermal energy in its body, its temperature could soar to over 1,600 degrees Fahrenheit.",
			"Once it has stored up enough heat, this Pokémon's body temperature can reach up to 1,700 degrees Fahrenheit.",
			"Flareon’s fluffy fur has a functional purpose—it releases heat into the air so that its body does not get excessively hot. This Pokémon’s body temperature can rise to a maximum of 1,650 degrees Fahrenheit."
		]
	},
	"porygon": {
		"pokemon_name": "porygon",
		"dex_info": [
			"The only Pokémon that people anticipate can fly into space. None has managed the feat yet, however.",
			"It is capable of reverting itself entirely back to program data in order to enter cyberspace.",
			"This Pokémon was created using the latest technology. It may have artificial intelligence, but it has not yet reached the point where it can jump from a computer into real life."
		]
	},
	"omanyte": {
		"pokemon_name": "omanyte",
		"dex_info": [
			"An ancient Pokémon that was recovered from a fossil. It swims by cleverly twisting its 10 tentacles about.",
			"Revived from an ancient fossil, this Pokémon uses air stored in its shell to sink and rise in water.",
			"This Pokémon is believed to have lived in the seas of the ancient past. It protects itself with its hard shell and is said to have been able to move freely in the water by twisting its tentacles."
		]
	},
	"omastar": {
		"pokemon_name": "omastar",
		"dex_info": [
			"A prehistoric Pokémon that died out when its heavy shell made it impossible to catch prey.",
			"Its heavy shell allowed it to reach only nearby food. This could be the reason it is extinct.",
			"Its sharp beak rings the inside of its mouth. It can suck the insides out of Shellder and Cloyster shells."
		]
	},
	"kabuto": {
		"pokemon_name": "kabuto",
		"dex_info": [
			"A Pokémon that was resurrected from a fossil found in what was once the ocean floor eons ago.",
			"This Pokémon thrived 300 million years ago. It's said that living specimens can still be seen in a certain region—a rare sight.",
			"This Pokémon became extinct everywhere, except in a few areas. It protects itself by covering its body with its hard shell."
		]
	},
	"kabutops": {
		"pokemon_name": "kabutops",
		"dex_info": [
			"This Pokémon's prehistoric form was the dominant species of its time. It swam through oceans freely.",
			"It was able to swim quickly through the water by compactly folding up its razor-sharp sickles.",
			"Kabutops slices its prey apart and sucks out the fluids. The discarded body parts become food for other Pokémon."
		]
	},
	"aerodactyl": {
		"pokemon_name": "aerodactyl",
		"dex_info": [
			"A ferocious, prehistoric Pokémon that goes for the enemy's throat with its serrated saw-like fangs.",
			"It was regenerated from a dinosaur's genetic matter that was found in amber. It flies with high-pitched cries.",
			"This vicious Pokémon is said to have flown in ancient skies while shrieking high-pitched cries."
		]
	},
	"snorlax": {
		"pokemon_name": "snorlax",
		"dex_info": [
			"Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.",
			"Snorlax’s typical day consists of nothing more than eating and sleeping. It is such a docile Pokémon that there are children who use its big belly as a place to play.",
			"Snorlax's stomach can digest any kind of food, even rotten food. It can eat anything—even if the food happens to be moldy or rotten."
		]
	},
	"articuno": {
		"pokemon_name": "articuno",
		"dex_info": [
			"A legendary bird Pokémon that is said to appear to doomed people who are lost in icy mountains.",
			"This Pokémon can control ice at will. Articuno is said to live in snowy mountains riddled with permafrost.",
			"Articuno is a Legendary Pokémon. If you see it flying through the sky, it is said to be a sign that snow will fall soon."
		]
	},
	"zapdos": {
		"pokemon_name": "zapdos",
		"dex_info": [
			"A legendary bird Pokémon that is said to appear from clouds while dropping enormous lightning bolts.",
			"Zapdos is a Legendary Pokémon that has the ability to control electricity. It usually lives in thunderclouds.",
			"Zapdos is a legendary bird Pokémon that appears with a gigantic flash of lightning. It is said to cause massive thunderstorms by violently flapping its glittering wings."
		]
	},
	"moltres": {
		"pokemon_name": "moltres",
		"dex_info": [
			"Known as the legendary bird of fire. Every flap of its wings creates a dazzling flare of flames.",
			"One of the legendary bird Pokémon. When Moltres flaps its flaming wings, they glimmer with a dazzling red glow.",
			"This legendary bird Pokémon brings early spring to the wintry lands it visits. Moltres is said to have brought fire to the world."
		]
	},
	"dratini": {
		"pokemon_name": "dratini",
		"dex_info": [
			"Long considered a mythical Pokémon until recently when a small colony was found living underwater.",
			"This Pokémon is full of life energy. It continuously sheds its skin and grows steadily larger.",
			"It is called the 'Mirage Pokémon' because so few have seen it. Its shed skin has been found."
		]
	},
	"dragonair": {
		"pokemon_name": "dragonair",
		"dex_info": [
			"A mystical Pokémon that exudes a gentle aura. It has the ability to change climate conditions.",
			"This Pokémon lives in pristine oceans and lakes. It can control the weather, and it uses this power to fly into the sky, riding on the wind.",
			"Some say that if you see it at the start of the day, you will be blessed with good fortune."
		]
	},
	"dragonite": {
		"pokemon_name": "dragonite",
		"dex_info": [
			"An extremely rarely seen marine Pokémon. Its intelligence is said to match that of humans.",
			"It can fly in spite of its big and bulky physique. It circles the globe in just 16 hours.",
			"This Pokémon saved a shipwrecked man, taking him to a remote island—a paradise occupied solely by Dragonite."
		]
	},
	"mewtwo": {
		"pokemon_name": "mewtwo",
		"dex_info": [
			"It was created by a scientist after years of horrific gene-splicing and DNA-engineering experiments.",
			"A Pokémon whose genetic code was repeatedly recombined for research. It turned vicious as a result.",
			"Its DNA is almost the same as Mew’s. However, its size and disposition are vastly different."
		]
	},
	"mew": {
		"pokemon_name": "mew",
		"dex_info": [
			"When viewed through a microscope, this Pokémon’s short, fine, delicate hair can be seen.",
			"Its DNA is said to contain the genetic codes of all Pokémon, so it can use all kinds of techniques.",
			"Apparently, it appears only to those people who are pure of heart and have a strong desire to see it."
		]
	},
		"chikorita": {
		"pokemon_name": "chikorita",
		"dex_info": [
			"A sweet aroma gently wafts from the leaf on its head. It is docile and loves to soak up the sun's rays.",
			"It uses the leaf on its head to determine the temperature and humidity. It loves to sunbathe.",
			"In battle, Chikorita waves its leaf around to keep the foe at bay. However, a sweet fragrance also wafts from the leaf, becoming the battleground bathed in a pleasant aroma."
		]
	},
	"bayleef": {
		"pokemon_name": "bayleef",
		"dex_info": [
			"The scent of spices comes from around its neck. Somehow, sniffing it makes you want to fight.",
			"A spicy aroma emanates from around its neck. The aroma acts as a stimulant to restore health.",
			"A fragrance wafts from the leaf around its neck. The fragrance makes people peppy."
		]
	},
	"meganium": {
		"pokemon_name": "meganium",
		"dex_info": [
			"The aroma that rises from its petals contains a substance that calms aggressive feelings.",
			"Its breath has the fantastic ability to revive dead plants and flowers.",
			"Meganium’s aroma soothes anyone who smells it. This fragrance calms an opponent's fighting spirit."
		]
	},
	"cyndaquil": {
		"pokemon_name": "cyndaquil",
		"dex_info": [
			"It is timid and always curls itself up in a ball. If attacked, it flares up its back for protection.",
			"It flares flames from its back to protect itself. The fire burns vigorously if the Pokémon is angry. When it is tired, it sputters with incomplete combustion.",
			"It usually stays hunched over. If it is angry or surprised, it shoots flames out of its back."
		]
	},
	"quilava": {
		"pokemon_name": "quilava",
		"dex_info": [
			"It intimidates foes with the heat of its flames. The fire burns more strongly when it readies to fight.",
			"Before battle, it turns its back on its opponent to demonstrate how ferociously its fire blazes.",
			"It avoids battle by smelting its surroundings with its intense flames."
		]
	},
	"typhlosion": {
		"pokemon_name": "typhlosion",
		"dex_info": [
			"It can hide behind a shimmering heat haze that it creates using its intense flames.",
			"It has a secret, devastating move. It rubs its blazing fur together to cause huge explosions.",
			"If its rage peaks, Typhlosion turns so hot that anything it touches will instantly go up in flames."
		]
	},
	"totodile": {
		"pokemon_name": "totodile",
		"dex_info": [
			"Despite the smallness of its body, Totodile's jaws are very powerful. While the Pokémon may think it is just playfully nipping, its bite has enough power to cause serious injury.",
			"It is small but rough and tough. It won't hesitate to take a bite out of anything that moves.",
			"This rough critter chomps at any moving object it sees. Turning your back on it is not recommended."
		]
	},
	"croconaw": {
		"pokemon_name": "croconaw",
		"dex_info": [
			"Once it bites down, it won't let go until it loses its fangs. New fangs quickly grow into place.",
			"The tips of its fangs are slanted backward. Once those fangs clamp down, the prey has no hope of escape.",
			"If it loses a fang, a new one grows back in its place. There are always 48 fangs lining its mouth."
		]
	},
	"feraligatr": {
		"pokemon_name": "feraligatr",
		"dex_info": [
			"It opens its huge mouth to intimidate enemies. In battle, it runs using its thick and powerful hind legs to charge at the foe with incredible speed.",
			"When it bites with its massive and powerful jaws, it shakes its head and savagely tears its victim up.",
			"It usually moves slowly, but it goes at blinding speed when it attacks and bites prey."
		]
	},
	"sentret": {
		"pokemon_name": "sentret",
		"dex_info": [
			"When acting as a lookout, it warns others of danger by screeching and hitting the ground with its tail.",
			"It stands on its tail so it can see a long way. If it spots an enemy, it cries loudly to warn its kind.",
			"When Sentret sleeps, it does so while another stands guard. The sentry wakes the others at the first sign of danger. When this Pokémon becomes separated from its pack, it becomes incapable of sleep due to fear."
		]
	},
	"furret": {
		"pokemon_name": "furret",
		"dex_info": [
			"It makes a nest to suit its long and skinny body. The nest is impossible for other Pokémon to enter.",
			"It lives in narrow burrows that fit its slim body. The deeper the nests go, the more maze-like they become.",
			"A very cautious Pokémon, it raises itself up using its tail to get a better view of its surroundings."
		]
	},
	"hoothoot": {
		"pokemon_name": "hoothoot",
		"dex_info": [
			"It always stands on one foot. It changes feet so fast, the movement can rarely be seen.",
			"It has a perfect sense of time. Whatever happens, it keeps rhythm by precisely tilting its head in time.",
			"It begins to hoot at the same time every day. Some Trainers use them in place of clocks."
		]
	},
	"noctowl": {
		"pokemon_name": "noctowl",
		"dex_info": [
			"When it needs to think, it rotates its head 180 degrees to sharpen its intellectual power.",
			"Its eyes are specially developed to enable it to see clearly even in murky darkness and minimal light.",
			"Its extremely soft feathers make no sound in flight. It silently sneaks up on prey without being detected."
		]
	},
	"ledyba": {
		"pokemon_name": "ledyba",
		"dex_info": [
			"When the weather turns cold, lots of Ledyba gather from everywhere to cluster and keep each other warm.",
			"It is very timid. It is better at working with others than flying by itself.",
			"It is so timid, it can't move if it isn't with a swarm of others. It conveys its feelings with scent."
		]
	},
	"ledian": {
		"pokemon_name": "ledian",
		"dex_info": [
			"It uses starlight as energy. When more stars appear at night, the patterns on its back grow larger.",
			"The star patterns on its back grow larger or smaller depending on the number of stars in the night sky.",
			"It is said that in lands with clean air, where the stars fill the sky, there live many Ledian."
		]
	},
	"spinarak": {
		"pokemon_name": "spinarak",
		"dex_info": [
			"It lies still in the same pose for days in its web, waiting for its unsuspecting prey to wander close.",
			"It sets a trap by spinning a web with thin but strong silk. It waits motionlessly for prey to arrive.",
			"The web it spins can be considered its second nervous system. It is said that this Pokémon can determine what kind of prey is touching its web just by the tiny vibrations it feels through the web's strands."
		]
	},
	"ariados": {
		"pokemon_name": "ariados",
		"dex_info": [
			"A single strand of a special string is endlessly spun out of its rear. The string leads back to its nest.",
			"It attaches silk to its prey and sets it free. Later, it tracks the silk to the prey and its friends.",
			"It spins string not only from its rear but also from its mouth. It is hard to tell which end is which."
		]
	},
	"crobat": {
		"pokemon_name": "crobat",
		"dex_info": [
			"It flies so silently through the dark on its four wings that it may not be noticed even when nearby.",
			"The development of wings on its legs enables it to fly fast but also makes it tough to stop and rest.",
			"If this Pokémon is flying by fluttering only a pair of wings on either the forelegs or the hind legs, it's proof that Crobat has been flying a long distance. It switches the wings it uses if it is tired."
		]
	},
	"chinchou": {
		"pokemon_name": "chinchou",
		"dex_info": [
			"On the dark ocean floor, its only means of communication is its constantly flashing lights.",
			"It shoots positive and negative electricity between the tips of its two antennae and zaps its enemies.",
			"Its antennae, which evolved from a fin, have both positive and negative charges flowing through them."
		]
	},
	"lanturn": {
		"pokemon_name": "lanturn",
		"dex_info": [
			"The light it emits is so bright that it can illuminate the sea's surface from a depth of over three miles.",
			"Lanturn is nicknamed 'the deep-sea star' for its illuminated antenna. This Pokémon produces light by causing a chemical reaction between bacteria and its bodily fluids inside the antenna.",
			"This Pokémon uses the bright part of its body, which changed from a dorsal fin, to lure prey."
		]
	},
	"pichu": {
		"pokemon_name": "pichu",
		"dex_info": [
			"Despite its small size, it can zap even adult humans. However, if it does so, it also surprises itself.",
			"It is not yet skilled at storing electricity. It may send out a jolt if amused or startled.",
			"The electric sacs in its cheeks are small. If even a little electricity leaks, it becomes shocked."
		]
	},
	"cleffa": {
		"pokemon_name": "cleffa",
		"dex_info": [
			"Because of its unusual, star-like silhouette, people believe that it came here on a meteor.",
			"Many appear when the night skies are filled with shooting stars. They dance in a ring and sing until the morning light.",
			"According to local rumors, Cleffa are often seen in places where shooting stars have fallen."
		]
	},
	"igglybuff": {
		"pokemon_name": "igglybuff",
		"dex_info": [
			"Its soft and pliable body is very bouncy. When it sings continuously with all its might, its body steadily turns a deepening pink color.",
			"It has a very soft body. If it starts to roll, it will bounce all over and be impossible to stop.",
			"Instead of walking with its short legs, it moves around by bouncing on its soft, tender body."
		]
	},
	"togepi": {
		"pokemon_name": "togepi",
		"dex_info": [
			"The shell seems to be filled with joy. It is said that it will share good luck when treated kindly.",
			"The shell is said to be stuffed with happiness and, as such, Togepi shares its joy with kind people.",
			"As its energy, Togepi uses the positive emotions of compassion and pleasure exuded by people and Pokémon. This Pokémon stores up feelings of happiness inside its shell, then shares them with others."
		]
	},
	"togetic": {
		"pokemon_name": "togetic",
		"dex_info": [
			"It grows dispirited if it is not with kind people. It can float in midair without moving its wings.",
			"They say that it will appear before kindhearted, caring people and shower them with happiness.",
			"It is said to appear in front of kindly people to scatter a glowing down called 'joy dust' around them."
		]
	},
	"natu": {
		"pokemon_name": "natu",
		"dex_info": [
			"It usually forages for food on the ground but may, on rare occasions, hop onto branches to peck at shoots.",
			"It is extremely good at climbing tree trunks and likes to eat the new sprouts on the trees.",
			"Because its wings aren't yet fully grown, it has to hop to get around. It is always staring at something."
		]
	},
	"xatu": {
		"pokemon_name": "xatu",
		"dex_info": [
			"They say that it stays still and quiet because it is seeing both the past and future at the same time.",
			"This odd Pokémon can see both the past and the future. It eyes the sun's movement all day.",
			"Once it begins to meditate at sunrise, the entire day will pass before it will move again."
		]
	},
	"mareep": {
		"pokemon_name": "mareep",
		"dex_info": [
			"If static electricity builds in its body, its fleece doubles in volume. Touching it will shock you.",
			"Its fleece grows continually. In the summer, the fleece is fully shed, but it grows back in a week.",
			"Rubbing its fleece generates electricity. You'll want to pet it because it's cute, but if you use your bare hand, you'll get a painful shock."
		]
	},
	"flaaffy": {
		"pokemon_name": "flaaffy",
		"dex_info": [
			"Its fluffy fleece easily stores electricity. Its rubbery hide keeps it from being electrocuted.",
			"Because of its rubbery, electricity-resistant skin, it can store lots of electricity in its fur.",
			"If its coat becomes fully charged with electricity, its tail lights up. It fires hair that zaps on impact."
		]
	},
	"ampharos": {
		"pokemon_name": "ampharos",
		"dex_info": [
			"The tail's tip shines brightly and can be seen from far away. It acts as a beacon for lost people.",
			"The bright light on its tail can be seen far away. It has been treasured since ancient times as a beacon.",
			"Its tail shines bright and strong. It has been prized since long ago as a beacon for sailors."
		]
	},
	"bellossom": {
		"pokemon_name": "bellossom",
		"dex_info": [
			"When the heavy rainfall season ends, it is drawn out by warm sunlight to dance in the open.",
			"When these Pokémon move in a dance-like step, their delicate, pretty petals rub together, creating a pleasant sound.",
			"Plentiful in the tropics. When it dances, its petals rub together and make a pleasant ringing sound."
		]
	},
	"marill": {
		"pokemon_name": "marill",
		"dex_info": [
			"Its body is covered with water-repellent fur. Because of the fur, it can swim through water at high speed without being slowed by the water's resistance.",
			"The fur on its body naturally repels water. It can stay dry, even when it plays in the water.",
			"The tip of its tail is filled with oil that is lighter than water, so it acts as a float."
		]
	},
	"azumarill": {
		"pokemon_name": "azumarill",
		"dex_info": [
			"It can spend all day in water, since it can inhale and store a large volume of air.",
			"The bubble-like pattern on its stomach helps it camouflage itself when it's in the water.",
			"Azumarill’s long ears are indispensable sensors. By focusing its hearing, this Pokémon can identify what kinds of prey are around, even in rough and fast-running rivers."
		]
	},
	"sudowoodo": {
		"pokemon_name": "sudowoodo",
		"dex_info": [
			"Although it always pretends to be a tree, its composition appears to be closer to a rock than a plant.",
			"It disguises itself as a tree to avoid attack. It hates water, so it will disappear if it starts raining.",
			"To avoid being attacked, it does nothing but mimic a tree. It hates water and flees from rain."
		]
	},
	"politoed": {
		"pokemon_name": "politoed",
		"dex_info": [
			"If Poliwag and Poliwhirl hear its echoing cry, they respond by gathering from far and wide.",
			"Whenever three or more of these get together, they sing in a loud voice that sounds like bellowing.",
			"The cry of a male is louder than that of a female. Male Politoed with deep, menacing voices find more popularity with the opposite gender."
		]
	},
	"hoppip": {
		"pokemon_name": "hoppip",
		"dex_info": [
			"To keep from being blown away by the wind, they gather in clusters. They do enjoy gentle breezes, though.",
			"This Pokémon drifts and floats with the wind. If it senses the approach of strong winds, Hoppip links its leaves with other Hoppip to prepare against being blown away.",
			"This Pokémon is blown across vast distances by the wind. It is unclear where the Hoppip of Paldea originally came from. It grows stronger in fields with tall grass."
		]
	},
	"skiploom": {
		"pokemon_name": "skiploom",
		"dex_info": [
			"It blooms when the weather warms. It floats in the sky to soak up as much sunlight as possible.",
			"It spreads its petals to absorb sunlight. It also floats in the air to get closer to the sun.",
			"As soon as it rains, it closes its flower and hides in the shade of a tree to avoid getting wet."
		]
	},
	"jumpluff": {
		"pokemon_name": "jumpluff",
		"dex_info": [
			"Once it catches the wind, it deftly controls its cotton-puff spores to float, even around the world.",
			"Blown by seasonal winds, it circles the globe, scattering cotton spores as it goes.",
			"Even in the fiercest wind, it can control its fluff to make its way to any place in the world it wants."
		]
	},
	"aipom": {
		"pokemon_name": "aipom",
		"dex_info": [
			"Its tail ends in a dexterous, handlike appendage. However, because it uses the tail so much, Aipom’s real hands have become rather clumsy.",
			"It lives atop tall trees. When leaping from branch to branch, it deftly uses its tail for balance.",
			"It uses its tail to hang on to tree branches. It uses its momentum to swing from one branch to another."
		]
	},
	"sunkern": {
		"pokemon_name": "sunkern",
		"dex_info": [
			"It is very weak. Its only means of defense is to shake its leaves desperately at its attacker.",
			"It may plummet from the sky. If attacked by a Spearow, it will violently shake its leaves.",
			"It lives by drinking only dew drops from under the leaves of plants. It is said that it eats nothing else."
		]
	},
	"sunflora": {
		"pokemon_name": "sunflora",
		"dex_info": [
			"It converts sunlight into energy. In the darkness after sunset, it closes its petals and becomes still.",
			"As the hot season approaches, the petals on this Pokémon’s face become more vivid and lively.",
			"It converts solar energy into nutrition. It moves around actively in the daytime when it is warm."
		]
	},
	"yanma": {
		"pokemon_name": "yanma",
		"dex_info": [
			"Its eyes can see 360 degrees without moving its head. It won't miss prey, even those behind it.",
			"If it flaps its wings really fast, it can generate shock waves that will shatter windows in the area.",
			"It can hover in one spot by flapping its wings at high speed. It flits about to guard its territory."
		]
	},
	"wooper": {
		"pokemon_name": "wooper",
		"dex_info": [
			"When walking on land, it covers its body with a poisonous film that keeps its skin from dehydrating.",
			"This Pokémon lives in cold water. It will leave the water to search for food when it gets cold outside.",
			"Though they prefer to live in cold water, these Pokémon forage for food on land. They are kept warm by the layer of insulating fluid that covers their bodies."
		]
	},
	"quagsire": {
		"pokemon_name": "quagsire",
		"dex_info": [
			"A dim-witted Pokémon. It doesn't care if it bumps its head into boats or rocks while swimming.",
			"It has an easygoing nature. It doesn’t care if it bumps its head on boats and boulders while swimming.",
			"It has an easygoing nature. It doesn’t care if it bumps its head on boats and boulders while swimming."
		]
	},
	"espeon": {
		"pokemon_name": "espeon",
		"dex_info": [
			"It uses the fine hair that covers its body to sense air currents and predict its enemy's actions.",
			"By reading air currents, it can predict things such as the weather or its foe’s next move.",
			"Its fur is so sensitive, it can sense minute shifts in the air and predict the weather."
		]
	},
	"umbreon": {
		"pokemon_name": "umbreon",
		"dex_info": [
			"When darkness falls, the rings on its body begin to glow, striking fear in the hearts of anyone nearby.",
			"It hides silently in darkness and waits for its foes to make a move. The rings on its body glow when it leaps to attack.",
			"It lurks in darkness for prey. When it sneaks up on them, the rings on its body glow faintly but menacingly."
		]
	},
	"murkrow": {
		"pokemon_name": "murkrow",
		"dex_info": [
			"It is said that when chased, it lures its attacker onto dark mountain trails where the foe will get lost.",
			"It appears near travelers to lure them into deep forests. It is said to bring misfortune.",
			"Feared and loathed by many, it is believed to bring misfortune to all those who see it at night."
		]
	},
	"slowking": {
		"pokemon_name": "slowking",
		"dex_info": [
			"It has incredible intellect and intuition. Whatever the situation, it remains calm and collected.",
			"Being bitten by Shellder gave it intelligence comparable to that of award-winning scientists.",
			"This Pokémon is so famed for its intellect that a proverb still persists in some regions: 'When in doubt, ask Slowking.'"
		]
	},
	"misdreavus": {
		"pokemon_name": "misdreavus",
		"dex_info": [
			"It likes playing mischievous tricks such as screaming and wailing to startle people at night.",
			"It loves to bite and yank people’s hair from behind without warning, just to see their shocked reactions.",
			"It loves to sneak up on people late at night, then startle them with its shrieking cry."
		]
	},
	"unown": {
		"pokemon_name": "unown",
		"dex_info": [
			"Shaped like ancient writing, it is a huge mystery whether language or Unown came first.",
			"This Pokémon is shaped like ancient text characters. Although research is ongoing, it is a mystery as to which came first, the ancient writings or the various Unown.",
			"It's said that the Pokémon Unown were the shapes of letters from the olden days."
		]
	},
	"wobbuffet": {
		"pokemon_name": "wobbuffet",
		"dex_info": [
			"It hates light and shock. If attacked, it inflates its body to pump up its counterstrike.",
			"If two or more Wobbuffet meet, they will turn competitive and try to outdo each other's endurance.",
			"It desperately tries to keep its black tail hidden. It is said to be proof the tail hides a secret."
		]
	},
	"girafarig": {
		"pokemon_name": "girafarig",
		"dex_info": [
			"Its tail has a small brain of its own. Beware! If you get close, it may react to your scent and bite.",
			"Girafarig’s rear head contains a tiny brain that is too small for thinking. However, the rear head doesn’t need to sleep, so it can keep watch over its surroundings 24 hours a day.",
			"Girafarig’s rear head also has a brain, but it is small. The rear head attacks in response to smells and sounds. Approaching this Pokémon from behind can cause the rear head to suddenly lash out and bite."
		]
	},
	"pineco": {
		"pokemon_name": "pineco",
		"dex_info": [
			"It looks just like a pinecone. Its shell protects it from bird Pokémon that peck it by mistake.",
			"It likes to make its shell thicker by adding layers of tree bark. The additional weight doesn't bother it.",
			"Pineco hangs from tree branches and patiently waits for prey to come along. If the Pokémon is disturbed while eating by someone shaking its tree, it drops down to the ground and explodes with no warning."
		]
	},
	"forretress": {
		"pokemon_name": "forretress",
		"dex_info": [
			"It is encased in a steel shell. Its peering eyes are all that can be seen of its mysterious innards.",
			"It shoots out pieces of its shell to drive its foes away. It explodes in such a way that it can scarcely be seen.",
			"Forretress conceals itself inside its hard shell while it eats its stored food. It shoots spikes from its shell as a form of self-defense."
		]
	},
	"dunsparce": {
		"pokemon_name": "dunsparce",
		"dex_info": [
			"If spotted, it escapes by burrowing with its tail. It can float just slightly using its wings.",
			"If it finds a comfortable spot to sleep, it will nest there and sleep for days on end.",
			"When spotted, this Pokémon escapes backward by furiously boring into the ground with its tail."
		]
	},
	"gligar": {
		"pokemon_name": "gligar",
		"dex_info": [
			"It flies straight at its target's face, then clamps down on the startled victim to inject poison.",
			"It glides without making a single sound. It grasps the face of its foe using its hind and large front claws, then stabs with its poison barb.",
			"It sails on the winds with its limbs extended to strike from the sky. It aims for the prey’s face."
		]
	},
	"steelix": {
		"pokemon_name": "steelix",
		"dex_info": [
			"It is said that if an Onix lives for over 100 years, its composition changes to become diamond-like.",
			"Steelix lives even further underground than Onix. This Pokémon is known to dig toward the earth’s core. There are records of this Pokémon reaching a depth of over six-tenths of a mile underground.",
			"It is thought its body transformed as a result of iron accumulating internally from swallowing soil."
		]
	},
	"snubbull": {
		"pokemon_name": "snubbull",
		"dex_info": [
			"Small Pokémon flee from its scary face. It is, however, considered by women to be cute.",
			"By baring its fangs and making scary faces, it sends smaller Pokémon scurrying away in terror.",
			"Although it looks frightening, it is actually kind and affectionate. It is very popular among women."
		]
	},
	"granbull": {
		"pokemon_name": "granbull",
		"dex_info": [
			"It has a particularly well-developed lower jaw. The enormous fangs are heavy, causing it to tilt its head.",
			"It is timid in spite of its looks. If it becomes enraged, however, it will strike with its huge fangs.",
			"It can make most any Pokémon run away simply by opening its mouth wide to reveal its big fangs."
		]
	},
	"qwilfish": {
		"pokemon_name": "qwilfish",
		"dex_info": [
			"The small spikes covering its body developed from scales. They inject a toxin that causes fainting.",
			"The quills of its body secrete a strong toxin. To shoot them at its foes, it compresses its body.",
			"When faced with a larger opponent, it swallows as much water as it can to match the opponent’s size."
		]
	},
	"scizor": {
		"pokemon_name": "scizor",
		"dex_info": [
			"Its wings are not used for flying. They are flapped at high speed to adjust its body temperature.",
			"This Pokémon’s pincers, which contain steel, can crush any hard object it gets a hold of into bits.",
			"Bulky pincers account for one third of Scizor's body weight. A single swing of one of these pincers will crush a boulder completely."
		]
	},
	"shuckle": {
		"pokemon_name": "shuckle",
		"dex_info": [
			"It stores berries inside its shell. To avoid attacks, it hides beneath rocks and remains completely still.",
			"It stores berries in its shell. The berries eventually ferment to become delicious juices.",
			"Shuckle quietly hides itself under rocks, keeping its body concealed inside its hard shell while eating berries it has stored away. The berries mix with its body fluids to become a juice."
		]
	},
	"heracross": {
		"pokemon_name": "heracross",
		"dex_info": [
			"This powerful Pokémon thrusts its prized horn under its enemies' bellies, then lifts and throws them.",
			"It loves sweet sap and is drawn to sap-producing trees. It charges into a battle with others to secure a large share of the nectar.",
			"With its Herculean powers, it can easily throw around an object that is 100 times its own weight."
		]
	},
	"sneasel": {
		"pokemon_name": "sneasel",
		"dex_info": [
			"Its paws conceal sharp claws. If attacked, it suddenly extends the claws and startles its enemy.",
			"Vicious in nature, it drives Pidgey from their nests and scavenges any leftovers it can find.",
			"It is extremely vicious and will not stop attacking until its foe is incapable of moving."
		]
	},
	"teddiursa": {
		"pokemon_name": "teddiursa",
		"dex_info": [
			"If it finds honey, its crescent mark glows. It always licks its paws because they are soaked with honey.",
			"This Pokémon likes to lick its palms that are sweetened by being soaked in honey. Teddiursa concocts its own honey by blending fruits and pollen collected by Beedrill.",
			"If it finds honey, its crescent mark glows. It always licks its paws because they’re soaked with honey."
		]
	},
	"ursaring": {
		"pokemon_name": "ursaring",
		"dex_info": [
			"Although it is a good climber, it prefers to snap trees with its forelegs and eat fallen berries.",
			"In the forests inhabited by Ursaring, it is said that there are many streams and towering trees where they gather food. This Pokémon walks through its forest gathering food every day.",
			"With its ability to distinguish any aroma, it unfailingly finds all food buried deep underground."
		]
	},
	"slugma": {
		"pokemon_name": "slugma",
		"dex_info": [
			"Its body is made of magma. If it doesn’t keep moving, its body will cool and harden.",
			"It never sleeps. It has to keep moving because if it stopped, its magma body would cool and harden.",
			"Molten magma courses throughout Slugma’s circulatory system. If this Pokémon is chilled, the magma cools and hardens. Its body turns brittle and chunks fall off, reducing its size."
		]
	},
	"magcargo": {
		"pokemon_name": "magcargo",
		"dex_info": [
			"The shell on its back is just skin that has cooled and hardened. It breaks easily with a slight touch.",
			"Its brittle shell occasionally spouts intense flames that circulate throughout its body.",
			"Its body is as hot as lava and is always billowing. Flames will occasionally burst from its shell."
		]
	},
	"swinub": {
		"pokemon_name": "swinub",
		"dex_info": [
			"If it smells something enticing, it dashes off headlong to find the source of the aroma.",
			"It rubs its snout on the ground to find and dig up food. It sometimes discovers hot springs.",
			"It roots for food by rubbing its snout against the ground. Its favorite food is a mushroom that grows under dried grass."
		]
	},
	"piloswine": {
		"pokemon_name": "piloswine",
		"dex_info": [
			"Because the long hair all over its body obscures its sight, it just keeps charging repeatedly.",
			"Although its legs are short, its rugged hooves prevent it from slipping, even on icy ground.",
			"If it charges at an enemy, the hairs on its back stand up straight. It is very sensitive to sound."
		]
	},
	"corsola": {
		"pokemon_name": "corsola",
		"dex_info": [
			"It continuously sheds and grows. The tip of its head is prized as a treasure for its beauty.",
			"In a south sea nation, the people live in communities that are built on groups of these Pokémon.",
			"Many live in the clean seas of the south. They apparently can't live in polluted waters."
		]
	},
	"remoraid": {
		"pokemon_name": "remoraid",
		"dex_info": [
			"It has superb accuracy. The water it shoots out can strike even moving prey from more than 300 feet.",
			"It squirts water forcefully from its mouth to shoot down flying prey.",
			"Using its dorsal fin as a suction pad, it clings to a Mantine's underside to scavenge for leftovers."
		]
	},
	"octillery": {
		"pokemon_name": "octillery",
		"dex_info": [
			"It traps foes with the suction cups on its tentacles, then smashes them with its rock-hard head.",
			"It clings to rocks and ceaselessly sucks in prey that comes near. It may not have eyes, but it is remarkably intelligent.",
			"Its instinct is to shoot its spouts of ink all over the place. It’s bound to spray ink on anyone who bothers it."
		]
	},
	"delibird": {
		"pokemon_name": "delibird",
		"dex_info": [
			"It carries food rolled up in its tail. It has been known to share its food with people who are lost.",
			"It nests at the edge of sharp cliffs. It spends all day carrying food to its awaiting chicks.",
			"It carries food bundled up in its tail. There was a famous explorer who managed to reach the top of Mt. Everest thanks to a Delibird sharing its food."
		]
	},
	"mantine": {
		"pokemon_name": "mantine",
		"dex_info": [
			"If it builds up enough speed swimming, it can jump out above the waves and glide for over 300 feet.",
			"As it majestically swims, it doesn’t care if Remoraid attach to it for scavenging its leftovers.",
			"On sunny days, schools of Mantine can be seen swimming elegantly in the sea. This Pokémon is not bothered by the Remoraid that hitches rides."
		]
	},
	"skarmory": {
		"pokemon_name": "skarmory",
		"dex_info": [
			"After nesting in bramble bushes, the wings of its chicks grow hard from scratches by thorns.",
			"Despite being clad entirely in iron-hard armor, it flies at speed of over 180 mph.",
			"Its body is draped in steel armor. It looks heavy, but it can fly at speeds of up to 185 miles an hour!"
		]
	},
	"houndour": {
		"pokemon_name": "houndour",
		"dex_info": [
			"It uses different kinds of cries for communicating with others of its kind and for pursuing its prey.",
			"To corner prey, they check each other’s location using barks that only they can understand.",
			"Houndour communicates with fellow pack members using a variety of cries to corner its prey."
		]
	},
	"houndoom": {
		"pokemon_name": "houndoom",
		"dex_info": [
			"If you are burned by the flames it shoots from its mouth, the pain will never go away.",
			"The pungent-smelling flame that shoots from its mouth results from toxins burning in its body.",
			"They spew flames mixed with poison to finish off their opponents. They divvy up their prey evenly among the members of their pack."
		]
	},
	"kingdra": {
		"pokemon_name": "kingdra",
		"dex_info": [
			"It sleeps deep on the ocean floor to build its energy. It is said to cause tornadoes as it wakes.",
			"It lives in caves on the seafloor and creates giant whirlpools every time it moves.",
			"It lives in the depths of the sea. It stores energy by sleeping at underwater depths at which no other life forms can survive."
		]
	},
	"phanpy": {
		"pokemon_name": "phanpy",
		"dex_info": [
			"It is strong despite its compact size. It can easily pick up and carry an adult human on its back.",
			"Phanpy uses its long nose to shower itself. When others gather around, they thoroughly douse each other with water.",
			"For its nest, Phanpy digs a vertical pit in the ground at the edge of a river. It marks the area around its nest with its trunk to let the others know that the area has been claimed."
		]
	},
	"donphan": {
		"pokemon_name": "donphan",
		"dex_info": [
			"It attacks by curling up and rolling into its foe. It can blow apart a house in one hit.",
			"The longer and bigger its tusks, the higher its rank in its herd. The tusks take long to grow.",
			"Donphan’s tusks are pure ivory. When they’re solidly built up, the tusks can be deadly weapons. It attacks by rolling its body into a ball."
		]
	},
	"porygon2": {
		"pokemon_name": "porygon2",
		"dex_info": [
			"This upgraded version of Porygon is designed for space exploration. It can’t fly, however.",
			"This is a Porygon that was updated with special data. Porygon2 develops itself by learning new gestures and emotions. It also learns more vocabulary as it studies languages.",
			"It was created by humans using the power of science. The artificial intelligence code within its body is constantly being updated by its software. The Pokémon learns new gestures and expressions every time it receives an update."
		]
	},
	"stantler": {
		"pokemon_name": "stantler",
		"dex_info": [
			"Staring at its antlers creates an odd sensation as if one were being drawn into their centers.",
			"Those who stare at its antlers will gradually lose control of their senses and be unable to stand.",
			"The curved antlers subtly change the flow of air to create a strange space where reality is distorted."
		]
	},
	"smeargle": {
		"pokemon_name": "smeargle",
		"dex_info": [
			"A special fluid oozes from the tip of its tail. It paints the fluid everywhere to mark its territory.",
			"Smeargle marks the boundaries of its territory using a body fluid that leaks out from the tip of its tail. Over 5,000 different marks left by this Pokémon have been found.",
			"Once it becomes an adult, it has a tendency to let its comrades copy its learned moves to the point that the learning Pokémon are known as “students” of the original Smeargle."
		]
	},
	"tyrogue": {
		"pokemon_name": "tyrogue",
		"dex_info": [
			"It is always bursting with energy. To make itself stronger, it keeps on fighting even if it loses.",
			"Tyrogue becomes stressed out if it does not get to train every day. When raising this Pokémon, the Trainer must establish a regular training schedule.",
			"Even though it is small, it can't be ignored because it will slug any handy target without warning."
		]
	},
	"hitmontop": {
		"pokemon_name": "hitmontop",
		"dex_info": [
			"It fights while spinning like a top. The centrifugal force boosts its destructive power by 10.",
			"If you become enchanted by its smooth, elegant, dance-like kicks, you may get drilled hard.",
			"After doing a handstand to throw off the opponent’s timing, it presents its fancy kick moves."
		]
	},
	"smoochum": {
		"pokemon_name": "smoochum",
		"dex_info": [
			"Its lips are the most sensitive parts on its body. It always uses its lips first to examine things.",
			"It tests everything by touching with its lips, which remember what it likes and dislikes.",
			"It actively runs about, but also falls often. Whenever it falls, it will check its reflection to make sure its face hasn't become dirty."
		]
	},
	"elekid": {
		"pokemon_name": "elekid",
		"dex_info": [
			"It rotates its arms to generate electricity, but it tires easily, so it charges up only a little bit.",
			"When it touches metal, it discharges the electricity it has stored in its body. The more energy it charges up, the faster it gets.",
			"Even in the most intense battle, this Pokémon plays only to the rules of the game, demanding a clean fight."
		]
	},
	"magby": {
		"pokemon_name": "magby",
		"dex_info": [
			"Its magma-like blood circulates throughout its body. Its body’s heat can top 1,100 degrees F.",
			"If a Magby is spouting yellow flames from its mouth, it is in good health. When it is fatigued, black smoke will be mixed in with the flames.",
			"It is found in volcanic craters. Its body temperature is over 1,100 degrees Fahrenheit, so don’t underestimate it."
		]
	},
	"miltank": {
		"pokemon_name": "miltank",
		"dex_info": [
			"If it is around babies, the milk it produces contains much more nutrition than usual.",
			"Its milk is packed with nutrition, making it the ultimate beverage for the sick or weary.",
			"Miltank produces highly nutritious milk, so it’s been supporting the lives of people and other Pokémon since ancient times."
		]
	},
	"blissey": {
		"pokemon_name": "blissey",
		"dex_info": [
			"Anyone who takes even one bite of Blissey's egg becomes unfailingly caring and pleasant to everyone.",
			"If it senses sadness with its fluffy fur, a Blissey will rush over to the sad person, however far away, to share an egg of happiness that brings a smile to any face.",
			"It senses sadness with its fluffy fur. If it does so, this Pokémon will rush over to the sad person, however far away, to share an egg of happiness that brings a smile to any face."
		]
	},
	"raikou": {
		"pokemon_name": "raikou",
		"dex_info": [
			"The rain clouds it carries let it fire thunderbolts at will. They say that it descended with lightning.",
			"It is said to have fallen with lightning. It can fire thunderbolts from the rain clouds on its back.",
			"This Pokémon races across the land while barking a cry that sounds like crashing thunder."
		]
	},
	"entei": {
		"pokemon_name": "entei",
		"dex_info": [
			"Volcanoes erupt when it barks. Unable to contain its sheer power, it races headlong around the land.",
			"It is said that when it roars, a volcano erupts somewhere around the globe.",
			"A Pokémon that races across the land. It is said that one is born every time a new volcano appears."
		]
	},
	"suicune": {
		"pokemon_name": "suicune",
		"dex_info": [
			"Said to be the reincarnation of north winds, it can instantly purify filthy, murky water.",
			"This Pokémon races across the land. It is said that north winds will somehow blow whenever it appears.",
			"Suicune embodies the compassion of a pure spring of water. It runs across the land with gracefulness. This Pokémon has the power to purify dirty water."
		]
	},
	"larvitar": {
		"pokemon_name": "larvitar",
		"dex_info": [
			"Born deep underground, it comes aboveground and becomes a pupa once it has finished eating the surrounding soil.",
			"A Pokémon that eats soil. Once it has eaten a large mountain, it goes to sleep so it can grow.",
			"It feeds on soil. After it has eaten a large mountain, it falls asleep so it can grow."
		]
	},
	"pupitar": {
		"pokemon_name": "pupitar",
		"dex_info": [
			"Even sealed in its shell, it can move freely. Hard and fast, it has outstanding destructive power.",
			"Its body is as hard as bedrock. By venting pressurized gas, it can launch itself like a rocket.",
			"This dangerous pupa Pokémon can only become more dangerous when it finally evolves."
		]
	},
	"tyranitar": {
		"pokemon_name": "tyranitar",
		"dex_info": [
			"Its body can't be harmed by any sort of attack, so it is very eager to make challenges against enemies.",
			"In just one of its mighty hands, it has the power to make the ground shake and mountains crumble.",
			"This Pokémon is a bully. When it moves into an area, it blows down mountains and buries rivers. Maps must be redrawn afterward."
		]
	},
	"lugia": {
		"pokemon_name": "lugia",
		"dex_info": [
			"It is said to be the guardian of the seas. It is rumored to have been seen on the night of a storm.",
			"Lugia’s wings pack devastating power—a light fluttering of its wings can blow apart regular houses.",
			"Lugia’s wings pack devastating power—a light fluttering of its wings can blow apart houses."
		]
	},
	"hooh": {
		"pokemon_name": "hooh",
		"dex_info": [
			"Its feathers are in seven colors. It is said that anyone seeing it is promised eternal happiness.",
			"It is said to live at the foot of a rainbow. Legends claim this Pokémon flies the world’s skies continuously on its magnificent, seven-colored wings.",
			"A legend says that its body glows in seven colors. A rainbow is said to form behind it when it flies."
		]
	},
	"celebi": {
		"pokemon_name": "celebi",
		"dex_info": [
			"This Pokémon wanders across time. Grass and trees flourish in the forests in which it has appeared.",
			"This Pokémon came from the future by crossing over time. It is thought that so long as Celebi appears, a bright and shining future awaits us.",
			"This Pokémon came from the future by crossing over time. It is thought that so long as Celebi appears, a bright and shining future awaits."
		]
	},
		"treecko": {
		"pokemon_name": "treecko",
		"dex_info": [
			"Treecko has small hooks on the bottom of its feet that enable it to scale vertical walls. This Pokémon attacks by slamming foes with its thick tail.",
			"It quickly scales even vertical walls. It senses humidity with its tail to predict the next day’s weather.",
			"It makes its nest in a giant tree in the forest. It ferociously guards against anything nearing its territory."
		]
	},
	"grovyle": {
		"pokemon_name": "grovyle",
		"dex_info": [
			"The leaves growing out of Grovyle’s body are convenient for camouflaging it from enemies in the forest.",
			"This Pokémon adeptly flies from branch to branch in forests. It shows outstanding agility.",
			"Its strongly developed thigh muscles give it astonishing speed. It lives deep in the forest."
		]
	},
	"sceptile": {
		"pokemon_name": "sceptile",
		"dex_info": [
			"The leaves growing on Sceptile’s body are very sharp-edged. This Pokémon is very agile—it leaps all over the branches of trees and jumps on its foe from above or behind.",
			"It agilely leaps about the jungle and uses the sharp leaves on its arms to strike its prey.",
			"It moves through the jungle like a ninja, keeping an eye on its enemies and striking when they least expect it."
		]
	},
	"torchic": {
		"pokemon_name": "torchic",
		"dex_info": [
			"Torchic sticks with its Trainer, following behind with unsteady steps. This Pokémon breathes fire over 1,800 degrees Fahrenheit, including fireballs that leave the foe scorched black.",
			"It has a place inside its body where it keeps its fire. If fluffed up, its body temperature increases.",
			"It has a flame sac inside its belly that perpetually burns. It feels warm if it’s hugged."
		]
	},
	"combusken": {
		"pokemon_name": "combusken",
		"dex_info": [
			"Combusken battles with the intensely hot flames it spews from its beak and with outstandingly destructive kicks.",
			"It boosts its strength with a loud cry before battle. It kicks with destructive power.",
			"Its loud cries are a sign to foes that they should retreat. The powerful kicks it delivers are extremely destructive."
		]
	},
	"blaziken": {
		"pokemon_name": "blaziken",
		"dex_info": [
			"In battle, Blaziken blows out intense flames from its wrists and attacks foes courageously. The stronger the foe, the more intensely this Pokémon's wrists burn.",
			"It can clear a 30-story building in a single leap. Its fiery punches scorch its foes.",
			"Flames spout from its wrists, enveloping its knuckles. Its punches scorch its foes."
		]
	},
	"mudkip": {
		"pokemon_name": "mudkip",
		"dex_info": [
			"The fin on Mudkip’s head acts as highly sensitive radar. Using this fin to sense movements of water and air, this Pokémon can determine what is taking place around it without using its eyes.",
			"To alert it to danger, it stiffens its fins. It sleeps by burying itself in soil at the water’s edge.",
			"Its large tail fin propels it through water with powerful speed. It’s strong enough to lift boulders."
		]
	},
	"marshtomp": {
		"pokemon_name": "marshtomp",
		"dex_info": [
			"Marshtomp is much faster at traveling through mud than it is at swimming. This Pokémon's hindquarters exhibit obvious development, giving it the ability to walk on just its hind legs.",
			"Its sturdy legs give it sure footing, even in mud. It burrows into dirt to sleep.",
			"Living on muddy ground, it takes the time to soften mud and form a place where it can sleep."
		]
	},
	"swampert": {
		"pokemon_name": "swampert",
		"dex_info": [
			"Swampert is very strong. It has enough power to easily drag a boulder weighing more than a ton.",
			"Its arms are rock-hard. With one swing, they can batter down its foe. It makes its nest on beautiful beaches.",
			"It can predict storms by sensing subtle differences in the sounds of waves and tidal winds with its fins."
		]
	},
	"poochyena": {
		"pokemon_name": "poochyena",
		"dex_info": [
			"Poochyena has a very keen sense of smell, making it an excellent tracker. It chases its prey with tenacity.",
			"It savagely threatens foes with bared fangs. It chases after fleeing targets tenaciously.",
			"It has a persistent nature. If it sees an enemy, it will doggedly pursue the foe until the prey becomes exhausted."
		]
	},
	"mightyena": {
		"pokemon_name": "mightyena",
		"dex_info": [
			"Mightyena gives obvious signals when it is preparing to attack. It starts to growl deeply and then flattens its body.",
			"It will always obey the commands of a skilled Trainer. Its behavior arises from its living in packs in ancient times.",
			"It chases down prey in a pack. It will show loyalty to a Trainer who can earn its trust."
		]
	},
	"zigzagoon": {
		"pokemon_name": "zigzagoon",
		"dex_info": [
			"Zigzagoon restlessly wanders everywhere at all times. This Pokémon does so because it is very curious. It becomes interested in anything that it happens to see.",
			"A curious Pokémon, it is good at finding items. It moves in zigzagging motions.",
			"It walks in zigzags to confuse foes. It’s good at finding items that were dropped on the ground."
		]
	},
	"linoone": {
		"pokemon_name": "linoone",
		"dex_info": [
			"Linoone always runs full speed and only in straight lines. If facing an obstacle, it makes a right-angle turn to evade it.",
			"When running in a straight line, it can easily top 60 miles per hour. However, it has a tough time with turns.",
			"Its fur is covered with long bands that are slightly raised. If it charges furiously, its speed only increases."
		]
	},
	"wurmple": {
		"pokemon_name": "wurmple",
		"dex_info": [
			"Wurmple is targeted by Swellow as prey. This Pokémon will try to resist by pointing the spikes on its rear toward the attacking predator.",
			"It sticks to tree branches and eats leaves. The thread it spits from its mouth, which becomes gooey when it touches air, slows the movement of its foes.",
			"It loves to eat leaves and sticky sap. If it gets into a fight, it spits a sticky thread from its mouth."
		]
	},
	"silcoon": {
		"pokemon_name": "silcoon",
		"dex_info": [
			"Silcoon was thought to endure hunger and not consume anything before its evolution. However, it does eat and stores energy in its body for evolution.",
			"It attaches itself to a tree branch using silk to keep from falling. It is preparing for its evolution.",
			"It tethers itself to a tree branch with silk and lies in wait for its evolution."
		]
	},
	"beautifly": {
		"pokemon_name": "beautifly",
		"dex_info": [
			"Beautifly’s favorite food is the sweet pollen of flowers. If you want to see this Pokémon, just leave a potted flower by an open window.",
			"Despite its appearance, it is savage. It attacks in sprees to steal its prey’s life force.",
			"Its colorfully patterned wings are its most prominent feature. It flies through flower-covered fields collecting pollen."
		]
	},
	"cascoon": {
		"pokemon_name": "cascoon",
		"dex_info": [
			"Cascoon makes its protective cocoon by wrapping its body entirely with a fine silk from its mouth.",
			"It never forgets any attack it endured while in the cocoon. After it evolves, it seeks payback.",
			"Encased within its tough cocoon, it endures strikes and attacks by its foes. It never forgets the battles it has fought."
		]
	},
	"dustox": {
		"pokemon_name": "dustox",
		"dex_info": [
			"Dustox is instinctively drawn to light. Swarms of this Pokémon are attracted by the bright light of cities, where they wreak havoc by stripping the leaves off trees lining boulevards.",
			"It scatters horribly toxic dust around. If it crawls on the ground, it leaves a track of poison.",
			"It is a nocturnal Pokémon that flies for long distances. It is drawn by the light at night."
		]
	},
	"lotad": {
		"pokemon_name": "lotad",
		"dex_info": [
			"Lotad live in ponds and lakes, where they float on the surface. It grows weak if it dries out.",
			"Its leaf grew too large for it to move easily, so it has come to rest on the water.",
			"Its leaf can be used as a raft by a child. It has the ability to explain life’s mysteries in simple language."
		]
	},
	"lombre": {
		"pokemon_name": "lombre",
		"dex_info": [
			"It is nocturnal and becomes active at nightfall. It feeds on aquatic moss.",
			"It is said to come out of the water and drag people away. It’s scary, so people can’t find it often.",
			"It has an easygoing nature. It can be seen cheerfully chasing about after children at dusk."
		]
	},
	"ludicolo": {
		"pokemon_name": "ludicolo",
		"dex_info": [
			"The rhythm of bright, festive music activates Ludicolo’s cells, making it more powerful.",
			"When it hears festive music, all the cells in its body become stimulated, and it begins moving in rhythm.",
			"It begins dancing when it hears a cheerful rhythm. This increases its strength by making its cells activate."
		]
	},
	"seedot": {
		"pokemon_name": "seedot",
		"dex_info": [
			"Seedot attaches itself to a tree branch using the top of its head. It sucks moisture from the tree while hanging off the branch.",
			"When it dangles from a tree branch, it looks just like an acorn. It enjoys scaring other Pokémon.",
			"If it remains still, it becomes impossible to distinguish from a real nut. It delights in surprising others."
		]
	},
	"nuzleaf": {
		"pokemon_name": "nuzleaf",
		"dex_info": [
			"Nuzleaf live in densely overgrown forests. They occasionally venture out of the forest to startle people.",
			"This Pokémon pulls out the leaf on its head and makes a flute with it. The sound it makes strikes fear and unease into the hearts of people lost in a forest.",
			"It lives deep in forests. With the leaf on its head, it makes a flute whose song makes listeners uneasy."
		]
	},
	"shiftry": {
		"pokemon_name": "shiftry",
		"dex_info": [
			"Shiftry is a mysterious Pokémon that is said to live atop towering trees dating back over a thousand years.",
			"It lives quietly in the deep forest. It is said to be the guardian of the forest.",
			"It is a wicked, mysterious Pokémon that is said to live atop ancient trees. The leaves it carries on its hands create gusts of wind that blow anything away."
		]
	},
	"taillow": {
		"pokemon_name": "taillow",
		"dex_info": [
			"Taillow courageously stands its ground against foes, however strong they may be.",
			"Although it is small, it is very courageous. It will take on a larger Skarmory on an equal footing.",
			"Although it is small, it is strong, and it will take on anything it challenges. It flies in search of warm climates."
		]
	},
	"swellow": {
		"pokemon_name": "swellow",
		"dex_info": [
			"Swellow flies high above our heads, making graceful arcs in the sky.",
			"It circles the sky in search of prey, and attacks any prey it finds with great speed.",
			"It dives at a steep angle as soon as it spots its prey. It is powerful enough to pull down large prey easily."
		]
	},
	"wingull": {
		"pokemon_name": "wingull",
		"dex_info": [
			"Wingull rides updrafts rising from the sea by extending its long and narrow wings to glide.",
			"It soars high in the sky, riding on updrafts like a glider. It carries food tucked in its bill.",
			"It makes its nest on steep cliffs. Riding updrafts, it soars to great heights."
		]
	},
	"pelipper": {
		"pokemon_name": "pelipper",
		"dex_info": [
			"Pelipper is a flying transporter that carries small Pokémon and eggs in its large bill.",
			"It dips its large bill in the sea, then scoops up numerous prey along with water.",
			"It dips its large bill in the sea, then scoops up numerous prey along with water."
		]
	},
	"ralts": {
		"pokemon_name": "ralts",
		"dex_info": [
			"Ralts senses the emotions of people using the horns on its head. It rarely shows itself before people.",
			"It is highly attuned to the emotions of people and Pokémon. It hides if it senses hostility.",
			"It is a timid Pokémon that will hide if it senses people. It will grow close to its Trainer if it senses positive emotions."
		]
	},
	"kirlia": {
		"pokemon_name": "kirlia",
		"dex_info": [
			"Kirlia’s highly developed brain enables it to sense the emotions of people and Pokémon.",
			"A Kirlia that is exposed to the positive emotions of its Trainer grows beautiful.",
			"The cheerful spirit of its Trainer gives it energy for its psychic powers. It spins and dances when happy."
		]
	},
	"gardevoir": {
		"pokemon_name": "gardevoir",
		"dex_info": [
			"Gardevoir has the ability to read the future. It will give its life to protect its Trainer.",
			"It will protect its Trainer even at the cost of its life. It creates a small black hole by using all of its psychic power.",
			"To protect its Trainer, it will use the full extent of its psychic powers. It can even create small black holes."
		]
	},
	"surskit": {
		"pokemon_name": "surskit",
		"dex_info": [
			"Surskit secretes a thick, sweet-scented syrup from the top of its head. It uses its antennae to walk on the surface of water.",
			"From the tips of its feet, Surskit releases oil that lets it move as if skating on water.",
			"It moves as if skating on water. It draws prey with a sweet scent from the tip of its head."
		]
	},
	"masquerain": {
		"pokemon_name": "masquerain",
		"dex_info": [
			"Masquerain intimidates enemies with the eyelike patterns on its antennae.",
			"It flaps its four wings to hover and fly in any direction. The wings make a faint sound.",
			"It intimidates enemies with its large eyelike patterns on its antennae. Its four wings allow it to fly in any direction."
		]
	},
	"shroomish": {
		"pokemon_name": "shroomish",
		"dex_info": [
			"Shroomish prefers damp places. It scatters toxic spores from the mushroom on its back.",
			"If it senses danger, it scatters spores from the top of its head to protect itself.",
			"It hides in tall grass and leaves. It scatters toxic spores from its head when it senses danger."
		]
	},
	"breloom": {
		"pokemon_name": "breloom",
		"dex_info": [
			"Breloom closes in on its foe with light and sprightly footwork, then throws punches with its stretchy arms.",
			"Its short arms stretch when it throws punches. Its technique is equal to that of pro boxers.",
			"Its punches are strong enough to knock down trees. Its stretchy arms allow it to punch at unusual angles."
		]
	},
	"slakoth": {
		"pokemon_name": "slakoth",
		"dex_info": [
			"Slakoth’s heart beats just once a minute. Whatever happens, it is content to loaf around motionless.",
			"It spends nearly all its time in a day sprawled out. Just seeing it makes one drowsy.",
			"It sleeps for 20 hours every day. Making drowsy those that see it is one of its abilities."
		]
	},
	"vigoroth": {
		"pokemon_name": "vigoroth",
		"dex_info": [
			"Vigoroth is always itching and agitated to go on a wild rampage.",
			"It can't sit still because it can't handle its overwhelming energy. It runs around randomly.",
			"It is always hungry for food and will destroy anything in its path. It never stops rampaging."
		]
	},
	"slaking": {
		"pokemon_name": "slaking",
		"dex_info": [
			"Slaking spends all day lying down and lolling about. It eats grass growing within its reach.",
			"Wherever Slaking lives, rings of over a yard in diameter appear in grassy fields.",
			"It spends all day lying down. It just eats grass within its reach. It moves only when there is no more grass to eat."
		]
	},
	"nincada": {
		"pokemon_name": "nincada",
		"dex_info": [
			"Nincada lives underground for many years in complete darkness. It absorbs nutrients from the roots of trees.",
			"It can sometimes live underground for more than 10 years. It absorbs nutrients from tree roots.",
			"It lives underground for years. It absorbs nutrients from tree roots. This Pokémon can't withstand sunlight."
		]
	},
	"ninjask": {
		"pokemon_name": "ninjask",
		"dex_info": [
			"Ninjask moves so quickly that it is almost invisible. It carries off its prey before it even realizes what is happening.",
			"Because it moves so quickly, it sometimes becomes unseeable. It may not be noticed even if it approaches its prey.",
			"This Pokémon is so quick, it is said to be able to avoid any attack from its enemies."
		]
	},
	"shedinja": {
		"pokemon_name": "shedinja",
		"dex_info": [
			"Shedinja’s hard body doesn’t move—not even a twitch. In fact, its body appears to be merely a hollow shell.",
			"A discarded bug shell that came to life. Peering into the crack on its back is said to steal one's spirit.",
			"A strange Pokémon—it flies without moving its wings, and it seems to be a hollow shell."
		]
	},
	"whismur": {
		"pokemon_name": "whismur",
		"dex_info": [
			"Whismur is very timid. If it starts to cry loudly, it becomes startled by its own crying and cries even harder.",
			"It cries out in a quiet voice. If it senses danger, it cries out loudly to startle enemies.",
			"If it senses danger, it starts crying at a louder volume. If it cries too much, it starts crying harder."
		]
	},
	"loudred": {
		"pokemon_name": "loudred",
		"dex_info": [
			"Loudred’s bellowing can completely decimate a wooden house. It uses its voice to make its foe faint.",
			"It shouts at foes to make them faint. It shouts at objects to blow them apart. This Pokémon can shout for days on end.",
			"It shouts loudly enough to make objects shatter. It can hear at all times by picking up vibrations with its ears."
		]
	},
	"exploud": {
		"pokemon_name": "exploud",
		"dex_info": [
			"Exploud triggers earthquakes with the tremors it creates by bellowing.",
			"Its howls can be heard over six miles away. It belts out a powerful sound wave in battle.",
			"It emits sounds of various frequencies from the holes all over its body. This Pokémon emits all sorts of noises to communicate."
		]
	},
	"makuhita": {
		"pokemon_name": "makuhita",
		"dex_info": [
			"Makuhita is tenacious—it will keep getting up and attacking its foe no matter how many times it is knocked down.",
			"It toughens up by slamming into thick trees over and over. It gains a sturdy body and dauntless spirit.",
			"It never skips its daily yoga training. It says that its daily routine is to throw away thick leaves after wiping off sweat."
		]
	},
	"hariyama": {
		"pokemon_name": "hariyama",
		"dex_info": [
			"Hariyama practices its straight-arm slaps by slamming into thick trees over and over.",
			"It stomps on the ground to build power. It can send a truck flying with a slap.",
			"It likes to match power with big-bodied Pokémon. If a truck crashes into it, the truck will win."
		]
	},
	"azurill": {
		"pokemon_name": "azurill",
		"dex_info": [
			"Azarill spins its tail as if it were a lasso, then hurls it around. Its head bounces along to the rhythm.",
			"It swings its large, nutrient-filled tail around to smash its opponent. It moves slowly, but it will dash toward food it likes with surprising speed.",
			"Its tail bounces like a rubber ball. It flings the tail around to strike opponents, which leaves them with bruises."
		]
	},
	"nosepass": {
		"pokemon_name": "nosepass",
		"dex_info": [
			"Nosepass’s magnetic nose is always pointed to the north. If two of these Pokémon meet, they cannot turn their faces to each other when they are close because their noses repel each other.",
			"It has a nose that is as sensitive as a compass. It can find its way back home no matter how far it has traveled.",
			"Its nose is a magnet that always points north. If two of these Pokémon meet, their noses will not face each other, repelling each other like magnets."
		]
	},
	"skitty": {
		"pokemon_name": "skitty",
		"dex_info": [
			"Skitty is known to chase around playfully after its own tail.",
			"It is known to chase its own tail until it gets dizzy. Skitty’s ability to chase anything that moves is purely instinctual.",
			"It shows its cute side by chasing its own tail. It will chase anything that moves in front of it."
		]
	},
	"delcatty": {
		"pokemon_name": "delcatty",
		"dex_info": [
			"Delcatty sleeps anywhere it wants without keeping a permanent nest.",
			"It does not like to fight. If it must, it will keep its distance and use its claws and quickness.",
			"It is not picky about where it sleeps, as long as it feels safe. It has no fixed nest."
		]
	},
	"sableye": {
		"pokemon_name": "sableye",
		"dex_info": [
			"Sableye leads a quiet life deep inside caverns. The gemstones on Sableye’s body grew from the food it eats.",
			"It digs the ground with sharp claws and searches for gems to eat. It is hunted for its beautiful eyes.",
			"It hides in the darkness of caves. Its sharp claws are used to dig up gems to eat."
		]
	},
	"mawile": {
		"pokemon_name": "mawile",
		"dex_info": [
			"Mawile’s huge jaws are actually steel horns that have been transformed. Its docile-looking face serves to lure foes in.",
			"Its giant jaws are formed by transformed steel horns. It can chew through iron beams.",
			"It has jaws that can crush even iron. Its fangs are steel horns that can crunch even iron beams."
		]
	},
	"aron": {
		"pokemon_name": "aron",
		"dex_info": [
			"Aron has a body of steel. It uses this steel to repair its own body when it sustains damage in a battle.",
			"It usually lives deep in mountains. However, hunger may drive it to eat railroad tracks or cars.",
			"It feeds on iron ore. Its steel body is often damaged in battle, and it eats the ore to repair itself."
		]
	},
	"lairon": {
		"pokemon_name": "lairon",
		"dex_info": [
			"Lairon tempers its steel body by drinking highly nutritious mineral springwater until it is bloated.",
			"For food, it digs up iron ore. It digs up so much that it could be living next to a mine.",
			"It digs up iron ore and smelts it to eat. It builds up a body of steel and is often overhunted."
		]
	},
	"aggron": {
		"pokemon_name": "aggron",
		"dex_info": [
			"Aggron claims a large mountain as its territory. If any invades its space, it hammers them mercilessly with its steel horns.",
			"It claims an entire mountain as its territory. If it sees someone approaching, it attacks with its horns.",
			"It claims an entire mountain as its territory. It mercilessly demolishes anything that violates its space."
		]
	},
	"meditite": {
		"pokemon_name": "meditite",
		"dex_info": [
			"Meditite heightens its inner strength through meditation. It survives on just one berry a day.",
			"It eats only one berry a day. By enduring hunger, its spirit is tempered and made sharper.",
			"It eats just one berry a day, and it meditates to gain inner strength."
		]
	},
	"medicham": {
		"pokemon_name": "medicham",
		"dex_info": [
			"Medicham meditates for a whole month without eating. It seeks enlightenment deep in the mountains.",
			"It is said that through meditation, it has awakened a higher power. It can predict its foe’s next move.",
			"It never skips its meditation. If it starts to meditate, it will not stop until it has finished."
		]
	},
	"electrike": {
		"pokemon_name": "electrike",
		"dex_info": [
			"Electrike stores static electricity in its fur for discharging. It gives off sparks if a storm approaches.",
			"It generates electricity from friction. It’s able to run faster than the eye can track.",
			"It stores static electricity in its fur. If it senses danger, it discharges electricity instantly."
		]
	},
	"manectric": {
		"pokemon_name": "manectric",
		"dex_info": [
			"Manectric discharges electricity from its mane. The sparks set off by its bursting energy from this Pokémon produce a boom of thunder.",
			"It is usually on guard, but it can be helpful when it senses the approach of danger.",
			"It gathers electricity from the atmosphere and discharges it to shock opponents."
		]
	},
	"plusle": {
		"pokemon_name": "plusle",
		"dex_info": [
			"Plusle always acts as a cheerleader for its partners. Whenever a teammate puts out a good effort in battle, this Pokémon shorts out its body to create the crackling noises of sparks.",
			"It cheers on its teammates with great enthusiasm. If its team wins, it spins around with sparks flying.",
			"It cheers on partners by creating sparks. Its cheering can be seen from a great distance."
		]
	},
		"minun": {
		"pokemon_name": "minun",
		"dex_info": [
			"Minun is more concerned about cheering on its teammates than its own safety. It will shield injured partners with its body.",
			"It cheers on its teammates with great enthusiasm. The more electric energy it creates, the more its body glows.",
			"It creates sparks to cheer on its friends. In battle, it sacrifices its own safety to protect its partners."
		]
	},
	"volbeat": {
		"pokemon_name": "volbeat",
		"dex_info": [
			"Volbeat lights up its tail to communicate with others. It is drawn to illuminated cities where it creates glowing patterns in the sky.",
			"It communicates with others by using its tail as a glowing light. This Pokémon loves to create complex patterns in the night sky with its fellow Volbeat.",
			"Volbeat uses its glowing tail to draw light patterns in the sky, attracting mates and guiding lost Volbeat home."
		]
	},
	"illumise": {
		"pokemon_name": "illumise",
		"dex_info": [
			"Illumise attracts a swarm of Volbeat using a sweet fragrance. It leads the Volbeat to draw intricate patterns in the night sky.",
			"This Pokémon guides Volbeat in creating geometric light patterns. The patterns are said to represent the wishes of the stars.",
			"Illumise flutters about actively, especially at dusk, creating beautiful patterns in the sky with its Volbeat companions."
		]
	},
	"roselia": {
		"pokemon_name": "roselia",
		"dex_info": [
			"Roselia’s aroma brings serenity to living things. The more beautiful its flowers, the more powerful its toxins.",
			"It uses the different toxins in each hand to create a range of effects. The aroma of its flowers soothes the emotions of its foes.",
			"The healthier and more fertile the land, the more vivid its flowers. The thorns on its body can release a variety of poisons."
		]
	},
	"gulpin": {
		"pokemon_name": "gulpin",
		"dex_info": [
			"Virtually all of Gulpin’s body is its stomach. It swallows anything whole, and its stomach contains special fluids that digest anything.",
			"Its stomach is almost as large as its body. It can swallow something its own size, and it never gets full.",
			"It has an insatiable appetite. It swallows anything it can fit in its mouth, digesting even hard metals with ease."
		]
	},
	"swalot": {
		"pokemon_name": "swalot",
		"dex_info": [
			"Swalot’s cavernous mouth can swallow anything whole. Its stomach acid is so strong that it can dissolve anything.",
			"It swallows everything whole. It sweats toxic fluids from its pores and releases them into the air.",
			"Once it swallows something, it will dissolve anything with its powerful stomach acid. Its body is stretchy and flexible."
		]
	},
	"carvanha": {
		"pokemon_name": "carvanha",
		"dex_info": [
			"Carvanha has razor-sharp fangs and attacks anything that enters its territory. It swims in rivers and devours anything that moves.",
			"It is known for its vicious nature. Carvanha will attack en masse with its sharp teeth when its territory is invaded.",
			"It’s a savage Pokémon that will attack anything in its territory. Its fangs can tear through steel."
		]
	},
	"sharpedo": {
		"pokemon_name": "sharpedo",
		"dex_info": [
			"Nicknamed the 'bully of the sea,' Sharpedo is widely feared. Its vicious fangs can tear through metal, and it can swim at speeds of 75 mph.",
			"It can swim at speeds of up to 75 mph by jetting water from its rear. Its fangs are as sharp as knives and can rip through the hull of a tanker.",
			"Sharpedo is feared for its speed and ruthlessness. It has torpedo-like agility, making it a lethal predator in the water."
		]
	},
	"wailmer": {
		"pokemon_name": "wailmer",
		"dex_info": [
			"Wailmer can store water inside its body, allowing it to dive deep and jump out of the ocean like a ball.",
			"It is known to be playful and loves to bounce around. It stores water in its body to stay buoyant.",
			"This playful Pokémon loves to bounce around like a ball. When it dives deep, it can store water in its body to keep its buoyancy."
		]
	},
	"wailord": {
		"pokemon_name": "wailord",
		"dex_info": [
			"Wailord is the largest of all identified Pokémon. It can dive to a depth of almost 10,000 feet on only one breath.",
			"It can dive to depths almost 10,000 feet deep on a single breath. It feeds on microscopic plankton.",
			"The biggest Pokémon alive, it can make a whole pod of Wailmer cry out with one deep bellow."
		]
	},
	"numel": {
		"pokemon_name": "numel",
		"dex_info": [
			"Numel stores magma of almost 2,200 degrees Fahrenheit within its body. If it becomes wet, the magma cools and hardens, slowing it down.",
			"A Numel is extremely dull-witted—it doesn't notice being hit. However, it can't stand hunger for even a second. Its body is filled with magma that is 2,200 degrees Fahrenheit.",
			"It is slow on the uptake and can easily become distracted, but its body holds bubbling magma that it uses in battle."
		]
	},
	"camerupt": {
		"pokemon_name": "camerupt",
		"dex_info": [
			"Camerupt has volcanoes inside its body. Magma of 18,000 degrees Fahrenheit courses through its body. Occasionally, the humps on this Pokémon's back erupt, spewing the superheated magma.",
			"It has a volcano inside its body. Magma of 18,000 degrees Fahrenheit courses through it, and occasionally it erupts violently.",
			"The humps on its back are volcanoes. The magma inside them can reach temperatures of 18,000 degrees Fahrenheit."
		]
	},
	"torkoal": {
		"pokemon_name": "torkoal",
		"dex_info": [
			"Torkoal digs through mountains in search of coal. It blows out black soot if it is endangered.",
			"It burns coal inside its shell for energy. When it is in danger, it blows out black smoke.",
			"It burns coal inside its shell, giving off black smoke from its nostrils. It digs tirelessly through mountains for coal."
		]
	},
	"spoink": {
		"pokemon_name": "spoink",
		"dex_info": [
			"Spoink bounces around on its tail. The shock of its bouncing makes its heart pump. As a result, this Pokémon cannot afford to stop bouncing—if it stops, its heart will stop.",
			"It keeps bouncing on its tail. The bouncing keeps its heart beating. It carries a pearl from Clamperl on its head.",
			"It bounces constantly, using the movement to keep its heart beating. If it stops, it will faint."
		]
	},
	"grumpig": {
		"pokemon_name": "grumpig",
		"dex_info": [
			"Grumpig uses black pearls on its body to amplify its psychic power waves for controlling its opponent's mind.",
			"It uses the black pearls on its body to amplify its psychic power. It can manipulate its foes by using its psychic abilities.",
			"The black pearls on its body amplify its psychic powers. It uses its psychic energy to control others."
		]
	},
	"spinda": {
		"pokemon_name": "spinda",
		"dex_info": [
			"Spinda’s stumbling movements are the result of its unsteady steps. No two Spinda have the same pattern of spots on their fur.",
			"It is always dizzy and can't walk straight. Every Spinda's spots are said to be unique.",
			"The way it tumbles around is odd but cute. Its spot patterns are unique to each individual."
		]
	},
	"trapinch": {
		"pokemon_name": "trapinch",
		"dex_info": [
			"Trapinch's nest is a sloped, bowl-like pit dug in sand. This Pokémon patiently waits for prey to tumble down the pit. Its giant jaws have enough strength to crush even boulders.",
			"Its big jaws crunch through rocks. It builds nests in sand and waits for prey to come tumbling down.",
			"It digs an inescapable pit and waits for prey to come tumbling down. Its big jaws can crush anything."
		]
	},
	"vibrava": {
		"pokemon_name": "vibrava",
		"dex_info": [
			"Vibrava's wings have not yet fully grown. To build up its strength, it has been flying short distances.",
			"It generates ultrasonic waves with its wings, which cause prey to faint. It can cause headaches to its foes.",
			"It creates ultrasonic waves with its wings and attacks with sound. It causes severe headaches and nausea in foes."
		]
	},
		"flygon": {
		"pokemon_name": "flygon",
		"dex_info": [
			"Flygon is known as 'The Desert Spirit' because it hides itself by whipping up sand with its wings. This Pokémon is invisible in a sandstorm.",
			"It hides itself by kicking up desert sand with its wings. The flapping of its wings sounds like singing.",
			"Flygon’s wings create a series of notes that sound like singing. Because this sound is so unusual, many believe it to be the voice of a spirit."
		]
	},
	"cacnea": {
		"pokemon_name": "cacnea",
		"dex_info": [
			"Cacnea lives in arid locations such as deserts. It releases a strong aroma from its flower to attract prey, then attacks with sharp needles.",
			"It prefers harsh environments such as deserts. It blooms when it receives plenty of water, but it becomes lethargic if it receives too much.",
			"Cacnea lives in the desert. By storing moisture within its body, this Pokémon can survive for 30 days without water."
		]
	},
	"cacturne": {
		"pokemon_name": "cacturne",
		"dex_info": [
			"During the daytime, Cacturne remains unmoving so that it does not lose any moisture to the harsh desert sun. This Pokémon becomes active at night.",
			"It waits motionlessly during the day and becomes active at night, after the desert cools down. It attacks its prey during the darkness of night.",
			"If a traveler is going through a desert at night, Cacturne will follow in a ragtag group. The Pokémon are biding their time, waiting for the traveler to tire and become incapable of moving."
		]
	},
	"swablu": {
		"pokemon_name": "swablu",
		"dex_info": [
			"Swablu has light and fluffy wings that are like cottony clouds. This Pokémon is not frightened of people. It lands on the heads of people and sits there like a cotton-fluff hat.",
			"It constantly grooms its cotton-like wings. It takes a shower to clean itself if it becomes dirty.",
			"Its wings are like cotton. If it perches on someone’s head, it looks like a cotton hat."
		]
	},
	"altaria": {
		"pokemon_name": "altaria",
		"dex_info": [
			"Altaria dances and wheels through the sky among billowing, cotton-like clouds. By singing melodies in its crystal-clear voice, this Pokémon makes its listeners experience dreamy wonderment.",
			"It flies gracefully through the sky. Its melodic humming makes you feel like you’re in a dream.",
			"It flies through the sky on its cotton-like wings. Its singing makes listeners experience a dreamy state of mind."
		]
	},
	"zangoose": {
		"pokemon_name": "zangoose",
		"dex_info": [
			"Zangoose usually stays on all fours, but when angered, it gets up on its hind legs and extends its claws. This Pokémon shares a bitter rivalry with Seviper that dates back over generations.",
			"Its fur would all stand on end if it smelled Seviper. It has a fierce rivalry with Seviper.",
			"Memories of battling its archrival Seviper are etched into every cell of Zangoose’s body. This Pokémon adroitly dodges attacks with incredible agility."
		]
	},
	"seviper": {
		"pokemon_name": "seviper",
		"dex_info": [
			"Seviper’s sword-like tail serves two purposes—it slashes foes and douses them with secreted poison. This Pokémon will not give up its long-running blood feud with Zangoose.",
			"For many generations, it has feuded with Zangoose. It has venomous fangs and a tail that is blade-sharp.",
			"Seviper’s long tail is capable of slicing through objects. This Pokémon’s scarred body is evidence of its many battles."
		]
	},
	"lunatone": {
		"pokemon_name": "lunatone",
		"dex_info": [
			"Lunatone becomes active around the time of the full moon. The Pokémon’s intimidating red eyes cause all those who see it to become transfixed with fear.",
			"It becomes very active on the night of a full moon. This Pokémon was discovered at the site of a meteor strike.",
			"Lunatone was discovered at a location where a meteorite fell. As a result, some people theorize that this Pokémon came from space."
		]
	},
	"solrock": {
		"pokemon_name": "solrock",
		"dex_info": [
			"Solrock is a new species of Pokémon that is said to have fallen from space. It floats in the air and moves silently.",
			"It absorbs solar energy during the day. Always expressionless, it can sense what its foe is thinking.",
			"Sunlight is the source of its power. It is a Pokémon that was born from a meteorite."
		]
	},
	"barboach": {
		"pokemon_name": "barboach",
		"dex_info": [
			"Barboach’s slimy body is hard to grasp. In one region, it’s been said that medicinal creams made from Barboach slime is an effective treatment for a cold.",
			"It coats its entire body with a slimy fluid so it can squirm and slip away if grabbed.",
			"Its slimy body makes it hard to grasp, and its slimy nature helps it avoid being swallowed whole by its enemies."
		]
	},
	"whiscash": {
		"pokemon_name": "whiscash",
		"dex_info": [
			"Whiscash is extremely territorial. Just one of these Pokémon will claim a large pond as its exclusive territory. If a foe approaches, it thrashes about and triggers a massive earthquake.",
			"It is extremely territorial, and it will swiftly thrash its body to create seismic waves if an intruder invades its territory.",
			"It claims a large area of a pond as its territory and will battle any foe who invades it with a powerful earthquake."
		]
	},
	"corphish": {
		"pokemon_name": "corphish",
		"dex_info": [
			"Corphish were originally foreign Pokémon that were imported as pets. They eventually turned up in the wild. This Pokémon is very hardy and has greatly increased its population.",
			"It was originally a Pokémon from faraway seas. It is very hardy and can thrive in any environment.",
			"Corphish were originally imported to be pets. They became wild when they reproduced rapidly, and they are now found all over the place."
		]
	},
	"crawdaunt": {
		"pokemon_name": "crawdaunt",
		"dex_info": [
			"Crawdaunt has an extremely violent nature that compels it to challenge other living things to battle. Other life-forms refuse to live in ponds inhabited by this Pokémon, making them desolate places.",
			"A brutish Pokémon that loves to fight. It will challenge anyone to a battle.",
			"Crawdaunt is a violent Pokémon that will attack any living thing it sees. As a result, all other Pokémon have abandoned its territory."
		]
	},
	"baltoy": {
		"pokemon_name": "baltoy",
		"dex_info": [
			"Baltoy moves while spinning around on its single foot. Some Baltoy have been seen spinning on their heads.",
			"It was discovered in ancient ruins. While moving, it constantly spins. It stands on one foot even when sleeping.",
			"It moves while spinning around on a single foot. It is a rare Pokémon that was discovered in ancient ruins."
		]
	},
	"claydol": {
		"pokemon_name": "claydol",
		"dex_info": [
			"Claydol is an enigma that came to life from clay dolls made by ancient people. It has been said that they were born from the clay of a mysterious meteor.",
			"An ancient clay figure that came to life. It is said that if a Claydol is destroyed, it will revive in time.",
			"A clay figure that came to life when exposed to a mysterious ray of light. It moves with a strange movement that puzzles scientists."
		]
	},
	"lileep": {
		"pokemon_name": "lileep",
		"dex_info": [
			"Lileep became extinct approximately a hundred million years ago. It disguises itself as seaweed by making its tentacles sway.",
			"It was resurrected from a fossil. This ancient Pokémon was already extinct when the seas receded.",
			"It disguises itself as seaweed by making its tentacles sway. This ancient Pokémon was resurrected from a fossil."
		]
	},
	"cradily": {
		"pokemon_name": "cradily",
		"dex_info": [
			"Cradily roams around the ocean floor in search of food. It typically moves at a low speed and will swallow anything it happens to encounter.",
			"It lives in the shallows of warm seas. When it encounters prey, it will open its tentacles and engulf its prey whole.",
			"It ensnares prey with its eight tentacles. It slowly melts its prey into a delicious gooey soup."
		]
	},
	"anorith": {
		"pokemon_name": "anorith",
		"dex_info": [
			"Anorith was resurrected from a fossil. It swam using its eight wings, which are shaped like oars.",
			"This Pokémon was resurrected from a fossil. It uses its feather-like arms to swim.",
			"It was resurrected from a prehistoric fossil. It uses its two long claws as weapons."
		]
	},
	"armaldo": {
		"pokemon_name": "armaldo",
		"dex_info": [
			"Armaldo’s tough armor makes all attacks bounce off. This Pokémon’s two large claws can be freely extended or retracted.",
			"It went ashore after evolving. Its entire body is covered in plates that are as hard as steel.",
			"Its massive claws can rip through steel. It was a tough and highly skilled hunter of ancient seas."
		]
	},
	"feebas": {
		"pokemon_name": "feebas",
		"dex_info": [
			"Feebas’s fins are ragged and tattered from the start of its life. Because of its shoddy appearance, this Pokémon is largely ignored. It is capable of living in both fresh and salt water.",
			"While it looks unappealing, it can survive in almost any environment. It can thrive even in the most polluted rivers.",
			"Because of its shabby appearance, it is largely ignored by predators. However, it is a hardy Pokémon that can survive in any body of water."
		]
	},
	"milotic": {
		"pokemon_name": "milotic",
		"dex_info": [
			"Milotic is breathtakingly beautiful. Those that see it are said to forget their combative spirits.",
			"It is said to be the most beautiful Pokémon in the world. It usually lives at the bottom of lakes.",
			"Milotic is known for its incredible beauty. It can calm people’s emotions with just a glance."
		]
	},
	"castform": {
		"pokemon_name": "castform",
		"dex_info": [
			"Castform’s appearance changes with the weather. This Pokémon gained the ability to use the vast power of nature to protect its tiny body.",
			"It changes form with the weather. This Pokémon was created to help with weather research.",
			"This Pokémon can change its form and abilities depending on the weather. It was created to predict weather changes."
		]
	},
	"kecleon": {
		"pokemon_name": "kecleon",
		"dex_info": [
			"Kecleon alters its body coloration to blend in with its surroundings, allowing it to sneak up on prey unnoticed.",
			"It can freely change its body’s color. The zigzag pattern on its belly doesn’t change, however.",
			"It can change its body color to blend in with its surroundings, but the zigzag pattern on its belly stays the same."
		]
	},
	"shuppet": {
		"pokemon_name": "shuppet",
		"dex_info": [
			"Shuppet is attracted by feelings of jealousy and vindictiveness. If someone develops strong feelings of vengeance, this Pokémon will appear in a swarm and line up beneath the eaves of that person’s home.",
			"It feeds on the dark emotions of sadness and hatred, which make it grow steadily stronger.",
			"It grows by feeding on dark emotions, such as jealousy and hatred, which are said to be delicious to it."
		]
	},
	"banette": {
		"pokemon_name": "banette",
		"dex_info": [
			"Banette generates energy for laying strong curses by sticking pins into its own body. This Pokémon was originally a pitiful plush doll that was thrown away.",
			"A doll that became a Pokémon over its grudge from being junked. It seeks the child that disowned it.",
			"Banette's energy is fueled by its powerful hatred. It was a discarded doll that gained life."
		]
	},
	"duskull": {
		"pokemon_name": "duskull",
		"dex_info": [
			"Duskull can pass through any wall no matter how thick it may be. Once this Pokémon chooses a target, it will doggedly pursue the intended victim until the break of dawn.",
			"It loves the crying of children. It startles bad kids by passing through walls and making them cry.",
			"It can pass through walls, and it is said to pursue anyone who foolishly wanders around at night."
		]
	},
	"dusclops": {
		"pokemon_name": "dusclops",
		"dex_info": [
			"Dusclops’s body is completely hollow—there is nothing at all inside. It is said that its body is like a black hole.",
			"Its body is hollow. It is said that those who peer into it have their souls stolen.",
			"It is a mysterious Pokémon that is said to be able to absorb anything into its body like a black hole."
		]
	},
	"tropius": {
		"pokemon_name": "tropius",
		"dex_info": [
			"Tropius loves fruit, and it flies through jungles using the leaves on its back to reach fruit at the tops of tall trees.",
			"Delicious fruits grew out from around its neck because it always ate the same kind of fruit.",
			"Children of the southern tropics eat as snacks the fruit that grows in bunches around the neck of Tropius."
		]
	},
	"chimecho": {
		"pokemon_name": "chimecho",
		"dex_info": [
			"Chimecho makes its cries echo inside its hollow body. When this Pokémon becomes enraged, its cries result in ultrasonic waves that have the power to knock foes flying.",
			"It can produce ultrasonic waves by vibrating its body and emit them through its mouth to knock out opponents.",
			"It produces ultrasonic waves by crying. It cries in the night, making it hard to locate in the dark."
		]
	},
	"absol": {
		"pokemon_name": "absol",
		"dex_info": [
			"Every time Absol appears before people, it is followed by a disaster such as an earthquake or a tidal wave.",
			"It sharply senses even subtle changes in the sky and the land to predict natural disasters.",
			"This Pokémon can sense coming disasters. It appears before people only to warn them of impending danger."
		]
	},
	"wynaut": {
		"pokemon_name": "wynaut",
		"dex_info": [
			"Wynaut can always be seen with a big, happy smile on its face. Look at its tail to determine if it is angry.",
			"It tends to move in a pack with others. They cluster in a tight group to sleep in a cave.",
			"It tends to move in a pack. Individuals squash against one another to sleep in a cave."
		]
	},
	"snorunt": {
		"pokemon_name": "snorunt",
		"dex_info": [
			"Snorunt survives by eating only snow and ice. In snow-covered regions, it is said that a house will prosper if a Snorunt lives there.",
			"It is said that several Snorunt gather under giant leaves and live together in harmony.",
			"It lives in areas of heavy snowfall. In winter, it steals away the vital energy of any Pokémon it encounters."
		]
	},
	"glalie": {
		"pokemon_name": "glalie",
		"dex_info": [
			"Glalie has the ability to freeze moisture in the atmosphere into any shape it desires.",
			"It freezes water that is contained in the air and creates ice with it. It can even freeze Pokémon in place.",
			"It has a body made of ice that will not melt. The face it shows is as hard as steel."
		]
	},
	"spheal": {
		"pokemon_name": "spheal",
		"dex_info": [
			"Spheal is much faster rolling than walking to get around. When groups of this Pokémon eat, they all clap at once to show their pleasure.",
			"Its body is covered in fluffy fur. The fur keeps it from feeling cold while it is rolling on ice.",
			"It rolls across ice with its smooth, round body. It is much faster at rolling than walking."
		]
	},
	"sealeo": {
		"pokemon_name": "sealeo",
		"dex_info": [
			"Sealeo has the habit of always juggling on the tip of its nose anything it sees for the first time.",
			"It habitually spins things on its nose. By doing so, it learns textures and smells.",
			"It balances objects on its nose for fun. It studies the objects by spinning them."
		]
	},
	"walrein": {
		"pokemon_name": "walrein",
		"dex_info": [
			"Walrein’s two massively developed tusks can totally shatter blocks of ice weighing 10 tons with one blow.",
			"It swims through frigid seas while crushing icebergs with its massive tusks.",
			"Its tusks can shatter blocks of ice that are as big as a Wailmer. It battles alongside Sealeo."
		]
	},
	"clamperl": {
		"pokemon_name": "clamperl",
		"dex_info": [
			"Clamperl’s sturdy shell is not only good for protection—it is also used for clamping and catching prey.",
			"It makes its shell more beautiful by growing pearls inside. It is said to be powerful when it is locked in battle.",
			"It is encased in a sturdy shell that is made of beautiful pearls. It battles by clamping its prey with its shell."
		]
	},
	"huntail": {
		"pokemon_name": "huntail",
		"dex_info": [
			"Huntail’s presence went unnoticed by people for a long time because it lives at extreme depths in the sea.",
			"It lives deep in the pitch-dark sea. It attracts prey with its glowing tail and catches them with its large mouth.",
			"It lives deep in the pitch-black sea. It attracts its prey with the light on its tail and snaps them up with its large mouth."
		]
	},
	"gorebyss": {
		"pokemon_name": "gorebyss",
		"dex_info": [
			"Gorebyss lives deep in the southern seas. It is said to be the most beautiful of all the deep-sea Pokémon.",
			"It swims gracefully in the deep sea. It has a long, thin body that can coil around the prey it catches.",
			"It lives in the southern seas at great depths. It can swim elegantly even in the most violent of seas."
		]
	},
	"relicanth": {
		"pokemon_name": "relicanth",
		"dex_info": [
			"Relicanth is a Pokémon species that has remained unchanged for 100 million years.",
			"A Pokémon species that has remained unchanged for 100 million years. The species was only recently discovered.",
			"It has remained unchanged for 100 million years. It is a rare Pokémon that was just recently discovered."
		]
	},
	"luvdisc": {
		"pokemon_name": "luvdisc",
		"dex_info": [
			"Luvdisc’s heart-shaped body is a symbol of love and romance. It is said that any couple meeting this Pokémon is promised a loving relationship that never ends.",
			"It lives in the warm seas. Couples who swim together will discover a Luvdisc if they are truly in love.",
			"It lives in warm seas. Couples visiting it are said to be blessed with eternal love."
		]
	},
	"bagon": {
		"pokemon_name": "bagon",
		"dex_info": [
			"Bagon has a dream of one day soaring in the sky. In doomed efforts to fly, this Pokémon hurls itself off cliffs.",
			"It dreams of one day soaring in the sky. As a result of its dive off a cliff, it lived with a reinforced skull.",
			"Bagon jumps off cliffs as it tries to fly. It smashes its head against the ground and strengthens its skull in the process."
		]
	},
	"shelgon": {
		"pokemon_name": "shelgon",
		"dex_info": [
			"Inside Shelgon’s armor-like shell, cells are in the midst of transformation to create a new body.",
			"Within its bony shell, it has cells in the midst of a metamorphosis. It prepares for a long sleep inside to eventually fly.",
			"It will undergo a transformation soon, and the shell hardens into a cocoon in anticipation of a new body."
		]
	},
	"salamence": {
		"pokemon_name": "salamence",
		"dex_info": [
			"Salamence came about as a result of a powerful, long-held dream of growing wings. It is said that this powerful desire triggered a sudden mutation in its cells, causing it to sprout its magnificent wings.",
			"As a result of a long-held dream of growing wings, it gained the ability to fly.",
			"Its dream of flying triggered a mutation in its DNA. It can now fly and unleash powerful attacks from the sky."
		]
	},
	"beldum": {
		"pokemon_name": "beldum",
		"dex_info": [
			"Instead of blood, a powerful magnetic force courses through Beldum’s body. This Pokémon communicates with others by sending controlled pulses of magnetism.",
			"It gathers in groups to share magnetic energy. They use their magnetic powers to communicate.",
			"It uses magnetic waves to communicate. They lift metal objects in their path by pulling them with their magnetic force."
		]
	},
	"metang": {
		"pokemon_name": "metang",
		"dex_info": [
			"Metang floats midair using its magnetism. This Pokémon becomes more powerful by fusing together with its fellow Beldum.",
			"It is formed by two Beldum joining together. It can pulverize a mountain by tugging rocks with its magnetic force.",
			"It floats using magnetic power. Two Beldum fused together to form this Pokémon."
		]
	},
	"metagross": {
		"pokemon_name": "metagross",
		"dex_info": [
			"Metagross has four brains in total. Combined, the four brains can breeze through difficult calculations faster than a supercomputer.",
			"It is the result of two Metang joining together. This Pokémon defeats its opponents through its superhuman strength and speed.",
			"Metagross has four brains that generate immense power. Its intelligence is said to surpass that of a supercomputer."
		]
	},
	"regirock": {
		"pokemon_name": "regirock",
		"dex_info": [
			"Regirock was sealed away in ancient times. The Pokémon’s body is entirely made of rocks.",
			"Its body is composed of rocks of all kinds. If its body breaks, it will repair itself with nearby rocks.",
			"Its body is made of a variety of different rocks. It is known for its incredible regenerative ability."
		]
	},
	"regice": {
		"pokemon_name": "regice",
		"dex_info": [
			"Regice’s body was made during an ice age. The body can withstand temperatures as low as -328 degrees Fahrenheit.",
			"Its body is made of ice that will not melt, even if it is immersed in magma. It has been frozen for a long time.",
			"It was born during an ice age. Its body is made of ice that will never melt, even if it is exposed to fire."
		]
	},
	"registeel": {
		"pokemon_name": "registeel",
		"dex_info": [
			"Registeel’s body is harder than any kind of metal. The body metal is composed of a curious substance.",
			"Its body is harder than any other metal, but it is also surprisingly flexible.",
			"Its body is made of a strange substance that is stronger than any known metal. Its body is also flexible and can move like liquid."
		]
	},
	"latias": {
		"pokemon_name": "latias",
		"dex_info": [
			"Latias is highly intelligent and can understand human speech. It is covered with a glass-like down that reflects light to make it invisible.",
			"It is highly intelligent and capable of human speech. It uses a glass-like down to reflect light and become invisible.",
			"It can understand human speech and is extremely intelligent. The down on its body allows it to become invisible."
		]
	},
	"latios": {
		"pokemon_name": "latios",
		"dex_info": [
			"Latios has the ability to make its foe see an image of what it has seen or imagines in its head.",
			"It has a peaceful nature and is highly intelligent. It can project images of what it sees into the minds of others.",
			"It is highly intelligent and capable of telepathy. It can project images it imagines into its foe’s mind."
		]
	},
	"kyogre": {
		"pokemon_name": "kyogre",
		"dex_info": [
			"Kyogre has the power to create massive rain clouds that cover the sky and bring about torrential downpours.",
			"It has the power to create massive rain clouds that cover the sky and bring about torrential downpours.",
			"Kyogre has the ability to summon storms and massive rain clouds. It has the power to expand the oceans."
		]
	},
	"groudon": {
		"pokemon_name": "groudon",
		"dex_info": [
			"Groudon has the power to scatter rain clouds and make water evaporate with light and heat.",
			"It has the power to create and spread landmasses. It is said to have shaped the lands.",
			"It is capable of causing massive droughts and evaporating water with its intense light and heat."
		]
	},
	"rayquaza": {
		"pokemon_name": "rayquaza",
		"dex_info": [
			"Rayquaza is said to have lived for hundreds of millions of years in the earth’s ozone layer.",
			"It has lived for hundreds of millions of years in the ozone layer. It is said to descend and stop conflicts between Kyogre and Groudon.",
			"It is said to live in the ozone layer for millions of years and descend to calm the battles between Kyogre and Groudon."
		]
	},
	"jirachi": {
		"pokemon_name": "jirachi",
		"dex_info": [
			"Jirachi is said to have the ability to grant any wish that is written on notes attached to its head.",
			"It is said to grant wishes that are written on notes attached to its head. It can awaken once every thousand years.",
			"It awakens once every thousand years. It is said to grant wishes that are written on notes attached to its head."
		]
	},
	"deoxys": {
		"pokemon_name": "deoxys",
		"dex_info": [
			"Deoxys was formed by the mutation of a space virus. It has various forms that each have different attributes.",
			"It was created from a virus that came from space. It has different forms with different abilities.",
			"It is a Pokémon that was created from a mutated virus that came from space. It has multiple forms, each with different attributes."
		]
	},
		"turtwig": {
		"pokemon_name": "turtwig",
		"dex_info": [
			"Turtwig's shell is made of soil, and its body becomes harder when it drinks water. Living close to water, it draws nourishment from the soil it digs up.",
			"It undertakes photosynthesis with its body, making oxygen. The leaf on its head wilts if it is thirsty.",
			"The shell on its back is made of soil. On a very healthy Turtwig, the shell should feel moist."
		]
	},
	"grotle": {
		"pokemon_name": "grotle",
		"dex_info": [
			"Grotle lives near water in forests. Its shell is covered in dirt that contains nutrients.",
			"It knows where pure water wells up. It carries fellow Pokémon there on its back.",
			"It lives along water in forests. In the daytime, it leaves the forest to sunbathe its treed shell."
		]
	},
	"torterra": {
		"pokemon_name": "torterra",
		"dex_info": [
			"Small Pokémon occasionally gather on its unmoving back to begin building their nests.",
			"Ancient people imagined that beneath the ground, a gigantic Torterra dwelled.",
			"Some Pokémon are born on a Torterra's back and spend their entire life there."
		]
	},
	"chimchar": {
		"pokemon_name": "chimchar",
		"dex_info": [
			"It is very agile. Before going to sleep, it extinguishes the flame on its tail to prevent fires.",
			"Its fiery rear end is fueled by gas made in its belly. Even rain can’t extinguish the fire.",
			"The gas made in its belly burns from its rear end. The fire burns weakly when it feels sick."
		]
	},
	"monferno": {
		"pokemon_name": "monferno",
		"dex_info": [
			"It skillfully controls the intensity of the fire on its tail to keep its foes at an ideal distance.",
			"It uses ceilings and walls to launch aerial attacks. Its fiery tail is but one weapon.",
			"It uses ceilings and walls to launch aerial attacks. The fiery tail is but one weapon."
		]
	},
	"infernape": {
		"pokemon_name": "infernape",
		"dex_info": [
			"Its crown of fire is indicative of its fiery nature. It is beaten by none in terms of quickness.",
			"It uses a special kind of martial arts involving all its limbs. Its fire never goes out.",
			"It uses all its limbs to fight in its own unique style. The fire on its head never goes out."
		]
	},
	"piplup": {
		"pokemon_name": "piplup",
		"dex_info": [
			"Because it is very proud, it hates accepting food from people. Its thick down guards it from cold.",
			"A poor walker, it often falls down. However, its strong pride makes it puff up its chest without a care.",
			"It doesn’t like to be taken care of. It’s difficult to bond with since it won’t listen to its Trainer."
		]
	},
	"prinplup": {
		"pokemon_name": "prinplup",
		"dex_info": [
			"Because every Prinplup considers itself to be the most important, they can never form a group.",
			"It lives alone, away from others. Apparently, every one of them believes it is the most important.",
			"It lives a solitary life. Its wings deliver wicked blows that snap even the thickest of trees."
		]
	},
	"empoleon": {
		"pokemon_name": "empoleon",
		"dex_info": [
			"The three horns that extend from its beak attest to its power. The leader has the biggest horns.",
			"It swims as fast as a jet boat. The edges of its wings are sharp and can slice apart drifting ice.",
			"If anyone were to hurt its pride, it would slash them with wings that can cleave through an ice floe."
		]
	},
	"starly": {
		"pokemon_name": "starly",
		"dex_info": [
			"They flock in great numbers. Though small, they flap their wings with great power.",
			"Usually with a large flock, it is barely noticeable when alone. Its cries are very strident.",
			"They flock around mountains and fields, chasing after bug Pokémon. Their singing is noisy and annoying."
		]
	},
	"staravia": {
		"pokemon_name": "staravia",
		"dex_info": [
			"Recognizing their own weakness, they maintain huge flocks. Fierce scuffles break out between various flocks.",
			"They live in forests and fields. Squabbles over territory occur when flocks collide.",
			"Recognizing their own weakness, they form groups. However, they bicker if the group grows too big."
		]
	},
	"staraptor": {
		"pokemon_name": "staraptor",
		"dex_info": [
			"It has a savage nature. It will courageously challenge foes that are much larger than itself.",
			"It never stops attacking even if it is injured. It flies around forests and fields in search of bug Pokémon.",
			"The muscles in its wings and legs are strong. It can easily fly while gripping a small Pokémon."
		]
	},
	"bidoof": {
		"pokemon_name": "bidoof",
		"dex_info": [
			"With nerves of steel, nothing can perturb it. It is more agile and active than it appears.",
			"It constantly gnaws on logs and rocks to whittle down its front teeth. It nests alongside water.",
			"A comparison revealed that Bidoof’s front teeth grow at the same rate as Rattata’s."
		]
	},
	"bibarel": {
		"pokemon_name": "bibarel",
		"dex_info": [
			"It makes its nest by damming streams with bark and mud. It is known as an industrious worker.",
			"While its movements out of water are sluggish, it can swim as fast as any Feebas.",
			"It busily makes its nest with stacks of branches and roots it has cut up with its sharp incisors."
		]
	},
	"kricketot": {
		"pokemon_name": "kricketot",
		"dex_info": [
			"It chats with others using the sounds of its colliding antennae. These sounds are fall hallmarks.",
			"When its antennae hit each other, it sounds like the music of a xylophone.",
			"By allowing its antennae to meet, it avoids attacks by backing up."
		]
	},
	"kricketune": {
		"pokemon_name": "kricketune",
		"dex_info": [
			"It signals its emotions with its melodies. Scientists are studying these melodic patterns.",
			"It crosses its knifelike arms in front of its chest when it cries. It can compose melodies ad-lib.",
			"There is a village that hosts a contest based on the amazingly variable cries of this Pokémon."
		]
	},
	"shinx": {
		"pokemon_name": "shinx",
		"dex_info": [
			"The extension and contraction of its muscles generates electricity. Its fur glows when it is in trouble.",
			"All of its fur dazzles if danger is sensed. It flees while the foe is momentarily blinded.",
			"Its forelegs have a muscle-based system of generating electricity. Its body shines if endangered."
		]
	},
	"luxio": {
		"pokemon_name": "luxio",
		"dex_info": [
			"Strong electricity courses through the tips of its sharp claws. A light scratch causes fainting in foes.",
			"By touching friends with its claws, it can share electricity. Its claws can drop an Indian elephant with a single hit.",
			"It rests its forelegs on others to communicate with pulses from its claws. They can send signals."
		]
	},
	"luxray": {
		"pokemon_name": "luxray",
		"dex_info": [
			"Luxray’s ability to see through objects comes in handy when it’s scouting for danger.",
			"It can see clearly through walls to track down its prey and seek its lost young.",
			"It can see through solid objects. It will instantly find a person hiding behind a wall."
		]
	},
	"budew": {
		"pokemon_name": "budew",
		"dex_info": [
			"Sensitive to changing temperature, the bud is said to bloom when it feels the sun’s warm touch.",
			"When it feels the sun’s warm touch, it opens its bud to release pollen. It lives alongside clear pools.",
			"Over the winter, it closes its bud and endures the cold. Sensitive to changing temperature, the bud is said to bloom when it feels the sun’s touch."
		]
	},
	"roserade": {
		"pokemon_name": "roserade",
		"dex_info": [
			"It attracts prey with a sweet aroma, then downs it with thorny whips hidden in its arms.",
			"It’s a highly skilled flinger of poisonous whips. It knocks out foes with quick, virtually invisible strikes.",
			"Each of its hands contains different toxins, but both hands can jab with near-fatal power."
		]
	},
	"cranidos": {
		"pokemon_name": "cranidos",
		"dex_info": [
			"It lived in jungles around 100 million years ago. Its skull is as hard as iron.",
			"It used its skillful headbutts to combat Aerodactyl. It lives in jungles 100 million years ago.",
			"It was resurrected from a fossil. This Pokémon lived in jungles, eating berries that it cracked with its hard head."
		]
	},
	"rampardos": {
		"pokemon_name": "rampardos",
		"dex_info": [
			"Its powerful headbutt has enough power to shatter even the most durable things upon impact.",
			"If two were to smash their heads together, their foot-thick skulls would keep them from fainting.",
			"In rock walls and mountains where they lived, one can see many carvings of their headbutts."
		]
	},
	"shieldon": {
		"pokemon_name": "shieldon",
		"dex_info": [
			"This Pokémon lived in primeval jungles. Few enemies would have been willing to square off against its heavily armored face.",
			"It is outstandingly armored. As a result, it can eat grass or berries without having to worry about its face getting damaged.",
			"A primeval Pokémon that lived in dense forests. It was not faced with much danger, so its face is exceptionally armored."
		]
	},
	"bastiodon": {
		"pokemon_name": "bastiodon",
		"dex_info": [
			"Any frontal attack is repulsed. It is a docile Pokémon that feeds on grass and berries.",
			"It was a docile Pokémon that fed on grass and berries. It is a stone-wall defense system.",
			"When they lined up side by side, no foe could break through. They shielded their young in that way."
		]
	},
	"burmy": {
		"pokemon_name": "burmy",
		"dex_info": [
			"To shelter itself from cold, wintry winds, it covers itself with a cloak made of twigs and leaves.",
			"If its cloak is broken in battle, it quickly remakes the cloak with materials nearby.",
			"It covers itself with a cloak made of twigs and leaves. If its cloak is broken in battle, it quickly remakes the cloak with materials nearby."
		]
	},
	"wormadam": {
		"pokemon_name": "wormadam",
		"dex_info": [
			"When Burmy evolved, its cloak became a part of this Pokémon’s body. The cloak is never shed.",
			"Its appearance changes depending on where it evolved. The materials on hand become a part of its body.",
			"When Burmy evolved, its cloak became a part of its body. The cloak is never shed."
		]
	},
	"mothim": {
		"pokemon_name": "mothim",
		"dex_info": [
			"While it loves floral honey, it won’t gather any itself. Instead, it plots to steal some from Combee.",
			"It loves the honey of flowers and steals honey from the Combee.",
			"It does not keep a nest. It flies over fields and mountains in constant search of floral honey."
		]
	},
	"combee": {
		"pokemon_name": "combee",
		"dex_info": [
			"A Pokémon formed by three others. It busily carries honey to Vespiqueen’s nest.",
			"The trio is together from birth. It constantly gathers honey for its colony.",
			"It collects and delivers honey to its colony. At night, they cluster to form a beehive and sleep."
		]
	},
	"vespiquen": {
		"pokemon_name": "vespiquen",
		"dex_info": [
			"Its abdomen is a honeycomb for grubs. It raises its grubs on honey collected by Combee.",
			"When endangered, grubs from its six-cell honeycomb strike back. There is only one in a colony.",
			"It houses its colony inside its body. They are protected by the grubs in its honeycomb."
		]
	},
	"pachirisu": {
		"pokemon_name": "pachirisu",
		"dex_info": [
			"It stores its own fur balls that crackle with static electricity together with its favorite berries in tree holes.",
			"It makes fur balls that crackle with static electricity. It stores them with berries in tree holes.",
			"It’s one of the kinds of Pokémon with electric cheek pouches. It shoots charges from its tail."
		]
	},
	"buizel": {
		"pokemon_name": "buizel",
		"dex_info": [
			"It inflates the flotation sac around its neck and pokes its head out of water to see what is going on.",
			"It swims by rotating its two tails like a screw. When it dives, its flotation sac collapses.",
			"It swims by rotating its two tails like a screw. It dives into the water and puffs up its flotation sac."
		]
	},
	"floatzel": {
		"pokemon_name": "floatzel",
		"dex_info": [
			"Its flotation sac developed as a result of pursuing aquatic prey. It can double as a rubber raft.",
			"It floats using its well-developed flotation sac. It assists in the rescues of drowning people.",
			"It floats using its well-developed flotation sac. It assists in the rescues of drowning people."
		]
	},
	"cherubi": {
		"pokemon_name": "cherubi",
		"dex_info": [
			"The small ball is not only full of nutrients—it is also tasty. Starly try to peck it off.",
			"Sunlight colors it red. When it is ripe, happiness overflows.",
			"It evolves by sucking the energy from its small ball."
		]
	},
	"cherrim": {
		"pokemon_name": "cherrim",
		"dex_info": [
			"It blooms during times of strong sunlight. It tries to make up for everything it endured in the cold.",
			"It blooms in bright sunlight. It closes up again in the absence of sunlight.",
			"If it senses strong sunlight, it opens its folded petals to absorb the sun’s rays with its whole body."
		]
	},
	"shellos": {
		"pokemon_name": "shellos",
		"dex_info": [
			"Beware of pushing strongly on its squishy body, as it makes a mysterious purple fluid ooze out.",
			"Its color changes with the sea. The color and shapes of this Pokémon depend on where it lives.",
			"Its appearance changes depending on where it evolved. The materials on hand become a part of its body."
		]
	},
	"gastrodon": {
		"pokemon_name": "gastrodon",
		"dex_info": [
			"It appears where warm ocean waters meet cold currents. Apparently, this forms the basis for its appearance.",
			"Its color and shapes differ from region to region. Beware of pushing strongly on its squishy body.",
			"It is the kind of Pokémon that never seems to run out of energy. It fights using the power of its mind."
		]
	},
	"ambipom": {
		"pokemon_name": "ambipom",
		"dex_info": [
			"To eat, it deftly shucks nuts with its two tails. It rarely uses its arms now.",
			"They work in large colonies and make rings by linking their tails, apparently in friendship.",
			"Split into two, the tails are so adept at handling and doing things, Ambipom rarely uses its hands."
		]
	},
		"drifloon": {
		"pokemon_name": "drifloon",
		"dex_info": [
			"Drifloon is known to tug on the hands of children to steal them away. However, it gets pulled around instead.",
			"It is whispered that any child who mistakes Drifloon for a balloon and holds on could wind up missing.",
			"It’s a Pokémon formed by the spirits of people and Pokémon. It loves damp, humid seasons."
		]
	},
	"drifblim": {
		"pokemon_name": "drifblim",
		"dex_info": [
			"At dusk, swarms of Drifblim gather and float silently through the sky. People used to call them 'the signposts for wandering spirits.'",
			"It carries people and Pokémon when it flies. But since it only drifts, it can end up anywhere.",
			"It’s drowsy in daytime, but flies off in the evening in big groups. No one knows where they go."
		]
	},
	"buneary": {
		"pokemon_name": "buneary",
		"dex_info": [
			"Buneary’s ears are always rolled up. They can be forcefully extended to shatter even a large boulder.",
			"Its ears are always rolled up. They can be forcefully extended to shatter a boulder.",
			"It slams foes by sharply uncoiling its rolled ears. It stings enough to make a grown-up cry in pain."
		]
	},
	"lopunny": {
		"pokemon_name": "lopunny",
		"dex_info": [
			"Lopunny is constantly monitoring the surrounding area. If it senses danger, it will quickly flee.",
			"The ears appear to be delicate. If they are touched roughly, it kicks with its graceful legs.",
			"Extremely cautious, it quickly bounds off when it senses danger. Its ears appear to be delicate."
		]
	},
	"mismagius": {
		"pokemon_name": "mismagius",
		"dex_info": [
			"Its cry sounds like an incantation. It is said that the cry may be heard when it is casting spells.",
			"It chants incantations. While they usually torment targets, some chants bring happiness.",
			"Its muttered curses can cause awful headaches or terrifying visions that torment others."
		]
	},
	"honchkrow": {
		"pokemon_name": "honchkrow",
		"dex_info": [
			"It is merciless by nature. It is said that it never forgives the mistakes of its Murkrow followers.",
			"If one utters a deep cry, flocks of Murkrow gather quickly. For this, it is called 'Summoner of Night.'",
			"It is merciless by nature and never forgives the mistakes of its Murkrow followers. It gathers Murkrow for its deeds."
		]
	},
	"glameow": {
		"pokemon_name": "glameow",
		"dex_info": [
			"It claws if displeased and purrs when affectionate. Its fickleness is very popular among some.",
			"It hides its spiteful tendency of hooking its claws into the nose of its Trainer if they don’t feed it.",
			"It hides its spiteful tendencies by hooking its claws into the nose of its Trainer if they don’t feed it."
		]
	},
	"purugly": {
		"pokemon_name": "purugly",
		"dex_info": [
			"It binds its body with its tails to make itself look bigger. If it locks eyes, it will glare ceaselessly.",
			"It is a brazen brute that barges its way into another Pokémon’s nest and claims it as its own.",
			"To make itself appear intimidatingly beefy, it tightly cinches its waist with its twin tails."
		]
	},
	"chingling": {
		"pokemon_name": "chingling",
		"dex_info": [
			"It emits cries by agitating an orb in the back of its throat. It moves with flouncing hops.",
			"There is an orb inside its mouth. When it hops, the orb bounces all over and makes a ringing sound.",
			"Each time it hops, it makes a ringing sound. It deafens foes by emitting high-frequency cries."
		]
	},
	"stunky": {
		"pokemon_name": "stunky",
		"dex_info": [
			"It sprays a foul fluid from its rear. Its stench spreads over a mile radius, driving Pokémon away.",
			"It protects itself by spraying a noxious fluid from its rear. The stench lingers for 24 hours.",
			"It sprays a foul-smelling liquid from its rear to repel attackers. The stench lingers for 24 hours."
		]
	},
	"skuntank": {
		"pokemon_name": "skuntank",
		"dex_info": [
			"It sprays a foul fluid from its rear. Its stench spreads over a mile radius, driving Pokémon away.",
			"It sprays a vile-smelling fluid from the tip of its tail to attack. Its range is over 160 feet.",
			"It attacks by spraying a horribly smelly fluid from the tip of its tail. It can fire the stench up to 160 feet."
		]
	},
	"bronzor": {
		"pokemon_name": "bronzor",
		"dex_info": [
			"Implements shaped like it were discovered in ancient tombs. It is unknown if they are related.",
			"There are researchers who believe this Pokémon reflected like a mirror in the distant past.",
			"Implements shaped like it were discovered in ancient tombs. It is unknown if they are related."
		]
	},
	"bronzong": {
		"pokemon_name": "bronzong",
		"dex_info": [
			"It brought rains by opening portals to another world. It was revered as a bringer of plentiful harvests.",
			"It is said to have brought rains that led to rich harvests. It was found buried in ancient ruins.",
			"In one region, it is said to have been buried in the ground since ancient times. It can make rain fall with its cry."
		]
	},
	"bonsly": {
		"pokemon_name": "bonsly",
		"dex_info": [
			"It looks as if it is always crying. It is actually adjusting its body’s fluid levels by eliminating excess.",
			"It prefers an arid atmosphere. It leaks water that looks like tears when adjusting its moisture level.",
			"It looks as if it is always crying. It is actually adjusting its body’s fluid levels by eliminating excess moisture."
		]
	},
	"mimejr": {
		"pokemon_name": "mimejr",
		"dex_info": [
			"It habitually mimics foes. Once mimicked, the foe cannot take its eyes off this Pokémon.",
			"It mimics everyone it sees, but it’s not yet skilled in copying the movements of others.",
			"It mimics the expressions and motions of those it sees to understand the feelings of others."
		]
	},
	"happiny": {
		"pokemon_name": "happiny",
		"dex_info": [
			"It carries a round, egg-shaped rock in its belly pouch and gives the rock to its friends.",
			"It likes to carry around a small rock. It may wander around others if it doesn’t have one to play with.",
			"It likes to carry around a small rock. It may wander around others if it doesn’t have one to play with."
		]
	},
	"chatot": {
		"pokemon_name": "chatot",
		"dex_info": [
			"It mimics the cries of other Pokémon to trick them into thinking it’s one of them.",
			"Its tongue is just like a human’s. As a result, it can cleverly mimic human speech.",
			"It can learn and speak human words. If they gather, they all learn the same saying."
		]
	},
	"spiritomb": {
		"pokemon_name": "spiritomb",
		"dex_info": [
			"A Pokémon that was formed by 108 spirits. It is bound to a fissure in an odd keystone.",
			"It was bound to a fissure in an odd keystone as punishment for misdeeds 500 years ago.",
			"It was formed by uniting 108 spirits. It has been bound to the odd keystone to keep it from doing harm."
		]
	},
	"gible": {
		"pokemon_name": "gible",
		"dex_info": [
			"It attacks using its huge mouth. While its attacks are powerful, it hurts itself out of clumsiness, too.",
			"It nests in small, horizontal holes in cave walls. It pounces to catch prey that stray too close.",
			"It once lived in the tropics. To avoid the cold, it lives in caves warmed by geothermal heat."
		]
	},
	"gabite": {
		"pokemon_name": "gabite",
		"dex_info": [
			"There is a long-held belief that medicine made from its scales will heal even incurable illnesses.",
			"It habitually digs up gems and hoards them in its nest. It’s been known to sneak into others’ nests to steal their gems.",
			"It loves sparkly things. It seeks treasures in caves and hoards the loot in its nest."
		]
	},
	"garchomp": {
		"pokemon_name": "garchomp",
		"dex_info": [
			"When it folds up its body and extends its wings, it looks like a jet plane. It flies at sonic speed.",
			"It is said that when one runs at high speed, its wings create blades of wind that can fell nearby trees.",
			"The protuberances on its head serve as sensors. It can even detect distant prey."
		]
	},
	"munchlax": {
		"pokemon_name": "munchlax",
		"dex_info": [
			"In its desperation to gulp down food, it forgets about the food it has hidden under its fur.",
			"It hides food under its long body hair. However, it forgets it has hidden the food.",
			"It hides food under its fur. It has lost food before by forgetting it had hidden it."
		]
	},
	"riolu": {
		"pokemon_name": "riolu",
		"dex_info": [
			"It has the peculiar power of being able to see emotions such as joy and rage in the form of waves.",
			"It uses the shapes of auras, which change according to emotion, to communicate with others.",
			"It can understand human speech if it sees waves of aura from the person’s emotions."
		]
	},
	"lucario": {
		"pokemon_name": "lucario",
		"dex_info": [
			"By reading the auras of all things, it can tell how others are feeling from over half a mile away.",
			"It controls waves known as auras, which are powerful enough to pulverize huge rocks.",
			"It can study the shapes of auras, which change according to emotion, and understand what a person is thinking."
		]
	},
	"hippopotas": {
		"pokemon_name": "hippopotas",
		"dex_info": [
			"It shuts its nostrils tight, then travels through sand as if walking. They form colonies of around 10.",
			"It lives in arid places. Instead of perspiration, it expels grainy sand from its body.",
			"It enshrouds itself with sand to protect itself from germs. It does not enjoy getting wet."
		]
	},
	"hippowdon": {
		"pokemon_name": "hippowdon",
		"dex_info": [
			"It is surprisingly quick to anger. It brandishes its gaping mouth in a display of fearsome strength.",
			"Its huge mouth can easily crush a car. This Pokémon has enough sand to cover an entire city.",
			"It blasts sand from its body. It uses the sand to create walls for protection and to attack foes."
		]
	},
	"skorupi": {
		"pokemon_name": "skorupi",
		"dex_info": [
			"As soon as the tail claws close, its needle tips secrete poison. It can survive a year without food.",
			"It lives in arid regions and can go without food for a year. Its claws give off a powerful poison.",
			"It grips prey with its tail claws and injects poison. It tenaciously hangs on until the poison takes."
		]
	},
	"drapion": {
		"pokemon_name": "drapion",
		"dex_info": [
			"It has the power in its clawed arms to make scrap of a car. The tips of its claws release poison.",
			"Its poison is potent, but it rarely needs to use it. It prefers to finish its prey with its bare hands.",
			"It takes pride in its strength. Even though it can tear foes apart, it finishes them off with a powerful poison."
		]
	},
	"croagunk": {
		"pokemon_name": "croagunk",
		"dex_info": [
			"Croagunk’s cheeks hold poison sacs. It tries to catch foes off guard to jab them with toxic fingers.",
			"It rarely fights fairly, but that is strictly to ensure survival. It uses poison to defeat its opponents.",
			"It doesn’t hesitate to break the rules so it can win. It prefers a poisonous jab to finishing off its foes."
		]
	},
	"toxicroak": {
		"pokemon_name": "toxicroak",
		"dex_info": [
			"Its knuckle claws secrete a toxin so vile that even a scratch could prove fatal.",
			"It has a poison sac at its throat. When it croaks, the stored poison is churned for greater potency.",
			"It has a poison sac at its throat. As it croaks, the poison is churned for greater potency."
		]
	},
	"carnivine": {
		"pokemon_name": "carnivine",
		"dex_info": [
			"It binds itself to trees in marshes. It attracts prey with its sweet-smelling drool and gulps them down.",
			"It attracts prey with its sweet-smelling saliva, then chomps down. It takes a whole day to eat prey.",
			"Hanging from branches using its tentacles, it looks like a plant. It awaits its prey with its mouth wide open."
		]
	},
	"finneon": {
		"pokemon_name": "finneon",
		"dex_info": [
			"Its double tail fins propel its energetic jumps. When it breaks the surface of the sea, Wingull swoop down to grab it on the fly.",
			"After long exposure to sunlight, the patterns on its tail fins shine vividly when darkness arrives.",
			"It absorbs sunlight with the pink areas of its skin, which then shine. This appears to be a form of camouflage."
		]
	},
	"lumineon": {
		"pokemon_name": "lumineon",
		"dex_info": [
			"Lumineon swims as if it were flying with its long, flowing fins. It scales the walls of caves, searching for prey.",
			"It crawls along the seafloor using its long front fins. It competes for food with Lanturn.",
			"It lives on the deep-sea floor. It attracts prey by flashing the patterns on its four tail fins."
		]
	},
	"mantyke": {
		"pokemon_name": "mantyke",
		"dex_info": [
			"When it swims close to the surface of the ocean, people aboard ships are able to observe the pattern on its back.",
			"It swims along freely, eating things that are smaller than it. It enjoys swimming with Remoraid.",
			"It floats along on the waves. It swims freely with Remoraid in tow."
		]
	},
	"snover": {
		"pokemon_name": "snover",
		"dex_info": [
			"In the spring, it grows berries with the texture of frozen treats around its belly.",
			"It lives on snowy mountains. It sinks its legs into the snow to absorb water and keep its own temperature down.",
			"Seemingly curious about people, they gather around footsteps they find on snowy mountains."
		]
	},
	"abomasnow": {
		"pokemon_name": "abomasnow",
		"dex_info": [
			"It blankets wide areas in snow by whipping up blizzards. It is also known as 'The Ice Monster.'",
			"It lives a quiet life on mountains that are perpetually covered in snow. It hides itself by whipping up blizzards.",
			"It whips up blizzards in mountains that are always buried in snow. It is the abominable snowman."
		]
	},
	"weavile": {
		"pokemon_name": "weavile",
		"dex_info": [
			"They live in cold regions, forming groups of four or five that hunt prey with impressive coordination.",
			"It sends signals to others by carving odd patterns in frost-covered trees and ice.",
			"It lives in snowy regions. It carves patterns in trees with its claws as a signal to others."
		]
	},
	"magnezone": {
		"pokemon_name": "magnezone",
		"dex_info": [
			"Sometimes the magnetism emitted by Magnezone is too strong, making them attract each other so they cannot move.",
			"It evolved from exposure to a special magnetic field. Three units generate magnetism.",
			"Some say that Magnezone receives signals from space via its antenna, but the Pokémon itself is unaware."
		]
	},
	"lickilicky": {
		"pokemon_name": "lickilicky",
		"dex_info": [
			"It wraps things with its extensible tongue. Getting too close to it will leave you soaked with drool.",
			"It can deftly pick up a small item with its tongue and eat it. Its saliva contains lots of enzymes.",
			"It wraps its long tongue around things, then it licks them with its saliva-soaked tongue. It has trouble with long words."
		]
	},
	"rhyperior": {
		"pokemon_name": "rhyperior",
		"dex_info": [
			"It puts rocks in holes in its palms and uses its muscles to shoot them. Geodude are shot at rare times.",
			"It can launch a rock held in its hand like a missile by tightening and then expanding its muscles instantly.",
			"It relies on its carapace to deflect incoming attacks and continues to batter its opponent."
		]
	},
	"tangrowth": {
		"pokemon_name": "tangrowth",
		"dex_info": [
			"Its arms are made of plants that bind themselves to things. They grow back right away if cut.",
			"It ensnares prey by extending arms made of vines. Losing arms to predators does not trouble it.",
			"Its arms are made of plants. They wrap around people and things and hold them tight. The arms do not feel pain if they are cut."
		]
	},
	"electivire": {
		"pokemon_name": "electivire",
		"dex_info": [
			"It pushes the tips of its two tails against the foe, then lets loose with over 20,000 volts of power.",
			"It grips its tail, which spews electricity, and uses it to zap foes. It is believed to have the power to cause blackouts.",
			"The instant it presses its tail tips onto its opponent, it sends over 20,000 volts of electricity into its foe."
		]
	},
	"magmortar": {
		"pokemon_name": "magmortar",
		"dex_info": [
			"When Magmortar breathes deeply, heat waves form around its body, making it hard to see clearly.",
			"It blasts fireballs of over 3,600 degrees Fahrenheit from the ends of its arms. It lives in volcanic craters.",
			"It blasts fireballs of over 3,600 degrees Fahrenheit from its arm cannons. It lives in volcanic craters."
		]
	},
	"togekiss": {
		"pokemon_name": "togekiss",
		"dex_info": [
			"It will never appear where there is strife. Its sightings have become rare recently.",
			"It shares many blessings with people who respect one another’s rights and avoid needless strife.",
			"It is said to appear in peaceful regions, bringing them gifts of kindness and sweet blessings."
		]
	},
	"yanmega": {
		"pokemon_name": "yanmega",
		"dex_info": [
			"Its jaw power is incredible. It is adept at biting apart foes while flying by at high speed.",
			"It prefers to battle by biting apart foes’ heads instantly while flying by at high speed.",
			"This six-legged Pokémon is easily capable of transporting an adult in flight. The wings it develops enable it to fly fast."
		]
	},
	"leafeon": {
		"pokemon_name": "leafeon",
		"dex_info": [
			"It basically does not fight. With cells similar to those of plants, it performs photosynthesis.",
			"When you see Leafeon asleep in a patch of sunshine, you know it is using photosynthesis to produce clean air.",
			"Just like a plant, it uses photosynthesis. As a result, it is always enveloped in clean air."
		]
	},
	"glaceon": {
		"pokemon_name": "glaceon",
		"dex_info": [
			"It can drop its body temperature below -75 degrees Fahrenheit to freeze its fur into icicles, spiky and sharp.",
			"It lowers its body heat to freeze its fur. The hairs then become like needles it can fire.",
			"It lowers its body heat to freeze its fur. The hairs then become like needles it can fire."
		]
	},
	"gliscor": {
		"pokemon_name": "gliscor",
		"dex_info": [
			"If it succeeds in catching even a faint breeze properly, it can circle the globe without flapping once.",
			"It observes prey while hanging inverted from branches. When the chance presents itself, it swoops!",
			"It dances silently through the sky. When it approaches, you’ll notice a change in the air’s humidity."
		]
	},
	"mamoswine": {
		"pokemon_name": "mamoswine",
		"dex_info": [
			"A frozen Mamoswine was dug from ice dating back 10,000 years. It woke up to much amazement.",
			"Its impressive tusks are made of ice. The population thinned when it turned warm after the ice age.",
			"It looks strong, but it is surprisingly small. Once the ice age ended, Mamoswine went into hiding."
		]
	},
	"porygonz": {
		"pokemon_name": "porygonz",
		"dex_info": [
			"Its programming was modified to enable work in alien dimensions. It did not work as planned.",
			"Additional software was installed to make it a better Pokémon. It began acting strangely, however.",
			"Its programming was modified to enable it to travel through alien dimensions. However, it did not work as planned."
		]
	},
	"gallade": {
		"pokemon_name": "gallade",
		"dex_info": [
			"A master of courtesy and swordsmanship, it fights using extending swords on its elbows.",
			"When protecting someone, it extends its elbows as if they were swords and fights savagely.",
			"A master of courtesy and swordsmanship, it battles using the extending swords on its elbows."
		]
	},
	"probopass": {
		"pokemon_name": "probopass",
		"dex_info": [
			"It freely controls three small units called Mini-Noses using magnetic force.",
			"It uses three small units called Mini-Noses to catch prey and to drive them back to its main body.",
			"It controls three units called Mini-Noses using magnetic force. With them, it can attack its foes from three directions."
		]
	},
	"dusknoir": {
		"pokemon_name": "dusknoir",
		"dex_info": [
			"This feared Pokémon is said to travel to worlds unknown. Some even believe that it takes lost souls along with it.",
			"It is said to take lost spirits into its pliant body and carry them home. It receives commands from the spirit world with its antenna.",
			"It is said to take spirits into its body and guide them home. This Pokémon receives electrical waves from the spirit world with its antenna."
		]
	},
	"froslass": {
		"pokemon_name": "froslass",
		"dex_info": [
			"It freezes foes with an icy breath nearly -60 degrees Fahrenheit. What seems to be its body is actually hollow.",
			"It freezes prey by blowing its -60 degree Fahrenheit breath. It is said to then secretly display its prey.",
			"Legends in snowy regions say that a woman who was lost on an icy mountain was reborn as Froslass."
		]
	},
	"rotom": {
		"pokemon_name": "rotom",
		"dex_info": [
			"Its body is composed of plasma. It is known to infiltrate electronic devices and wreak havoc.",
			"Research continues on this Pokémon, which could be the power source of a unique motor.",
			"Its body is composed of plasma. It can infiltrate electronic devices and wreak havoc."
		]
	},
	"uxie": {
		"pokemon_name": "uxie",
		"dex_info": [
			"Known as 'The Being of Knowledge.' It is said that it can wipe out the memory of those who see its eyes.",
			"When Uxie flew, people gained the ability to solve problems. It was the birth of knowledge.",
			"It is said that its emergence gave humans the intelligence to improve their quality of life."
		]
	},
	"mesprit": {
		"pokemon_name": "mesprit",
		"dex_info": [
			"It is known as 'The Being of Emotion.' It taught humans the nobility of sorrow, pain, and joy.",
			"When Mesprit flew, people learned the joy and sadness of living. It was the birth of emotions.",
			"It sleeps at the bottom of a lake. Its spirit is said to leave its body to fly on the lake’s surface."
		]
	},
	"azelf": {
		"pokemon_name": "azelf",
		"dex_info": [
			"It is known as 'The Being of Willpower.' It sleeps at the bottom of a lake to keep the world in balance.",
			"When Azelf flew, people gained the determination to do things. It was the birth of willpower.",
			"It is thought that Uxie, Mesprit, and Azelf all came from the same egg."
		]
	},
	"dialga": {
		"pokemon_name": "dialga",
		"dex_info": [
			"It has the power to control time. It appears in Sinnoh-region myths as an ancient deity.",
			"It is said that time began moving when Dialga was born. It is revered as a deity in the Sinnoh region.",
			"A Pokémon spoken of in legend. It is said that time began moving when it was born."
		]
	},
	"palkia": {
		"pokemon_name": "palkia",
		"dex_info": [
			"It has the ability to distort space. It is described as a deity in Sinnoh-region mythology.",
			"It is said to live in a gap in the spatial dimension parallel to ours. It appears in mythology.",
			"It has the ability to distort space. It is described as a deity in Sinnoh-region mythology."
		]
	},
	"heatran": {
		"pokemon_name": "heatran",
		"dex_info": [
			"It dwells in volcanic caves. It digs in with its cross-shaped feet to crawl on ceilings and walls.",
			"Its body is made of rugged steel. However, it is partially melted in spots because of its own heat.",
			"Boiling blood, like magma, circulates through its body. It dwells in volcanic caves."
		]
	},
		"regigigas": {
		"pokemon_name": "regigigas",
		"dex_info": [
			"Regigigas is said to have towed continents with ropes, showing its immense strength.",
			"It is believed to have shaped the Regirock, Regice, and Registeel from mountains, ice, and magma.",
			"There is a legend that Regigigas moved the continents by pulling them with ropes."
		]
	},
	"giratina": {
		"pokemon_name": "giratina",
		"dex_info": [
			"Giratina is said to live in a world opposite ours, where everything is reversed.",
			"It was banished for its violent nature and dwells in the Distortion World.",
			"Legends say it silently gazes upon the old world from the Distortion World."
		]
	},
	"cresselia": {
		"pokemon_name": "cresselia",
		"dex_info": [
			"Cresselia’s wings release glittering particles that are said to represent the crescent moon.",
			"Holding a Cresselia feather while sleeping is said to guarantee pleasant dreams.",
			"It is a Pokémon that symbolizes the crescent moon, bringing joy to those who see it."
		]
	},
	"phione": {
		"pokemon_name": "phione",
		"dex_info": [
			"Phione drifts in warm seas, inflating its flotation sac to search for food.",
			"It always returns to its birthplace, no matter how far it has traveled in the ocean.",
			"Phione can be found drifting along warm ocean currents, guided by the tides."
		]
	},
	"manaphy": {
		"pokemon_name": "manaphy",
		"dex_info": [
			"Manaphy is born with the power to form close bonds with any Pokémon.",
			"It is said to have a wondrous power that allows it to bond with any Pokémon, no matter how different.",
			"Manaphy has the unique ability to bond with all Pokémon, a gift it has from birth."
		]
	},
	"darkrai": {
		"pokemon_name": "darkrai",
		"dex_info": [
			"Darkrai is known to cause nightmares to those around it, not out of malice, but as a form of self-defense.",
			"It lulls people and Pokémon into deep slumber, filling their dreams with endless nightmares.",
			"This Pokémon chases intruders from its territory by causing them to experience relentless nightmares."
		]
	},
	"shaymin": {
		"pokemon_name": "shaymin",
		"dex_info": [
			"Shaymin has the ability to purify polluted lands, transforming them into lush fields of flowers.",
			"It can dissolve toxins in the air, instantly transforming ruined land into verdant fields.",
			"When Gracidea flowers bloom, Shaymin is said to take flight, carrying the gratitude of those it has helped."
		]
	},
	"arceus": {
		"pokemon_name": "arceus",
		"dex_info": [
			"Arceus is believed to have shaped the universe and brought order with its 1,000 arms.",
			"Mythology describes Arceus as emerging from an egg before the world existed, creating the universe.",
			"It is said that Arceus created the world, molding it into shape with its many arms."
		]
	},
		"victini": {
		"pokemon_name": "victini",
		"dex_info": [
			"Victini is said to bring victory to its Trainer, and it can share its infinite energy with others.",
			"This Pokémon can generate an unlimited amount of energy inside its body, which it shares with those it trusts.",
			"It is believed that Trainers with Victini always win, regardless of the type of encounter."
		]
	},
	"snivy": {
		"pokemon_name": "snivy",
		"dex_info": [
			"Snivy is known for its cool and collected demeanor. When it is exposed to lots of sunlight, its movements become swifter.",
			"It has a high level of intelligence, and its tails twitches with elegance when it is thinking.",
			"Snivy’s tail has photosynthetic abilities, allowing it to move more quickly when it is well-bathed in sunlight."
		]
	},
	"servine": {
		"pokemon_name": "servine",
		"dex_info": [
			"Servine moves with grace, avoiding attacks by slipping through the shadows of thick foliage.",
			"It hides in the shadows of tall trees, slinking away from its foes. It can move as quickly as the wind.",
			"It moves with such elegant precision that it appears to be dancing as it avoids its opponents."
		]
	},
	"serperior": {
		"pokemon_name": "serperior",
		"dex_info": [
			"Serperior can stop its opponents’ movements with just a glare, and it is said to have a regal presence.",
			"It only fights foes that are unworthy of its time, using its gaze to intimidate and freeze them in their tracks.",
			"This Pokémon is known to take pride in its superiority, overwhelming opponents with a mere look."
		]
	},
	"tepig": {
		"pokemon_name": "tepig",
		"dex_info": [
			"Tepig uses its fire to roast berries before eating them. It loves to eat roasted berries.",
			"It blows fire through its nose with ease. When it is not feeling well, its flames sputter weakly.",
			"It can shoot fire from its snout, and it roasts its food before eating. If it is sick, its fire gets weak."
		]
	},
	"pignite": {
		"pokemon_name": "pignite",
		"dex_info": [
			"Pignite’s body is bursting with fire energy, and the flames in its stomach grow stronger the more it eats.",
			"When its internal fire flares up, its movements grow swifter. Sometimes it becomes so hot that it smokes.",
			"The more it eats, the more fuel it has for its fire. The energy from its internal flames makes it faster."
		]
	},
	"emboar": {
		"pokemon_name": "emboar",
		"dex_info": [
			"Emboar can throw a fiery punch by setting its fists on fire. It cares deeply about its friends.",
			"It is known for its powerful punches, which are engulfed in flames. Despite its fierce appearance, it has a compassionate side.",
			"Its fiery beard burns with intensity, and it unleashes powerful fire attacks with its fists."
		]
	},
	"oshawott": {
		"pokemon_name": "oshawott",
		"dex_info": [
			"Oshawott fights using the scallop on its stomach. In battle, it removes it and uses it to block attacks.",
			"The scallop on its stomach isn’t just for decoration—it’s used as a weapon to deflect attacks and strike back.",
			"It uses the shell on its belly to defend itself and as a blade to cut down foes."
		]
	},
	"dewott": {
		"pokemon_name": "dewott",
		"dex_info": [
			"Dewott learns the art of combat by rigorously training with its scalchops, mastering various techniques.",
			"It trains its scalchops in various styles, each suited to a different type of battle.",
			"Through continuous training, it hones its skills with the scalchops it uses in battle."
		]
	},
	"samurott": {
		"pokemon_name": "samurott",
		"dex_info": [
			"Samurott’s regal armor and swift movements are a testament to its mastery in battle.",
			"It wields the seamitars on its legs with great skill. A single swing of its blade can fell an opponent.",
			"The sound of its armor clattering signals the start of battle, where it charges at opponents with swift and precise strikes."
		]
	},
	"patrat": {
		"pokemon_name": "patrat",
		"dex_info": [
			"Patrat keeps a keen watch over its surroundings, storing food in its cheeks in case of danger.",
			"It stands guard and warns others of danger with its sharp cries. It can store food in its cheeks.",
			"This Pokémon is always on the lookout, using its sharp eyes to detect and avoid danger."
		]
	},
	"watchog": {
		"pokemon_name": "watchog",
		"dex_info": [
			"Watchog uses luminescent markings to illuminate dark areas and keep a vigilant watch.",
			"It’s known for its vigilance, often using its light-emitting body patterns to alert others to danger.",
			"Its sharp eyesight allows it to spot enemies from afar, and it uses its glowing body to signal warnings."
		]
	},
	"lillipup": {
		"pokemon_name": "lillipup",
		"dex_info": [
			"Lillipup is brave and intelligent, always staying alert in battle. Its fur is said to be quite soft.",
			"It faces strong opponents bravely, trusting in its strength and soft fur to keep it safe.",
			"The long fur on its face has a sensory function, allowing it to assess the environment around it."
		]
	},
	"herdier": {
		"pokemon_name": "herdier",
		"dex_info": [
			"Herdier is extremely loyal to its Trainer, and it has been used as a herding dog since long ago.",
			"This Pokémon is highly regarded for its loyalty and bravery, often used to protect herds from predators.",
			"It has been bred as a herding dog, and its sturdy body and keen senses make it an excellent protector."
		]
	},
	"stoutland": {
		"pokemon_name": "stoutland",
		"dex_info": [
			"Stoutland is known for its strength and bravery, often leading rescue missions in harsh climates.",
			"It is said to be able to withstand the coldest of environments, making it a reliable companion in any situation.",
			"This Pokémon is known for its warm fur and gentle nature, but it can be fiercely protective when needed."
		]
	},
	"purrloin": {
		"pokemon_name": "purrloin",
		"dex_info": [
			"Purrloin is known for its sly and cunning nature, often tricking people and Pokémon alike.",
			"Its playful demeanor hides its mischievous tendencies, as it enjoys stealing from others.",
			"It acts cute, but it’s actually quite the trickster. It uses its charm to get what it wants."
		]
	},
	"liepard": {
		"pokemon_name": "liepard",
		"dex_info": [
			"Liepard moves with grace and stealth, using the cover of night to ambush its prey.",
			"It is a silent hunter, stalking its prey with elegance and striking with swift, lethal precision.",
			"Its sleek fur allows it to move silently through the shadows, making it a master of ambush."
		]
	},
	"pansage": {
		"pokemon_name": "pansage",
		"dex_info": [
			"Pansage shares the leaves on its head with others as a sign of friendship. The leaves are known to have healing properties.",
			"It offers its leaves to Pokémon that have lost their way in the forest, guiding them to safety.",
			"The leaves on its head are known to have medicinal properties, and it shares them with Pokémon in need."
		]
	},
	"simisage": {
		"pokemon_name": "simisage",
		"dex_info": [
			"Simisage is known for its fierce temper and powerful attacks, which it delivers with its thorny tail.",
			"It swings its thorn-covered tail wildly, striking fear into its opponents with its unpredictable moves.",
			"This Pokémon is known for its wild nature, often lashing out with its spiky tail to intimidate foes."
		]
	},
	"pansear": {
		"pokemon_name": "pansear",
		"dex_info": [
			"Pansear loves to cook berries with the flames it produces from its head. It roasts berries to perfection.",
			"It uses its flame-covered head to roast berries, and it enjoys sharing the food with others.",
			"The tuft on its head can reach temperatures of over 600 degrees Fahrenheit, perfect for roasting berries."
		]
	},
	"simisear": {
		"pokemon_name": "simisear",
		"dex_info": [
			"Simisear is known for its laid-back nature, often lounging around while keeping its flames low.",
			"It loves sweets, and it stores berries in its mane, which it then roasts and eats whenever it likes.",
			"The flames in its body are always lit. It loves eating sweets and relaxing with a calm flame."
		]
	},
	"panpour": {
		"pokemon_name": "panpour",
		"dex_info": [
			"Panpour stores water in its tuft and uses it to wash itself and others. It enjoys splashing in rivers.",
			"It can store water in its head tuft, which it uses to drench its opponents in battle.",
			"It stores water in the tuft on its head, which it uses to wash itself and cool off on hot days."
		]
	},
	"simipour": {
		"pokemon_name": "simipour",
		"dex_info": [
			"Simipour is known for its calm demeanor, often using its water to soothe and help others.",
			"It prefers clean water, and it uses its tail to keep water flowing wherever it goes.",
			"It can shoot pressurized water from its tail, and it uses this power to wash away grime from itself and its friends."
		]
	},
	"munna": {
		"pokemon_name": "munna",
		"dex_info": [
			"Munna eats the dreams of people and Pokémon, preferring those that are happy and pleasant.",
			"It floats in the air, feeding on the dreams of others. The mist it expels from its body are the dreams it has eaten.",
			"When it eats a happy dream, it releases a mist that has a pleasant aroma."
		]
	},
	"musharna": {
		"pokemon_name": "musharna",
		"dex_info": [
			"Musharna can project the dreams it has eaten, showing them as misty visions to others.",
			"The mist it releases contains the dreams it has absorbed. Some say it can show past events through this mist.",
			"It is said that people who stare at the mist from Musharna's body can see the dreams of others."
		]
	},
	"pidove": {
		"pokemon_name": "pidove",
		"dex_info": [
			"Pidove is not the smartest Pokémon, but it’s very obedient and listens to its Trainer's commands.",
			"Though it has a strong sense of companionship, it sometimes forgets what it was told to do.",
			"It listens to its Trainer faithfully, but it sometimes fails to understand complicated instructions."
		]
	},
	"tranquill": {
		"pokemon_name": "tranquill",
		"dex_info": [
			"Tranquill can always find its way home, no matter how far it may be from its familiar territory.",
			"It has an unerring sense of direction and will always return to its nest, no matter the distance.",
			"This Pokémon is known to guide others home through even the most confusing of paths."
		]
	},
	"unfezant": {
		"pokemon_name": "unfezant",
		"dex_info": [
			"Unfezant is known for its elaborate plumage and powerful flight, which it uses to dominate its territory.",
			"Males have elaborate plumage that they use to court females. Their powerful wings allow for swift flight.",
			"It flies faster than the speed of sound, using the shockwave from its speed to knock out opponents."
		]
	},
	"blitzle": {
		"pokemon_name": "blitzle",
		"dex_info": [
			"Blitzle discharges electricity from its mane to communicate with others. Its mane flashes when it is angered.",
			"It uses its flashing mane to communicate with other Blitzle. The faster it flashes, the stronger the message.",
			"It generates electricity in its mane, and the rhythm of the flashing can be used to send signals to others."
		]
	},
	"zebstrika": {
		"pokemon_name": "zebstrika",
		"dex_info": [
			"Zebstrika runs at high speeds, leaving behind a trail of lightning that scorches the ground.",
			"When this ill-tempered Pokémon runs, the sound of thunder reverberates through the air.",
			"It gallops as fast as lightning, producing electrical sparks as it races along."
		]
	},
	"roggenrola": {
		"pokemon_name": "roggenrola",
		"dex_info": [
			"Roggenrola’s body is as hard as steel, and it can survive being stepped on by a car.",
			"It is a Pokémon with a very hard body and a mysterious ear-like structure that is sensitive to sound.",
			"Its ear is actually an organ that senses vibrations in the ground, allowing it to detect movements."
		]
	},
		"boldore": {
		"pokemon_name": "boldore",
		"dex_info": [
			"Boldore’s crystals glow when it is about to unleash a powerful attack. The energy it stores can blast a hole through a mountain.",
			"It relies on the energy stored in its orange crystals for power. A single crystal could power a city for a week.",
			"Its orange crystals contain enough energy to blast through a mountain. They glow when it’s ready to attack."
		]
	},
	"gigalith": {
		"pokemon_name": "gigalith",
		"dex_info": [
			"Gigalith’s compressed energy within its body can be released explosively, creating shockwaves strong enough to flatten a mountain.",
			"The blasts of energy it releases can level mountains. It uses this power to crush its opponents in battle.",
			"Its internal energy can cause massive explosions that shake the ground for miles around."
		]
	},
	"woobat": {
		"pokemon_name": "woobat",
		"dex_info": [
			"Woobat leaves heart-shaped marks wherever it goes by sucking with its nose. The marks are said to bring good fortune.",
			"Its heart-shaped nose marks are seen as a sign of good luck. It uses ultrasonic waves to navigate dark caves.",
			"It flutters around caves, leaving heart-shaped marks on walls. These marks are considered a good omen."
		]
	},
	"swoobat": {
		"pokemon_name": "swoobat",
		"dex_info": [
			"Swoobat emits powerful ultrasonic waves that can shatter concrete. It uses these waves to communicate with others.",
			"Its ultrasonic waves are strong enough to crack boulders. It flutters around the night sky, guided by these waves.",
			"It communicates with others using ultrasonic waves that can crush even the hardest rocks."
		]
	},
	"drilbur": {
		"pokemon_name": "drilbur",
		"dex_info": [
			"Drilbur digs through the ground at high speeds, creating tunnels that are often mistaken for subway systems.",
			"It can dig through the ground in a spiral pattern, creating complex tunnel systems in a matter of hours.",
			"It drills through the earth at lightning speed, creating tunnels that connect entire underground networks."
		]
	},
	"excadrill": {
		"pokemon_name": "excadrill",
		"dex_info": [
			"Excadrill can dig through the ground with such force that it can easily tunnel through steel plates.",
			"Its drills are strong enough to pierce through iron plates. It can burrow at speeds that rival a jet plane.",
			"It digs through the ground at incredible speeds, using its steel-tipped drills to smash through any obstacle."
		]
	},
	"audino": {
		"pokemon_name": "audino",
		"dex_info": [
			"Audino can hear the heartbeats of others, using this ability to gauge their emotions and health.",
			"It is known for its healing abilities, which it performs by listening to the pulse and vibrations of others.",
			"Its sensitive hearing allows it to detect changes in heartbeats and emotions, making it a great healer."
		]
	},
	"timburr": {
		"pokemon_name": "timburr",
		"dex_info": [
			"Timburr carries wooden beams as a sign of its strength. It shows off its muscles by lifting heavy objects.",
			"It uses the beam it carries as a weapon. It’s constantly training to make its muscles stronger.",
			"Carrying a wooden beam is a sign of its strength. It often uses the beam to hone its fighting skills."
		]
	},
	"gurdurr": {
		"pokemon_name": "gurdurr",
		"dex_info": [
			"Gurdurr has been known to carry steel beams to showcase its strength. It is so strong, it can easily lift a massive beam with one hand.",
			"It is often seen carrying steel beams to demonstrate its might. Its muscles are said to be as hard as steel.",
			"It shows off its muscles by carrying heavy steel beams. It uses the beams to train and grow even stronger."
		]
	},
	"conkeldurr": {
		"pokemon_name": "conkeldurr",
		"dex_info": [
			"Conkeldurr uses pillars as weapons, swinging them with ease despite their weight. It is said that it taught humans how to make concrete.",
			"It is known for its immense strength, using concrete pillars in battle. It can crush a boulder with one blow.",
			"This Pokémon is so strong, it can easily lift and swing concrete pillars that weigh several tons."
		]
	},
	"tympole": {
		"pokemon_name": "tympole",
		"dex_info": [
			"Tympole vibrates its cheeks to create sound waves that communicate with others. It uses this ability to warn others of danger.",
			"It emits sound waves through its cheeks to communicate with its kin. These waves can be heard over long distances.",
			"It uses the vibrations of its cheeks to communicate with others. The sound waves it emits can travel through water."
		]
	},
	"palpitoad": {
		"pokemon_name": "palpitoad",
		"dex_info": [
			"Palpitoad lives in muddy waters, vibrating the bumps on its body to create waves that paralyze its prey.",
			"It uses the bumps on its body to send sound waves that can paralyze its prey. It lives in muddy areas near water.",
			"The bumps on its body can produce waves that cause paralysis. It lives in marshes and swamps."
		]
	},
	"seismitoad": {
		"pokemon_name": "seismitoad",
		"dex_info": [
			"Seismitoad's powerful vibrations can shake the ground and topple buildings. It uses these vibrations to incapacitate its prey.",
			"The vibrations it generates can cause earthquakes. It uses its powerful limbs to pummel its foes.",
			"It creates powerful vibrations through its body, which can be felt for miles. These vibrations can knock out opponents."
		]
	},
	"throh": {
		"pokemon_name": "throh",
		"dex_info": [
			"Throh always wears a gi and practices martial arts with dedication. It throws its opponents with great skill.",
			"It is known for its throwing techniques, which it practices relentlessly. It never removes its gi.",
			"This Pokémon is known for its martial arts prowess, using its powerful throws to defeat opponents."
		]
	},
	"sawk": {
		"pokemon_name": "sawk",
		"dex_info": [
			"Sawk trains in the mountains, perfecting its karate chops. Its kicks are powerful enough to split concrete.",
			"It sharpens its skills by training alone in the mountains. Its powerful strikes can break through stone.",
			"This Pokémon practices karate tirelessly, delivering powerful chops that can shatter boulders."
		]
	},
	"sewaddle": {
		"pokemon_name": "sewaddle",
		"dex_info": [
			"Sewaddle uses leaves to create clothes for itself, cutting them with its sharp mouth.",
			"It spins threads from its mouth to sew together leaves, creating a leafy outfit for itself.",
			"It makes its own clothes out of leaves by using silk it produces from its mouth. It is very meticulous about its appearance."
		]
	},
	"swadloon": {
		"pokemon_name": "swadloon",
		"dex_info": [
			"Swadloon hides in a cloak of leaves to protect itself from cold and rain. It is known to be quite gloomy.",
			"It creates a leafy cloak to keep warm and dry. It spends most of its time huddled in its leafy cover.",
			"This Pokémon is always wrapped in leaves, which protect it from harsh weather. It is often seen huddled in its cloak."
		]
	},
	"leavanny": {
		"pokemon_name": "leavanny",
		"dex_info": [
			"Leavanny is known for its nurturing nature, using leaves to create clothing for small Pokémon.",
			"It weaves together leaves to create garments for Pokémon. It is very caring and protective.",
			"This Pokémon uses its sharp blades to cut leaves, which it then weaves into clothing for other Pokémon."
		]
	},
	"venipede": {
		"pokemon_name": "venipede",
		"dex_info": [
			"Venipede is highly aggressive, using its feelers to sense its prey and then delivering a potent toxin.",
			"It can sense its surroundings with its feelers, and it attacks with a venomous bite when it detects danger.",
			"This Pokémon uses its sharp feelers to detect prey, and its bite delivers a powerful poison."
		]
	},
	"whirlipede": {
		"pokemon_name": "whirlipede",
		"dex_info": [
			"Whirlipede is encased in a hard shell that protects it as it spins rapidly to attack.",
			"It spins its body like a wheel to smash into foes. Its hard shell is nearly impenetrable.",
			"This Pokémon can roll into a ball and spin rapidly, using its hard shell to ram into opponents."
		]
	},
	"scolipede": {
		"pokemon_name": "scolipede",
		"dex_info": [
			"Scolipede charges at its enemies with incredible speed, delivering powerful attacks with its horns and tail.",
			"It is known for its lightning-fast speed and powerful strikes. It uses its horns to poison and disable its prey.",
			"This Pokémon is relentless in battle, using its speed and strength to overwhelm opponents."
		]
	},
	"cottonee": {
		"pokemon_name": "cottonee",
		"dex_info": [
			"Cottonee drifts on the wind, using its cottony body to float away when it feels threatened.",
			"It uses the wind to move from place to place, spreading its cotton-like seeds as it drifts.",
			"When threatened, it fluffs up its cotton and rides the wind to escape from predators."
		]
	},
	"whimsicott": {
		"pokemon_name": "whimsicott",
		"dex_info": [
			"Whimsicott is a mischievous Pokémon, sneaking into homes and causing trouble by scattering cotton everywhere.",
			"It slips through cracks and openings to enter houses, where it plays pranks and leaves a trail of cotton.",
			"This Pokémon is known for its playful nature, often sneaking into homes and causing mischief."
		]
	},
	"petilil": {
		"pokemon_name": "petilil",
		"dex_info": [
			"Petilil is known for its medicinal leaves, which are often used in traditional remedies.",
			"The leaves on its head have a bitter taste but are known to have healing properties.",
			"Its leaves are said to be full of nutrients, and people use them to make herbal medicine."
		]
	},
	"lilligant": {
		"pokemon_name": "lilligant",
		"dex_info": [
			"Lilligant is admired for its beautiful flower, which requires meticulous care to bloom.",
			"It is said that even a novice gardener can coax a Lilligant into blooming if they care for it properly.",
			"This Pokémon is known for its elegant flower, which is difficult to cultivate but blooms beautifully with care."
		]
	},
	"basculin": {
		"pokemon_name": "basculin",
		"dex_info": [
			"Basculin is highly territorial, often engaging in fierce battles with others of its kind.",
			"It is known for its aggressive nature, constantly fighting with others over territory.",
			"This Pokémon is very aggressive, attacking anything that enters its territory without hesitation."
		]
	},
	"sandile": {
		"pokemon_name": "sandile",
		"dex_info": [
			"Sandile burrows in the sand to avoid the heat of the desert sun, lying in wait for prey.",
			"It hides in the sand to avoid the sun and waits patiently for its prey to come close.",
			"This Pokémon burrows into the sand to keep cool and ambushes prey from below."
		]
	},
	"krokorok": {
		"pokemon_name": "krokorok",
		"dex_info": [
			"Krokorok can see clearly in the dark, allowing it to stalk prey even at night.",
			"It has excellent night vision and uses the cover of darkness to hunt its prey.",
			"This Pokémon’s eyes are adapted for seeing in the dark, making it a formidable hunter at night."
		]
	},
	"krookodile": {
		"pokemon_name": "krookodile",
		"dex_info": [
			"Krookodile is known for its powerful jaws, which can crush anything in its path.",
			"It has a reputation for being a ruthless predator, using its immense strength to overpower its foes.",
			"This Pokémon’s jaws are strong enough to crush the bones of its prey with ease."
		]
	},
	"darumaka": {
		"pokemon_name": "darumaka",
		"dex_info": [
			"Darumaka’s body temperature drops when it sleeps, allowing it to survive in harsh environments.",
			"It is known for its fiery nature, but when it sleeps, its body cools down and becomes calm.",
			"This Pokémon’s body temperature decreases when it is asleep, making it almost like a stone."
		]
	},
	"darmanitan": {
		"pokemon_name": "darmanitan",
		"dex_info": [
			"Darmanitan’s fiery spirit burns intensely, allowing it to overcome any challenge with sheer force.",
			"It is known for its explosive power, unleashing fierce attacks that leave its foes scorched.",
			"This Pokémon’s internal fire burns with such intensity that it can tackle any obstacle with brute force."
		]
	},
	"maractus": {
		"pokemon_name": "maractus",
		"dex_info": [
			"Maractus dances rhythmically, using the sound of its rattling spikes to deter predators.",
			"It performs a lively dance to scare away threats, shaking its body to produce a rattling sound.",
			"This Pokémon’s dance is both beautiful and intimidating, as the rattling of its spikes echoes through the desert."
		]
	},
	"dwebble": {
		"pokemon_name": "dwebble",
		"dex_info": [
			"Dwebble uses its sharp claws to carve out a piece of rock to make its home, living inside the hollowed-out stone.",
			"It carves out its nest from rocks using its claws, carefully selecting the perfect stone to inhabit.",
			"This Pokémon uses its claws to hollow out rocks and create a home, which it carries on its back."
		]
	},
	"crustle": {
		"pokemon_name": "crustle",
		"dex_info": [
			"Crustle’s shell is incredibly strong, allowing it to carry even large boulders without effort.",
			"It carries its massive shell on its back, and it uses the boulder as both a shield and a weapon.",
			"This Pokémon is known for its immense strength, easily lifting and carrying large rocks on its back."
		]
	},
	"scraggy": {
		"pokemon_name": "scraggy",
		"dex_info": [
			"Scraggy is known for its tough skin, which it uses as both armor and a weapon during battles.",
			"It uses the loose skin around its body as a shield, pulling it up to block attacks from foes.",
			"This Pokémon’s tough skin is both a shield and a weapon, allowing it to defend itself and counterattack."
		]
	},
	"scrafty": {
		"pokemon_name": "scrafty",
		"dex_info": [
			"Scrafty leads a group of its kind, and it is known for its powerful kicks and headbutts in battle.",
			"It is highly territorial and will fight anyone who enters its turf, using its impressive physical strength.",
			"This Pokémon is the leader of a group and is known for its fierce fighting style, using headbutts and kicks to take down opponents."
		]
	},
	"sigilyph": {
		"pokemon_name": "sigilyph",
		"dex_info": [
			"Sigilyph is said to be the guardian of an ancient city, using its psychic powers to protect the ruins.",
			"It flies along the same path it has flown for thousands of years, guarding an ancient city from intruders.",
			"This Pokémon has been guarding the same ancient city for centuries, using its psychic abilities to ward off trespassers."
		]
	},
		"yamask": {
		"pokemon_name": "yamask",
		"dex_info": [
			"Yamask carries a mask that used to be its face when it was human. It looks at the mask and cries.",
			"This Pokémon retains memories of its previous life as a human, lamenting its fate as it gazes at its mask.",
			"It wanders the ruins, mourning its lost identity, clutching the mask that was once its human face."
		]
	},
	"cofagrigus": {
		"pokemon_name": "cofagrigus",
		"dex_info": [
			"Cofagrigus lures grave robbers with its golden body and then traps them inside, turning them into mummies.",
			"It has a habit of eating gold coins, which leads it to swallow anything shiny that it mistakes for treasure.",
			"People who approach Cofagrigus are swallowed and turned into mummies. It is feared as a guardian of tombs."
		]
	},
	"tirtouga": {
		"pokemon_name": "tirtouga",
		"dex_info": [
			"Tirtouga lived in the sea long ago, and it could swim faster than a jet ski. It was revived from a fossil.",
			"It is believed to have lived in the oceans over 100 million years ago. It has strong flippers that allow it to swim fast.",
			"This ancient Pokémon was said to have swum the seas with great agility, hunting prey with powerful jaws."
		]
	},
	"carracosta": {
		"pokemon_name": "carracosta",
		"dex_info": [
			"Carracosta's jaws can pulverize even the hardest of rocks and bones. It was a fearsome predator long ago.",
			"It is said that it returned to the sea after years of living on land. It uses its powerful jaws to crush its prey.",
			"With jaws that can crush steel, Carracosta was a dominant predator in the ancient seas."
		]
	},
	"archen": {
		"pokemon_name": "archen",
		"dex_info": [
			"Archen is believed to be the ancestor of all bird Pokémon. It is said to have been unable to fly.",
			"This Pokémon could not fly well, so it ran along the ground, hunting prey with its sharp claws.",
			"It was revived from a fossil. Its inability to fly led it to adapt to running along the ground at high speeds."
		]
	},
	"archeops": {
		"pokemon_name": "archeops",
		"dex_info": [
			"Archeops is a skilled hunter that can outrun most prey. It uses its sharp claws to catch and consume its targets.",
			"It is thought to be the ancestor of all bird Pokémon. Despite its flight abilities, it prefers to run.",
			"This ancient Pokémon was known for its speed and agility, using its claws and beak to capture prey."
		]
	},
	"trubbish": {
		"pokemon_name": "trubbish",
		"dex_info": [
			"Trubbish was born from a bag of garbage exposed to toxic waste. It emits a foul stench.",
			"The stench it gives off makes people feel nauseous. The smell gets worse the longer it lives.",
			"This Pokémon’s body is made of garbage. It’s known to release toxins that cause headaches and nausea."
		]
	},
	"garbodor": {
		"pokemon_name": "garbodor",
		"dex_info": [
			"Garbodor can spray toxic gas and sludge from its fingers, attacking foes with poison.",
			"It grows by absorbing garbage. It releases toxic gases that cause a terrible stench.",
			"This Pokémon eats trash and converts it into poison gas and sludge, which it then uses in battle."
		]
	},
	"zorua": {
		"pokemon_name": "zorua",
		"dex_info": [
			"Zorua disguises itself as other Pokémon or even humans to escape danger and protect itself.",
			"It changes its appearance using illusions to trick enemies and hide from predators.",
			"This tricky Pokémon uses its illusions to escape from threats, often transforming into a child or another Pokémon."
		]
	},
	"zoroark": {
		"pokemon_name": "zoroark",
		"dex_info": [
			"Zoroark creates illusions that are nearly indistinguishable from reality, using them to protect its pack.",
			"It can create illusions that are powerful enough to fool large groups of people or Pokémon at once.",
			"This Pokémon is known for its ability to create incredibly lifelike illusions, often using them to protect its young."
		]
	},
	"minccino": {
		"pokemon_name": "minccino",
		"dex_info": [
			"Minccino is known for its obsession with cleanliness. It uses its tail like a brush to sweep up dirt.",
			"It constantly grooms itself to stay clean. It also loves to help others tidy up their homes.",
			"This Pokémon uses its tail to dust off dirt and clean its environment. It dislikes being dirty."
		]
	},
	"cinccino": {
		"pokemon_name": "cinccino",
		"dex_info": [
			"Cinccino’s fur is coated with a special oil that makes it smooth and resistant to dirt.",
			"It is known for its stylish fur, which is kept clean and glossy by the special oil that covers its body.",
			"This Pokémon’s fur is always kept immaculate, and it uses its tail to clean its surroundings."
		]
	},
	"gothita": {
		"pokemon_name": "gothita",
		"dex_info": [
			"Gothita is always staring at something, as if it is deep in thought. It is said to see something that others cannot.",
			"It is constantly fixated on something only it can see. It spends its time lost in thought.",
			"This Pokémon seems to be studying something, though no one knows what it sees or why it is so focused."
		]
	},
	"gothorita": {
		"pokemon_name": "gothorita",
		"dex_info": [
			"Gothorita can manipulate others with its hypnotic powers, often leading people to get lost in the forest.",
			"It uses starlight to power its psychic abilities, which it uses to control and influence others.",
			"This Pokémon is known to lead others astray with its psychic powers, guiding them deep into the forest."
		]
	},
	"gothitelle": {
		"pokemon_name": "gothitelle",
		"dex_info": [
			"Gothitelle can see the future by gazing at the stars. It can predict the lifespan of its Trainer.",
			"It is said to see the future by looking at the positions of the stars. This Pokémon is known for its eerie predictions.",
			"This Pokémon’s psychic power is so strong that it can see into the future, often predicting the fate of those around it."
		]
	},
	"solosis": {
		"pokemon_name": "solosis",
		"dex_info": [
			"Solosis is encased in a special fluid that protects it from harsh environments and allows it to float.",
			"It communicates with others using telepathy. Its body is surrounded by a membrane that protects it from any harm.",
			"This Pokémon’s body is covered in a protective membrane, allowing it to survive in even the harshest conditions."
		]
	},
	"duosion": {
		"pokemon_name": "duosion",
		"dex_info": [
			"Duosion has two brains, which sometimes conflict with each other, making it difficult to make decisions.",
			"It uses its psychic powers to move around. However, its two brains sometimes cause it to be uncoordinated.",
			"This Pokémon has two brains that often disagree, leading to erratic behavior and decision-making."
		]
	},
	"reuniclus": {
		"pokemon_name": "reuniclus",
		"dex_info": [
			"Reuniclus controls its powerful arms using its psychic abilities, crushing anything that gets in its way.",
			"It uses its strong psychic powers to manipulate its arms, which it uses to attack and defend itself.",
			"This Pokémon’s arms are incredibly powerful, and it uses them to crush opponents while protecting itself with psychic energy."
		]
	},
	"ducklett": {
		"pokemon_name": "ducklett",
		"dex_info": [
			"Ducklett lives on water, using its soft feathers to stay afloat. It often dives underwater to search for food.",
			"It’s known for its carefree nature, often seen happily splashing in ponds and lakes.",
			"This Pokémon enjoys swimming and diving, spending most of its time playing in the water."
		]
	},
	"swanna": {
		"pokemon_name": "swanna",
		"dex_info": [
			"Swanna is an elegant flier, often leading a flock with graceful, synchronized movements.",
			"It’s known for its beautiful and powerful wings, which it uses to dance gracefully while flying.",
			"This Pokémon is admired for its elegance in the air, often leading its flock with perfect synchrony."
		]
	},
	"vanillite": {
		"pokemon_name": "vanillite",
		"dex_info": [
			"Vanillite creates snow crystals by exhaling cold air. It grows larger as it absorbs moisture from the atmosphere.",
			"It cools the surrounding air by exhaling cold breath, creating snow crystals that it collects on its body.",
			"This Pokémon lives in snowy regions, where it creates ice crystals by chilling the air with its breath."
		]
	},
	"vanillish": {
		"pokemon_name": "vanillish",
		"dex_info": [
			"Vanillish can harden its icy body and freeze anything it touches. It creates blizzards to protect itself.",
			"It uses its icy breath to create strong blizzards, which it uses to protect itself from predators.",
			"This Pokémon is known for its ability to freeze the air around it, creating powerful blizzards in seconds."
		]
	},
	"vanilluxe": {
		"pokemon_name": "vanilluxe",
		"dex_info": [
			"Vanilluxe can unleash powerful blizzards by cooling the moisture in the air. It creates snowstorms in an instant.",
			"It uses its two heads to generate freezing winds, capable of covering a whole mountain in snow.",
			"This Pokémon releases freezing winds from both heads, creating a snowstorm that can blanket entire regions."
		]
	},
	"deerling": {
		"pokemon_name": "deerling",
		"dex_info": [
			"Deerling changes the color of its fur with the seasons, blending in with the environment to avoid predators.",
			"Its fur changes color with the seasons, allowing it to camouflage itself in the forest throughout the year.",
			"This Pokémon’s fur adapts to the changing seasons, helping it stay hidden from predators in its environment."
		]
	},
	"sawsbuck": {
		"pokemon_name": "sawsbuck",
		"dex_info": [
			"Sawsbuck's appearance changes with the seasons, with its antlers growing larger and more ornate in the spring.",
			"Its antlers change shape with the seasons, becoming more elaborate in the spring and summer.",
			"This Pokémon’s appearance shifts with the seasons, and it’s known for the majestic antlers that bloom in spring."
		]
	},
	"emolga": {
		"pokemon_name": "emolga",
		"dex_info": [
			"Emolga glides using the electricity stored in its cheek pouches, attacking foes with lightning speed.",
			"It generates electricity in its cheek pouches, which it uses to shock opponents as it glides through the air.",
			"This Pokémon uses its electricity to glide swiftly between trees, zapping its foes with electric shocks."
		]
	},
	"karrablast": {
		"pokemon_name": "karrablast",
		"dex_info": [
			"Karrablast can spit acidic fluid to dissolve its foes' shells. It often battles Shelmet, seeking to evolve.",
			"It sprays acid to melt away the armor of its enemies, especially its rival, Shelmet.",
			"This Pokémon attacks with acid, which dissolves the armor of its opponents, leaving them defenseless."
		]
	},
	"escavalier": {
		"pokemon_name": "escavalier",
		"dex_info": [
			"Escavalier charges at its opponents with incredible speed, using the lances on its body as powerful weapons.",
			"It is a relentless warrior, using its twin lances to attack foes with blinding speed.",
			"This Pokémon is known for its armored body and its ability to charge at enemies with lightning speed."
		]
	},
	"foongus": {
		"pokemon_name": "foongus",
		"dex_info": [
			"Foongus disguises itself as a Poké Ball to lure in prey, releasing spores to incapacitate them.",
			"It often hides among Poké Balls, releasing toxic spores when touched.",
			"This Pokémon uses its Poké Ball-like appearance to trick Pokémon and humans, spraying spores when threatened."
		]
	},
	"amoonguss": {
		"pokemon_name": "amoonguss",
		"dex_info": [
			"Amoonguss uses its Poké Ball-like appearance to lure in prey, then releases spores to paralyze them.",
			"Its spores are so potent that they can immobilize a large Pokémon instantly.",
			"This Pokémon spreads toxic spores around itself, incapacitating foes and making them easy to capture."
		]
	},
	"frillish": {
		"pokemon_name": "frillish",
		"dex_info": [
			"Frillish paralyzes its prey with poison, then drags it down to the ocean depths, where it lives.",
			"It lives in deep oceans, using its poisonous tentacles to paralyze and capture its prey.",
			"This Pokémon is known for dragging its prey deep into the ocean, paralyzing them with its toxic touch."
		]
	},
	"jellicent": {
		"pokemon_name": "jellicent",
		"dex_info": [
			"Jellicent is said to cause ships to sink, dragging their crews to the bottom of the sea with it.",
			"It is feared by sailors, as it’s said to sink ships with its powerful tentacles.",
			"This Pokémon is known for its eerie presence in the deep sea, where it drags ships and their crews to a watery grave."
		]
	},
	"alomomola": {
		"pokemon_name": "alomomola",
		"dex_info": [
			"Alomomola heals the wounds of injured Pokémon by wrapping them in its soft, veiled arms.",
			"It is known for its caring nature, using its arms to embrace and heal injured Pokémon.",
			"This Pokémon is often seen tending to the wounds of others, wrapping them gently in its veiled arms."
		]
	},
	"joltik": {
		"pokemon_name": "joltik",
		"dex_info": [
			"Joltik attaches itself to larger Pokémon and absorbs static electricity, using it as a source of energy.",
			"It clings to other Pokémon to feed on their static electricity, which it stores in its body for attacks.",
			"This tiny Pokémon relies on static electricity for energy, attaching itself to larger Pokémon to siphon off power."
		]
	},
	"galvantula": {
		"pokemon_name": "galvantula",
		"dex_info": [
			"Galvantula attacks its prey by trapping them in electric webs, then paralyzing them with a powerful shock.",
			"It spins electrically charged threads to create webs that trap and paralyze its foes.",
			"This Pokémon uses electrically charged silk to create webs that shock and incapacitate its prey."
		]
	},
	"ferroseed": {
		"pokemon_name": "ferroseed",
		"dex_info": [
			"Ferroseed defends itself by shooting spikes from its body, embedding them in its foes.",
			"It uses the spikes on its body to ward off predators, launching them like projectiles when threatened.",
			"This Pokémon is covered in hard spikes that it can shoot out to fend off attackers."
		]
	},
	"ferrothorn": {
		"pokemon_name": "ferrothorn",
		"dex_info": [
			"Ferrothorn swings its spiked arms to smash opponents and protect itself from harm.",
			"It uses its heavy, spiked arms to strike its enemies with incredible force.",
			"This Pokémon is known for its powerful, spiked arms, which it uses to smash anything that gets in its way."
		]
	},
	"klink": {
		"pokemon_name": "klink",
		"dex_info": [
			"Klink’s gears rotate to generate energy. It communicates with others by spinning its gears in different directions.",
			"It generates energy by rotating its gears, and it communicates by clinking its gears together.",
			"This Pokémon’s gears spin constantly, creating energy that it uses to power its attacks."
		]
	},
	"klang": {
		"pokemon_name": "klang",
		"dex_info": [
			"Klang’s gears spin faster when it is preparing for battle, generating more energy for its attacks.",
			"It spins its gears rapidly to build up energy, which it then unleashes in powerful electric attacks.",
			"This Pokémon increases its power by spinning its gears at high speeds, preparing itself for battle."
		]
	},
	"klinklang": {
		"pokemon_name": "klinklang",
		"dex_info": [
			"Klinklang’s gears are fully synchronized, allowing it to unleash devastating attacks with precision.",
			"Its gears are perfectly synchronized, giving it the ability to release powerful energy blasts.",
			"This Pokémon’s synchronized gears allow it to perform precise and powerful attacks."
		]
	},
	"tynamo": {
		"pokemon_name": "tynamo",
		"dex_info": [
			"Tynamo swims by generating electricity, which it uses to propel itself through the water.",
			"It generates an electrical charge that allows it to swim with speed and agility.",
			"This Pokémon uses electricity to move through the water, zapping anything that gets too close."
		]
	},
	"eelektrik": {
		"pokemon_name": "eelektrik",
		"dex_info": [
			"Eelektrik clamps down on its prey with its powerful jaws, delivering a high-voltage shock.",
			"It wraps around its prey and delivers a powerful electric shock to incapacitate it.",
			"This Pokémon captures its prey with its jaws, then shocks it into submission with a high-voltage jolt."
		]
	},
	"eelektross": {
		"pokemon_name": "eelektross",
		"dex_info": [
			"Eelektross uses its sucker-like mouth to latch onto prey, then shocks them with a powerful current.",
			"It can crawl out of the ocean using its arms, and it shocks prey by clamping onto them with its mouth.",
			"This Pokémon uses its arms to crawl onto land, where it hunts prey by shocking them with electricity."
		]
	},
	"elgyem": {
		"pokemon_name": "elgyem",
		"dex_info": [
			"Elgyem’s origins are unknown, but it is said to have come from space. It uses its psychic powers to manipulate others.",
			"It is rumored to have come from outer space, and it uses its psychic abilities to communicate with others.",
			"This Pokémon’s mysterious origins have led to speculation that it is not of this world. It uses psychic energy to move objects."
		]
	},
	"beheeyem": {
		"pokemon_name": "beheeyem",
		"dex_info": [
			"Beheeyem uses its psychic powers to control others, often making them forget entire days.",
			"It is said to manipulate its foes’ memories, erasing entire days from their minds.",
			"This Pokémon’s psychic abilities are so strong that it can control others and alter their memories."
		]
	},
	"litwick": {
		"pokemon_name": "litwick",
		"dex_info": [
			"Litwick guides people and Pokémon to the afterlife by absorbing their life energy and converting it into flames.",
			"It uses its flame to draw in others, then drains their life force to fuel its own fire.",
			"This Pokémon’s flame absorbs the life energy of those it lures, guiding them to the spirit world."
		]
	},
	"lampent": {
		"pokemon_name": "lampent",
		"dex_info": [
			"Lampent appears near the beds of the dying, waiting for their souls to pass on. It then absorbs the souls to fuel its flame.",
			"It wanders through cities, waiting for the moment when someone dies so it can absorb their spirit.",
			"This Pokémon’s eerie flame burns by feeding on the souls of the departed, often appearing near the dying."
		]
	},
	"chandelure": {
		"pokemon_name": "chandelure",
		"dex_info": [
			"Chandelure’s flames burn with the souls of its victims. It is said that being near it can drain one’s will to live.",
			"It burns with a ghostly flame, consuming the spirits of those it encounters.",
			"This Pokémon’s flame is fueled by the souls it traps, leaving its victims as empty, wandering husks."
		]
	},
	"axew": {
		"pokemon_name": "axew",
		"dex_info": [
			"Axew uses its tusks to crush berries and mark territory. The tusks grow back if they fall out.",
			"Its tusks are strong enough to break through boulders, and they regrow quickly if damaged.",
			"This Pokémon marks its territory by scarring trees with its tusks, which are capable of crushing rock."
		]
	},
	"fraxure": {
		"pokemon_name": "fraxure",
		"dex_info": [
			"Fraxure sharpens its tusks on river rocks, using them to fend off any threats to its territory.",
			"It lives alone in its territory, where it uses its tusks to battle foes and break apart obstacles.",
			"This Pokémon’s tusks are powerful weapons that it sharpens by gnawing on river stones."
		]
	},
	"haxorus": {
		"pokemon_name": "haxorus",
		"dex_info": [
			"Haxorus’s axe-like tusks are extremely durable, able to cut through steel beams with a single blow.",
			"It uses its powerful tusks to slash through obstacles and enemies alike, showing no mercy.",
			"This Pokémon’s tusks are its most powerful weapon, capable of cutting through even the hardest materials."
		]
	},
	"cubchoo": {
		"pokemon_name": "cubchoo",
		"dex_info": [
			"Cubchoo’s runny nose is a sign of its health. It uses the mucus to attack enemies with freezing energy.",
			"It is always seen with a runny nose. When it sneezes, it launches a powerful icy blast.",
			"This Pokémon uses the mucus from its nose to create icy attacks, freezing anything that gets too close."
		]
	},
	"beartic": {
		"pokemon_name": "beartic",
		"dex_info": [
			"Beartic can freeze its own breath, forming fangs of ice that it uses to crush its foes.",
			"It lives in cold regions, where it forms icicles with its breath to use as weapons.",
			"This Pokémon is known for its icy breath, which it can freeze into sharp fangs for attacking enemies."
		]
	},
	"cryogonal": {
		"pokemon_name": "cryogonal",
		"dex_info": [
			"Cryogonal appears during snowstorms, using its chains of ice to capture prey and freeze them solid.",
			"It can freeze moisture in the air into ice chains, which it uses to bind and immobilize its opponents.",
			"This Pokémon creates ice chains from the surrounding air, trapping its foes and freezing them instantly."
		]
	},
	"shelmet": {
		"pokemon_name": "shelmet",
		"dex_info": [
			"Shelmet closes its shell to protect itself from attacks, then sprays a sticky liquid to immobilize its foes.",
			"It hides inside its shell to avoid danger, and it spits out a sticky substance to ensnare attackers.",
			"This Pokémon uses its shell as a shield, closing it tightly to ward off enemies while spitting out sticky goo."
		]
	},
	"accelgor": {
		"pokemon_name": "accelgor",
		"dex_info": [
			"Accelgor’s speed is unmatched, allowing it to zip through battlefields and strike opponents before they can react.",
			"It sheds its shell to become lighter and faster, moving with blinding speed.",
			"This Pokémon’s agility is its greatest weapon, using its speed to outmaneuver and strike down foes."
		]
	},
	"stunfisk": {
		"pokemon_name": "stunfisk",
		"dex_info": [
			"Stunfisk lies in wait in the mud, shocking anything that steps on it with powerful electric jolts.",
			"It hides in the mud, waiting to zap unsuspecting prey with electricity.",
			"This Pokémon lies flat in the mud, blending in until it can deliver a powerful electric shock to anything that steps on it."
		]
	},
	"mienfoo": {
		"pokemon_name": "mienfoo",
		"dex_info": [
			"Mienfoo is a master of martial arts, using its quick, precise movements to overwhelm opponents.",
			"It attacks with a flurry of rapid strikes, using its speed and agility to defeat its foes.",
			"This Pokémon practices martial arts, striking with speed and precision that leaves enemies no chance to counterattack."
		]
	},
	"mienshao": {
		"pokemon_name": "mienshao",
		"dex_info": [
			"Mienshao uses the fur on its arms as whips, delivering devastating blows to its opponents.",
			"It attacks with long, whip-like arms, striking from a distance with powerful blows.",
			"This Pokémon’s arms are covered in fur that it uses as whips, delivering fast and powerful strikes to its enemies."
		]
	},
	"druddigon": {
		"pokemon_name": "druddigon",
		"dex_info": [
			"Druddigon’s rough, rock-like skin protects it from harm. It hunts by chasing its prey through narrow caves.",
			"It dwells in caves, where its tough skin and powerful claws make it a fearsome predator.",
			"This Pokémon’s rocky hide is nearly impenetrable, allowing it to dominate its territory deep within caves."
		]
	},
	"golett": {
		"pokemon_name": "golett",
		"dex_info": [
			"Golett was created by an ancient civilization to protect people and Pokémon. It is powered by a mysterious energy.",
			"It is said to have been constructed in ancient times to guard a long-lost city.",
			"This Pokémon is powered by an unknown energy, which allows it to function even after centuries."
		]
	},
	"golurk": {
		"pokemon_name": "golurk",
		"dex_info": [
			"Golurk was built to protect humans and Pokémon alike. It is said to have a sealed energy source within it.",
			"It flies across the sky at high speeds, protecting those in need with its incredible strength.",
			"This Pokémon’s power comes from a mysterious energy that has been sealed within its body for centuries."
		]
	},
	"pawniard": {
		"pokemon_name": "pawniard",
		"dex_info": [
			"Pawniard sharpens its blades by scraping them against rocks. It is always ready to fight.",
			"It lives in packs, attacking enemies with its sharp blades. It never hesitates to strike.",
			"This Pokémon’s body is covered in blades, which it sharpens constantly in preparation for battle."
		]
	},
	"bisharp": {
		"pokemon_name": "bisharp",
		"dex_info": [
			"Bisharp leads a group of Pawniard, commanding them to fight with ruthless efficiency.",
			"It uses its sharp blades to cut down opponents, showing no mercy in battle.",
			"This Pokémon is a ruthless leader, directing its pack of Pawniard to strike down foes with precision."
		]
	},
	"bouffalant": {
		"pokemon_name": "bouffalant",
		"dex_info": [
			"Bouffalant charges at enemies with its massive horns, smashing through anything in its path.",
			"Its head is incredibly hard, and it charges with enough force to demolish a house.",
			"This Pokémon uses its powerful horns to ram through obstacles, leaving a trail of destruction in its wake."
		]
	},
	"rufflet": {
		"pokemon_name": "rufflet",
		"dex_info": [
			"Rufflet is brave and reckless, always charging into battle without hesitation.",
			"It will challenge any opponent, no matter how strong, relying on its courage to see it through.",
			"This Pokémon’s bravery knows no bounds, and it will take on foes much larger than itself without fear."
		]
	},
	"braviary": {
		"pokemon_name": "braviary",
		"dex_info": [
			"Braviary is a symbol of bravery, known for its fighting spirit and never backing down from a challenge.",
			"It fights with great courage, often taking on foes much larger than itself.",
			"This Pokémon is revered for its bravery, facing any challenge head-on with unwavering resolve."
		]
	},
	"vullaby": {
		"pokemon_name": "vullaby",
		"dex_info": [
			"Vullaby’s bones act as a form of armor, protecting it from attacks. It often scavenges for food.",
			"It uses bones as a shield, wearing them as protection while it searches for food.",
			"This Pokémon wears bones as armor, giving it a rugged appearance that helps protect it from predators."
		]
	},
	"mandibuzz": {
		"pokemon_name": "mandibuzz",
		"dex_info": [
			"Mandibuzz circles the skies in search of prey, using its sharp beak and claws to tear apart its catch.",
			"It swoops down from the sky to snatch prey with its powerful talons.",
			"This Pokémon is a formidable hunter, using its keen eyesight and powerful beak to capture and consume prey."
		]
	},
	"heatmor": {
		"pokemon_name": "heatmor",
		"dex_info": [
			"Heatmor uses its long tongue to lick up its prey, burning them with the heat it generates internally.",
			"It feeds on Durant by melting through their steel bodies with its fiery breath.",
			"This Pokémon’s internal heat burns with intensity, allowing it to melt through metal and consume its prey."
		]
	},
	"durant": {
		"pokemon_name": "durant",
		"dex_info": [
			"Durant works together in a colony, using its sharp mandibles to cut through obstacles.",
			"It is known for its teamwork, with each Durant playing a role in building and defending the nest.",
			"This Pokémon’s sharp mandibles are its primary weapon, used to protect the colony and cut through tough materials."
		]
	},
	"deino": {
		"pokemon_name": "deino",
		"dex_info": [
			"Deino is blind and uses its entire body to tackle and bite at anything in its path.",
			"It charges at anything that moves, using its head to bash through obstacles.",
			"This Pokémon is known for its aggressive nature, attacking anything that comes near it with ferocity."
		]
	},
	"zweilous": {
		"pokemon_name": "zweilous",
		"dex_info": [
			"Zweilous’s two heads are always fighting with each other, often competing for food.",
			"It has two heads that are constantly at odds, biting and snapping at each other as they battle for dominance.",
			"This Pokémon’s two heads rarely get along, and their constant fighting can lead to chaotic behavior."
		]
	},
	"hydreigon": {
		"pokemon_name": "hydreigon",
		"dex_info": [
			"Hydreigon is a ruthless predator, attacking anything that moves with its three heads.",
			"It is known for its destructive nature, laying waste to everything in its path as it seeks out prey.",
			"This Pokémon’s three heads are a formidable force, and it uses them to overwhelm and destroy its enemies."
		]
	},
	"larvesta": {
		"pokemon_name": "larvesta",
		"dex_info": [
			"Larvesta lives in volcanic areas, using its fiery body to fend off predators.",
			"It is known for its fiery mane, which it uses to ward off enemies and protect itself.",
			"This Pokémon’s body is covered in flames, and it uses this heat to defend against attacks."
		]
	},
	"volcarona": {
		"pokemon_name": "volcarona",
		"dex_info": [
			"Volcarona’s flames are so intense that they can replace the sun when ash fills the sky.",
			"It is said that Volcarona’s fire can bring warmth to cold lands and light up darkened skies.",
			"This Pokémon’s fiery wings create heat waves that can scorch the land, driving away the cold."
		]
	},
	"cobalion": {
		"pokemon_name": "cobalion",
		"dex_info": [
			"Cobalion has a body and heart of steel, allowing it to remain calm and composed even in the most dangerous situations.",
			"It is known for its strong sense of justice, often stepping in to protect those who cannot protect themselves.",
			"This legendary Pokémon is said to have led a group of Pokémon against humans to defend the environment."
		]
	},
	"terrakion": {
		"pokemon_name": "terrakion",
		"dex_info": [
			"Terrakion’s immense strength allows it to destroy entire castles with a single charge.",
			"It is a powerful Pokémon that can crush through stone walls with its immense physical strength.",
			"This legendary Pokémon is known for its brute force, capable of demolishing any obstacle in its way."
		]
	},
	"virizion": {
		"pokemon_name": "virizion",
		"dex_info": [
			"Virizion is known for its swift movements and sharp horns, which it uses to cut through its foes.",
			"It moves gracefully and strikes with precision, using its horns to slash at enemies with ease.",
			"This legendary Pokémon is revered for its elegance in battle, using its speed and sharpness to overcome opponents."
		]
	},
	"tornadus": {
		"pokemon_name": "tornadus",
		"dex_info": [
			"Tornadus flies through the sky at high speeds, creating massive storms with its tailwinds.",
			"It is said that wherever Tornadus flies, it leaves a trail of destruction in the form of violent storms.",
			"This Pokémon is known for its power to control the winds, whipping up tornadoes and gales wherever it goes."
		]
	},
	"thundurus": {
		"pokemon_name": "thundurus",
		"dex_info": [
			"Thundurus can shoot powerful bolts of lightning from its tail, causing thunderclouds to form wherever it flies.",
			"It is known to bring thunderstorms wherever it goes, unleashing lightning strikes that can shatter the ground.",
			"This Pokémon generates intense electrical storms, using its tail to shoot lightning bolts at anything in its path."
		]
	},
	"reshiram": {
		"pokemon_name": "reshiram",
		"dex_info": [
			"Reshiram’s flames burn hotter than the surface of the sun, and it is said to burn away lies and falsehoods.",
			"It is known for its loyalty to truth, using its flames to cleanse the world of deceit.",
			"This legendary Pokémon’s flames are so intense that they can purify the world, burning away all lies."
		]
	},
	"zekrom": {
		"pokemon_name": "zekrom",
		"dex_info": [
			"Zekrom’s body is filled with powerful electricity, which it can unleash to bring its ideals to life.",
			"It is known to seek out those with strong ideals, helping them shape the world with its powerful energy.",
			"This legendary Pokémon’s electric power is said to be able to shape the world, bringing about change according to its ideals."
		]
	},
	"landorus": {
		"pokemon_name": "landorus",
		"dex_info": [
			"Landorus is said to bring fertility to the soil, making the land rich and abundant.",
			"It is known to travel the land, restoring fertility to barren areas with its powerful energy.",
			"This Pokémon is revered as a deity of the land, bringing prosperity and abundance wherever it goes."
		]
	},
	"kyurem": {
		"pokemon_name": "kyurem",
		"dex_info": [
			"Kyurem is said to be the remains of a dragon that lost its power, and it now seeks to regain its lost strength.",
			"It is known to reside in the coldest places, where it absorbs the energy of the ice and snow.",
			"This legendary Pokémon is said to be incomplete, constantly searching for the power to make itself whole again."
		]
	},
	"keldeo": {
		"pokemon_name": "keldeo",
		"dex_info": [
			"Keldeo trains by running across the water, honing its speed and agility to become a true swordmaster.",
			"It is known for its swift movements and powerful kicks, which it uses to fight with precision.",
			"This Pokémon’s mastery of water allows it to run across the surface of lakes and oceans, striking with lightning speed."
		]
	},
	"meloetta": {
		"pokemon_name": "meloetta",
		"dex_info": [
			"Meloetta’s songs are said to be able to control the emotions of those who hear them, bringing peace to troubled hearts.",
			"It is known for its beautiful voice, which can calm even the most savage of Pokémon.",
			"This Pokémon’s melodies are said to have the power to bring harmony to the world, soothing the souls of those who listen."
		]
	},
	"genesect": {
		"pokemon_name": "genesect",
		"dex_info": [
			"Genesect is a powerful ancient Pokémon that was modified by Team Plasma, equipped with a cannon on its back.",
			"It is said to be a fossil Pokémon that was revived and altered, giving it incredible firepower.",
			"This Pokémon’s origins are shrouded in mystery, with its powerful cannon capable of firing beams of energy that can pierce through anything."
		]
	},
		"chespin": {
		"pokemon_name": "chespin",
		"dex_info": [
			"Chespin’s tough shell defends it from attacks. Despite its prickly appearance, it’s known for its playful nature.",
			"It has a resilient shell that it uses to block attacks. Underneath its tough exterior, Chespin is quite friendly.",
			"This Pokémon’s shell is incredibly hard, giving it excellent protection from predators and allowing it to charge without fear."
		]
	},
	"quilladin": {
		"pokemon_name": "quilladin",
		"dex_info": [
			"Quilladin has a spiky, hard shell that it uses to repel attackers. It’s always eager to engage in play fighting.",
			"It bounces around energetically, using its hard shell to deflect blows during friendly tussles.",
			"This Pokémon’s armor-like shell is tough and durable, allowing it to withstand powerful hits and strike back with force."
		]
	},
	"chesnaught": {
		"pokemon_name": "chesnaught",
		"dex_info": [
			"Chesnaught’s protective armor is as tough as steel, making it almost invulnerable to attacks.",
			"It is known to protect its allies by taking on heavy blows with its sturdy shield, displaying unmatched bravery.",
			"This Pokémon uses its powerful arms and armor-like shell to defend itself and its companions, showing incredible strength and resilience."
		]
	},
	"fennekin": {
		"pokemon_name": "fennekin",
		"dex_info": [
			"Fennekin expels hot air from its ears to intimidate foes. It’s always munching on twigs as a snack.",
			"It generates heat from its ears to defend itself. It’s known to enjoy nibbling on twigs when it’s nervous.",
			"This Pokémon’s large ears radiate intense heat, which it uses to deter enemies and warm itself in cold weather."
		]
	},
	"braixen": {
		"pokemon_name": "braixen",
		"dex_info": [
			"Braixen keeps a stick in its tail, using it to perform fire-based attacks by igniting it with a flick of its tail.",
			"It’s known for its elegant moves in battle, using the stick in its tail as a wand to cast fiery spells.",
			"This Pokémon’s stick is its main weapon, which it uses to unleash fire attacks with precision and grace."
		]
	},
	"delphox": {
		"pokemon_name": "delphox",
		"dex_info": [
			"Delphox’s fiery wand can create firestorms that incinerate anything in its path. It is said to have prophetic powers.",
			"It is capable of seeing the future by gazing into the flames of its wand, which it uses to guide its actions.",
			"This Pokémon’s mastery of fire is unparalleled, allowing it to create and control infernos with a mere flick of its wand."
		]
	},
	"froakie": {
		"pokemon_name": "froakie",
		"dex_info": [
			"Froakie’s bubbles provide a layer of protection, allowing it to evade attacks and strike back with speed.",
			"It uses the bubbles on its chest as a shield, absorbing hits and bouncing back with agility.",
			"This Pokémon is quick and nimble, using the foam it creates to protect itself and confuse enemies in battle."
		]
	},
	"frogadier": {
		"pokemon_name": "frogadier",
		"dex_info": [
			"Frogadier is incredibly agile, able to scale walls and strike from above with precision.",
			"It moves with grace, using its surroundings to its advantage as it silently closes in on its target.",
			"This Pokémon’s speed and agility make it a formidable opponent, capable of striking swiftly and retreating before the enemy can react."
		]
	},
	"greninja": {
		"pokemon_name": "greninja",
		"dex_info": [
			"Greninja’s swift movements are hard to track, and it can create water shurikens that cut through anything.",
			"It is known for its stealth and speed, appearing and disappearing like a shadow as it defeats foes with water blades.",
			"This Pokémon is a master of stealth, using its water-based attacks to strike from the shadows and eliminate its enemies with precision."
		]
	},
	"bunnelby": {
		"pokemon_name": "bunnelby",
		"dex_info": [
			"Bunnelby uses its large ears like shovels, digging through the ground at a rapid pace to create tunnels.",
			"Its ears are as strong as steel, capable of digging through tough soil and rocky terrain with ease.",
			"This Pokémon’s ears are incredibly strong, allowing it to burrow quickly and efficiently to escape danger or find food."
		]
	},
	"diggersby": {
		"pokemon_name": "diggersby",
		"dex_info": [
			"Diggersby’s powerful ears can lift boulders, and it uses them to dig through the ground with incredible strength.",
			"It is known for its immense digging power, using its ears to clear away obstacles and create massive tunnels.",
			"This Pokémon’s ears are its greatest asset, allowing it to lift heavy objects and dig through the ground with ease."
		]
	},
	"fletchling": {
		"pokemon_name": "fletchling",
		"dex_info": [
			"Fletchling’s sweet singing voice calms those who hear it, but it becomes fierce when defending its territory.",
			"It is known for its gentle nature, but it won’t hesitate to defend its nest with a sharp peck.",
			"This Pokémon’s melodious chirping soothes its allies, but it can be surprisingly aggressive when its home is threatened."
		]
	},
	"fletchinder": {
		"pokemon_name": "fletchinder",
		"dex_info": [
			"Fletchinder’s fiery feathers allow it to scorch anything it touches, and it flies at high speeds in pursuit of prey.",
			"It uses the flames on its body to intimidate opponents, striking swiftly and decisively in battle.",
			"This Pokémon’s speed and fiery feathers make it a formidable hunter, able to outmaneuver and overwhelm its foes."
		]
	},
	"talonflame": {
		"pokemon_name": "talonflame",
		"dex_info": [
			"Talonflame’s scorching speed leaves a trail of fire in its wake, making it a fearsome opponent in the sky.",
			"It flies faster than the eye can follow, striking down enemies with its burning wings.",
			"This Pokémon’s blazing speed and fiery attacks make it a dominant force in aerial battles, leaving scorched trails behind."
		]
	},
	"scatterbug": {
		"pokemon_name": "scatterbug",
		"dex_info": [
			"Scatterbug’s body is covered in a special powder that helps it survive in harsh environments.",
			"It can release a powder that irritates predators, giving it time to escape from danger.",
			"This Pokémon’s powder-covered body protects it from the elements and allows it to fend off attackers."
		]
	},
	"spewpa": {
		"pokemon_name": "spewpa",
		"dex_info": [
			"Spewpa’s fur is thick and tough, providing it with a strong defense against predators as it prepares to evolve.",
			"It remains motionless, conserving its energy for evolution while relying on its thick fur for protection.",
			"This Pokémon’s fur acts as a sturdy shield, keeping it safe from harm as it undergoes its transformation."
		]
	},
	"vivillon": {
		"pokemon_name": "vivillon",
		"dex_info": [
			"Vivillon’s wings can create colorful scales that scatter into the air, confusing its enemies.",
			"It can control the scales on its wings, using them to manipulate the weather and disrupt its foes.",
			"This Pokémon’s wings are not only beautiful but also powerful, allowing it to control the battlefield with dazzling displays."
		]
	},
	"litleo": {
		"pokemon_name": "litleo",
		"dex_info": [
			"Litleo is always full of energy, and its mane can burst into flames when it gets excited.",
			"It shows off its fiery mane when it’s feeling strong, using it to intimidate rivals.",
			"This Pokémon’s fiery mane is a symbol of its strength and courage, which it displays proudly in battle."
		]
	},
	"pyroar": {
		"pokemon_name": "pyroar",
		"dex_info": [
			"Pyroar’s regal mane signifies its status as the leader of its pride, and it commands respect with its powerful roar.",
			"It controls its pride with a commanding presence, and its roar can be heard from miles away.",
			"This Pokémon’s majestic appearance and powerful roar make it a natural leader, respected by all in its territory."
		]
	},
	"flabebe": {
		"pokemon_name": "flabebe",
		"dex_info": [
			"Flabébé floats in the air by holding onto a flower, which it carefully tends to as it travels.",
			"It chooses a flower at birth and takes care of it for life, drawing power from it during battle.",
			"This Pokémon is always seen with a flower, which it cares for with great dedication and uses to harness its energy."
		]
	},
	"floette": {
		"pokemon_name": "floette",
		"dex_info": [
			"Floette dances gracefully with its flower, using its petals to heal and protect its friends.",
			"It can restore life to withered plants by scattering petals that are filled with its own energy.",
			"This Pokémon uses the power of its flower to heal the land, bringing life and beauty wherever it goes."
		]
	},
	"florges": {
		"pokemon_name": "florges",
		"dex_info": [
			"Florges can control the flowers in its environment, creating gardens that bloom with life and beauty.",
			"It uses its power over flowers to create lush, vibrant gardens, where it resides in peace.",
			"This Pokémon’s connection to nature is so strong that it can cause flowers to bloom with a mere gesture."
		]
	},
	"skiddo": {
		"pokemon_name": "skiddo",
		"dex_info": [
			"Skiddo’s friendly nature makes it a popular partner for travelers. It can carry people on its back over rough terrain.",
			"It loves to be around people and will often carry its Trainer on its back through fields and mountains.",
			"This Pokémon is known for its gentle demeanor, and it forms strong bonds with its Trainers, helping them navigate the wild."
		]
	},
	"gogoat": {
		"pokemon_name": "gogoat",
		"dex_info": [
			"Gogoat’s strong, sturdy legs allow it to climb steep mountains and traverse rocky paths with ease.",
			"It is a reliable partner in rough terrain, using its powerful legs to carry its Trainer over any obstacle.",
			"This Pokémon’s strength and endurance make it an excellent mount, capable of traversing the harshest environments."
		]
	},
	"pancham": {
		"pokemon_name": "pancham",
		"dex_info": [
			"Pancham tries to intimidate its opponents by glaring at them, but it’s more cute than scary.",
			"It likes to imitate the tough behavior of stronger Pokémon, but its playful nature often shows through.",
			"This Pokémon has a mischievous streak, often pretending to be tough, but it can’t hide its playful and curious side."
		]
	},
	"pangoro": {
		"pokemon_name": "pangoro",
		"dex_info": [
			"Pangoro’s fists can shatter anything in its path, and it fights with an intense sense of justice.",
			"It dislikes bullying and will fight to protect the weak, using its immense strength to take down foes.",
			"This Pokémon is known for its fierce temper and strong sense of justice, always standing up for those in need."
		]
	},
	"furfrou": {
		"pokemon_name": "furfrou",
		"dex_info": [
			"Furfrou’s fur can be trimmed into various styles, each representing a different region’s culture.",
			"It takes pride in its appearance, and it enjoys being groomed and styled by its Trainer.",
			"This Pokémon’s elegant fur can be styled in many ways, and it’s known for its refined and dignified demeanor."
		]
	},
	"espurr": {
		"pokemon_name": "espurr",
		"dex_info": [
			"Espurr’s psychic powers are so intense that it struggles to control them, often leading to accidental outbursts.",
			"It has a hard time keeping its psychic energy in check, sometimes unleashing it in unexpected ways.",
			"This Pokémon’s large ears contain powerful psychic energy, which it must carefully manage to avoid overwhelming its surroundings."
		]
	},
	"meowstic": {
		"pokemon_name": "meowstic",
		"dex_info": [
			"Meowstic’s psychic powers are used primarily for defense, and it can unleash a devastating attack when threatened.",
			"It conceals its psychic energy until it’s absolutely necessary, releasing it in a concentrated blast.",
			"This Pokémon’s calm demeanor hides its true power, which it only reveals when its back is against the wall."
		]
	},
	"honedge": {
		"pokemon_name": "honedge",
		"dex_info": [
			"Honedge was born from a spirit possessing a sword. It drains the life force of anyone who dares to touch it.",
			"It is said that those who unsheathe this Pokémon’s blade will have their life energy absorbed.",
			"This Pokémon’s blade is cursed, and it is believed to bring doom to those who wield it carelessly."
		]
	},
	"doublade": {
		"pokemon_name": "doublade",
		"dex_info": [
			"Doublade’s two swords work in perfect harmony, slicing through anything that stands in their way.",
			"It uses its twin blades to perform coordinated attacks, overwhelming foes with speed and precision.",
			"This Pokémon’s two blades move with perfect synchronization, making it a formidable opponent in battle."
		]
	},
	"aegislash": {
		"pokemon_name": "aegislash",
		"dex_info": [
			"Aegislash can change between a defensive shield form and an offensive blade form, adapting to the flow of battle.",
			"It is said to be a royal guardian, protecting kings with its ability to sense the purity of one’s heart.",
			"This Pokémon is revered for its ability to shift between defense and offense, making it a versatile and powerful protector."
		]
	},
	"spritzee": {
		"pokemon_name": "spritzee",
		"dex_info": [
			"Spritzee releases a fragrance that can soothe and calm people, and it is often used in luxury perfumes.",
			"Its scent is said to have healing properties, and it has been prized since ancient times.",
			"This Pokémon’s fragrant aroma is both pleasant and therapeutic, making it a favorite among nobles and healers alike."
		]
	},
	"aromatisse": {
		"pokemon_name": "aromatisse",
		"dex_info": [
			"Aromatisse can emit a variety of scents, from soothing perfumes to foul odors, depending on its mood.",
			"It uses its fragrant aroma to calm allies and confuse enemies, changing its scent to suit the situation.",
			"This Pokémon’s mastery over scent allows it to influence those around it, whether by soothing or repelling them."
		]
	},
	"swirlix": {
		"pokemon_name": "swirlix",
		"dex_info": [
			"Swirlix loves to eat sweets, and its fluffy fur is as sticky as cotton candy.",
			"It’s always in a good mood when it’s full of sugar, and its fur becomes even fluffier after it eats.",
			"This Pokémon’s fur is made of sugar, and it enjoys nothing more than indulging in its favorite treats."
		]
	},
	"slurpuff": {
		"pokemon_name": "slurpuff",
		"dex_info": [
			"Slurpuff’s sense of smell is so refined that it can distinguish between hundreds of different scents.",
			"It is often used by pastry chefs to judge the quality of their sweets, thanks to its incredible olfactory abilities.",
			"This Pokémon’s nose is incredibly sensitive, allowing it to detect even the faintest hint of flavor in any dish."
		]
	},
		"inkay": {
		"pokemon_name": "inkay",
		"dex_info": [
			"Inkay can mesmerize opponents with the flashing lights on its body, leaving them dazed and confused.",
			"It uses its flashing lights to disorient foes, then attacks while they’re off guard.",
			"This Pokémon’s ability to hypnotize with its lights makes it a tricky opponent, often leaving its foes vulnerable to attack."
		]
	},
	"malamar": {
		"pokemon_name": "malamar",
		"dex_info": [
			"Malamar is known for its cunning nature, using its powerful hypnotic abilities to control others.",
			"It’s said that Malamar can bend the will of even the most stubborn opponents, using its psychic powers to dominate them.",
			"This Pokémon’s hypnotic abilities are so strong that it can control the thoughts and actions of those around it."
		]
	},
	"binacle": {
		"pokemon_name": "binacle",
		"dex_info": [
			"Binacle always works in pairs, with two Binacle sharing the same rock and cooperating to survive.",
			"It clings to rocks on the seashore, using its strong grip to hold on against the crashing waves.",
			"This Pokémon’s two heads rarely get along, but they must cooperate to move and attack effectively."
		]
	},
	"barbaracle": {
		"pokemon_name": "barbaracle",
		"dex_info": [
			"Barbaracle’s multiple limbs allow it to attack from many directions at once, making it a formidable foe.",
			"It’s known for its strength and coordination, using all of its limbs to overwhelm opponents with a flurry of attacks.",
			"This Pokémon’s body is made up of multiple Binacle, each working together to move and fight as one."
		]
	},
	"skrelp": {
		"pokemon_name": "skrelp",
		"dex_info": [
			"Skrelp camouflages itself as seaweed to avoid detection, striking at unsuspecting prey with its poisonous barbs.",
			"It hides among the kelp, waiting to ambush its prey with a burst of toxic liquid.",
			"This Pokémon’s camouflage makes it nearly invisible in the water, allowing it to surprise its prey with a venomous attack."
		]
	},
	"dragalge": {
		"pokemon_name": "dragalge",
		"dex_info": [
			"Dragalge’s poison is so potent that it can melt through the hull of a ship, making it feared by sailors.",
			"It lurks in the depths of the ocean, using its camouflage to hide from predators and prey alike.",
			"This Pokémon’s toxic breath is deadly, and it’s known to attack anything that invades its territory with a powerful blast of poison."
		]
	},
	"clauncher": {
		"pokemon_name": "clauncher",
		"dex_info": [
			"Clauncher shoots water from its massive claw with incredible force, stunning its prey before finishing them off.",
			"It uses its claw to fire powerful water blasts, knocking out prey and enemies alike.",
			"This Pokémon’s claw is its main weapon, capable of launching high-pressure water jets to strike down foes."
		]
	},
	"clawitzer": {
		"pokemon_name": "clawitzer",
		"dex_info": [
			"Clawitzer’s massive claw can shoot water with the force of a cannon, capable of piercing steel plates.",
			"It can launch powerful blasts of water that can shatter even the toughest defenses.",
			"This Pokémon’s cannon-like claw is capable of firing high-speed water jets that can easily penetrate steel."
		]
	},
	"helioptile": {
		"pokemon_name": "helioptile",
		"dex_info": [
			"Helioptile generates electricity by basking in the sun, using it to power its attacks.",
			"It can store solar energy in its frills, releasing it as electricity to shock its opponents.",
			"This Pokémon uses sunlight to generate electricity, which it stores in its body and uses to power its moves."
		]
	},
	"heliolisk": {
		"pokemon_name": "heliolisk",
		"dex_info": [
			"Heliolisk’s frills act like solar panels, absorbing sunlight to generate powerful electric attacks.",
			"It can release massive amounts of electricity from its frills, enough to power an entire building.",
			"This Pokémon’s ability to generate electricity from sunlight makes it a formidable opponent, capable of unleashing powerful electric shocks."
		]
	},
	"tyrunt": {
		"pokemon_name": "tyrunt",
		"dex_info": [
			"Tyrunt’s powerful jaws can crush boulders, and it has a playful but sometimes stubborn personality.",
			"It’s a Pokémon from ancient times, known for its powerful bite and feisty nature.",
			"This Pokémon’s jaw strength is unmatched, capable of crushing rocks and bones with ease."
		]
	},
	"tyrantrum": {
		"pokemon_name": "tyrantrum",
		"dex_info": [
			"Tyrantrum was once the king of the ancient world, ruling with its immense power and fearsome jaws.",
			"Its powerful bite can tear through steel, and it was known as the strongest predator of its time.",
			"This Pokémon’s regal presence and unmatched strength made it the ruler of its domain in ancient times."
		]
	},
	"amaura": {
		"pokemon_name": "amaura",
		"dex_info": [
			"Amaura’s icy breath can freeze the air around it, creating beautiful, shimmering auroras.",
			"It lived in cold climates long ago, and it can create auroras by lowering the temperature around it.",
			"This Pokémon’s icy powers allow it to create stunning auroras, reflecting its ancient origins in frozen lands."
		]
	},
	"aurorus": {
		"pokemon_name": "aurorus",
		"dex_info": [
			"Aurorus’s frigid breath can create walls of ice, and its graceful movements resemble the flowing auroras.",
			"It can unleash freezing winds from its body, encasing its enemies in solid ice.",
			"This Pokémon’s elegant appearance is matched by its powerful ice abilities, capable of creating massive ice barriers."
		]
	},
	"sylveon": {
		"pokemon_name": "sylveon",
		"dex_info": [
			"Sylveon’s ribbon-like feelers can soothe its Trainer, and it is known for its friendly and caring nature.",
			"It wraps its ribbon feelers around its Trainer’s arm, calming them with its soothing aura.",
			"This Pokémon’s gentle nature and calming presence make it a beloved companion, always ready to comfort those it cares about."
		]
	},
	"hawlucha": {
		"pokemon_name": "hawlucha",
		"dex_info": [
			"Hawlucha’s acrobatic fighting style and swift movements make it a formidable opponent in the ring.",
			"It uses its incredible agility and strength to perform aerial maneuvers, striking down foes with powerful moves.",
			"This Pokémon’s fighting spirit and graceful movements make it a master of aerial combat, taking down enemies with style and precision."
		]
	},
	"dedenne": {
		"pokemon_name": "dedenne",
		"dex_info": [
			"Dedenne communicates with its allies by sending electrical signals through its antenna-like whiskers.",
			"It uses its round body to store electricity, which it releases through its whiskers to shock opponents.",
			"This Pokémon’s small size and electrical abilities make it a tricky opponent, often surprising foes with sudden shocks."
		]
	},
	"carbink": {
		"pokemon_name": "carbink",
		"dex_info": [
			"Carbink is born from the high pressure and heat deep underground, and it’s often found in diamond-rich caves.",
			"Its body is as hard as diamond, making it nearly invulnerable to attacks.",
			"This Pokémon’s diamond-like body sparkles in the light, and it’s known for its incredible durability."
		]
	},
	"goomy": {
		"pokemon_name": "goomy",
		"dex_info": [
			"Goomy is often found in damp, rainy environments, and it’s known as the weakest Dragon-type Pokémon.",
			"It’s covered in a slimy membrane that protects it from attacks, but it’s still very soft and squishy.",
			"This Pokémon’s slimy body is both its greatest weakness and its main form of defense, making it difficult to grab or hold onto."
		]
	},
	"sliggoo": {
		"pokemon_name": "sliggoo",
		"dex_info": [
			"Sliggoo secretes a slimy mucus that it uses to slide around, and it can melt its prey with strong acids.",
			"It’s blind and relies on its slimy feelers to sense its surroundings, using acid to dissolve anything it touches.",
			"This Pokémon’s slimy body produces powerful acids, which it uses to dissolve obstacles and prey alike."
		]
	},
	"goodra": {
		"pokemon_name": "goodra",
		"dex_info": [
			"Goodra’s slimy body is surprisingly strong, and it’s known for its gentle and caring nature.",
			"It loves to hug its Trainer, but its slimy body makes it a messy experience.",
			"This Pokémon is both powerful and affectionate, often showing its love by wrapping its Trainer in a gooey embrace."
		]
	},
	"klefki": {
		"pokemon_name": "klefki",
		"dex_info": [
			"Klefki collects keys and treasures them, jingling them to threaten potential thieves.",
			"It steals keys from people and Pokémon alike, adding them to its collection as trophies.",
			"This Pokémon guards its keys fiercely, often using them to rattle and scare off intruders."
		]
	},
	"phantump": {
		"pokemon_name": "phantump",
		"dex_info": [
			"Phantump is said to be the spirit of a child who became lost in the forest and transformed into this Pokémon.",
			"It wanders the forest at night, calling out in a ghostly voice to lead travelers astray.",
			"This Pokémon’s eerie cries can be heard echoing through the woods, where it lures the unwary deeper into the forest."
		]
	},
	"trevenant": {
		"pokemon_name": "trevenant",
		"dex_info": [
			"Trevenant controls the trees of the forest, using them to trap those who would harm the environment.",
			"It’s said to curse anyone who cuts down trees, using its roots to bind them in place.",
			"This Pokémon is the guardian of the forest, punishing those who harm the trees with its powerful curse."
		]
	},
	"pumpkaboo": {
		"pokemon_name": "pumpkaboo",
		"dex_info": [
			"Pumpkaboo varies in size, with larger ones carrying more spirits inside their hollow bodies.",
			"It is said to carry wandering spirits inside its body, guiding them to the afterlife.",
			"This Pokémon’s eerie glow and hollow body make it a common sight in haunted forests, where it gathers lost souls."
		]
	},
	"gourgeist": {
		"pokemon_name": "gourgeist",
		"dex_info": [
			"Gourgeist sings eerie songs as it wanders through the night, cursing anyone who hears its voice.",
			"It wraps its prey in its hair-like tendrils and sings joyfully as it devours them.",
			"This Pokémon’s haunting melody is said to bring misfortune to anyone who hears it, often leading to a terrifying end."
		]
	},
	"bergmite": {
		"pokemon_name": "bergmite",
		"dex_info": [
			"Bergmite’s icy body can withstand extreme cold, and it uses its frozen shell to fend off predators.",
			"It forms a thick layer of ice around itself for protection, making it almost impossible to penetrate.",
			"This Pokémon’s body is covered in ice so cold that it can freeze anything it touches, making it a formidable defender."
		]
	},
	"avalugg": {
		"pokemon_name": "avalugg",
		"dex_info": [
			"Avalugg’s massive ice body can crush anything in its path, and it serves as a mobile fortress for smaller Pokémon.",
			"It’s known as the iceberg Pokémon, using its enormous size to intimidate foes and protect its allies.",
			"This Pokémon’s icy exterior is as hard as steel, making it nearly invulnerable to attacks as it slowly advances on its enemies."
		]
	},
	"noibat": {
		"pokemon_name": "noibat",
		"dex_info": [
			"Noibat’s ears emit ultrasonic waves that can stun prey, making it easy to capture them.",
			"It uses its large ears to detect even the faintest sounds, allowing it to navigate through pitch-black caves.",
			"This Pokémon’s echolocation is so powerful that it can shatter obstacles and disorient opponents with a single cry."
		]
	},
	"noivern": {
		"pokemon_name": "noivern",
		"dex_info": [
			"Noivern’s sonic blasts can level buildings and shatter glass, making it a feared presence in the wild.",
			"It attacks by unleashing destructive sound waves that can reduce anything in their path to rubble.",
			"This Pokémon’s mastery of sound allows it to devastate foes with powerful sonic booms, leaving nothing but destruction in its wake."
		]
	},
	"xerneas": {
		"pokemon_name": "xerneas",
		"dex_info": [
			"Xerneas is said to have the power to share eternal life, bringing vitality and energy to all living things.",
			"It’s known as the Life Pokémon, said to revive and restore the natural world wherever it treads.",
			"This legendary Pokémon is revered for its ability to grant life, using its powers to heal and rejuvenate the land."
		]
	},
	"yveltal": {
		"pokemon_name": "yveltal",
		"dex_info": [
			"Yveltal absorbs the life force of everything around it when it spreads its wings, leaving nothing but desolation.",
			"It’s known as the Destruction Pokémon, feared for its ability to bring death and decay wherever it flies.",
			"This legendary Pokémon’s presence signals the end, as it drains the life energy of everything in its vicinity."
		]
	},
	"zygarde": {
		"pokemon_name": "zygarde",
		"dex_info": [
			"Zygarde monitors the ecosystem and intervenes when it senses an imbalance, often taking on different forms.",
			"It is said to appear when the environment is in danger, using its powers to restore balance to the natural world.",
			"This Pokémon’s role is to protect the ecosystem, transforming as needed to confront any threat to the earth."
		]
	},
	"diancie": {
		"pokemon_name": "diancie",
		"dex_info": [
			"Diancie can create diamonds out of thin air, and it’s revered for its beauty and rarity.",
			"It is said that Diancie’s diamonds are the most precious in the world, formed through immense pressure.",
			"This mythical Pokémon is known for its elegance and the sparkling diamonds it creates, often sought after by collectors."
		]
	},
	"hoopa": {
		"pokemon_name": "hoopa",
		"dex_info": [
			"Hoopa’s rings can warp space, allowing it to transport objects or even entire Pokémon across vast distances.",
			"It’s known as the Mischief Pokémon, using its rings to play tricks and cause trouble wherever it goes.",
			"This Pokémon’s ability to bend space makes it a formidable trickster, capable of teleporting anything it desires."
		]
	},
	"volcanion": {
		"pokemon_name": "volcanion",
		"dex_info": [
			"Volcanion uses its explosive steam to create massive shockwaves, capable of devastating entire mountains.",
			"It’s known as the Steam Pokémon, using the pressure of its boiling water to unleash powerful attacks.",
			"This mythical Pokémon’s control over steam and water makes it a force of nature, able to level mountains with a single blast."
		]
	},
		"rowlet": {
		"pokemon_name": "rowlet",
		"dex_info": [
			"Rowlet can rotate its head almost 180 degrees to see behind itself, allowing it to spot predators easily.",
			"It silently glides through the night, delivering precise kicks to its prey with its sharp talons.",
			"This Pokémon is known for its quiet movements and keen eyesight, making it a master of stealth in the dark."
		]
	},
	"dartrix": {
		"pokemon_name": "dartrix",
		"dex_info": [
			"Dartrix preens its feathers constantly, as it is very proud of its appearance. It can throw razor-sharp feather blades with pinpoint accuracy.",
			"It hides sharp feathers under its wings, which it uses to attack with swift, accurate strikes.",
			"This Pokémon is very meticulous about its appearance, and it uses its sharpened feathers to slice through foes with precision."
		]
	},
	"decidueye": {
		"pokemon_name": "decidueye",
		"dex_info": [
			"Decidueye is an expert archer, capable of nocking an arrow and striking its target with blinding speed.",
			"It moves silently and strikes without warning, often catching its opponents off guard with its powerful arrows.",
			"This Pokémon’s precision in battle is unmatched, using its arrow quills to hit targets from incredible distances."
		]
	},
	"litten": {
		"pokemon_name": "litten",
		"dex_info": [
			"Litten’s fiery fur sheds easily, and it uses the fur it sheds to create fiery attacks.",
			"It can ignite its fur to produce fireballs, which it launches at opponents with great accuracy.",
			"This Pokémon’s fur is highly flammable, and it uses this to its advantage in battle by creating and hurling fireballs."
		]
	},
	"torracat": {
		"pokemon_name": "torracat",
		"dex_info": [
			"Torracat’s bell-like organ emits flames when it fights, and it is known for its fierce, competitive nature.",
			"Its fiery bellows can produce intense heat, allowing it to unleash powerful fire-based attacks.",
			"This Pokémon’s fiery spirit is matched only by the flames it produces, which grow hotter as it becomes more determined."
		]
	},
	"incineroar": {
		"pokemon_name": "incineroar",
		"dex_info": [
			"Incineroar is a powerful fighter, and its fire belt blazes with intensity during battle. It loves to show off its strength.",
			"It acts like a professional wrestler, often posing and taunting opponents before delivering crushing blows.",
			"This Pokémon’s fiery belt is a symbol of its strength, and it uses its power to dominate in the ring with fierce moves."
		]
	},
	"popplio": {
		"pokemon_name": "popplio",
		"dex_info": [
			"Popplio is very agile in the water, and it uses its nose to blow water balloons that it can bounce around on.",
			"It is playful and loves to perform tricks with its water balloons, which it can create in a variety of sizes.",
			"This Pokémon’s water-based acrobatics are a joy to watch, and it’s known for its cheerful and energetic personality."
		]
	},
	"brionne": {
		"pokemon_name": "brionne",
		"dex_info": [
			"Brionne dances gracefully, creating water balloons as it moves. It performs for those it cares about.",
			"It is known for its elegant and joyful dances, which it uses to cheer up others and express its feelings.",
			"This Pokémon’s dance is both beautiful and captivating, often drawing in audiences with its rhythmic movements and water balloons."
		]
	},
	"primarina": {
		"pokemon_name": "primarina",
		"dex_info": [
			"Primarina’s singing voice is melodious, and it can control its water balloons with its songs.",
			"It creates and manipulates water balloons with the sound waves it produces, using them to attack or defend.",
			"This Pokémon’s songs are said to be enchanting, and it uses its voice to orchestrate powerful water-based performances in battle."
		]
	},
	"pikipek": {
		"pokemon_name": "pikipek",
		"dex_info": [
			"Pikipek’s beak can peck at a speed of 16 times per second, and it uses this to drill into trees and store food.",
			"It can shoot seeds at enemies with great accuracy, using its beak as a powerful weapon.",
			"This Pokémon’s rapid pecking is not only for finding food, but also for defending its territory with swift, repeated strikes."
		]
	},
	"trumbeak": {
		"pokemon_name": "trumbeak",
		"dex_info": [
			"Trumbeak’s beak can change shape depending on its mood, and it can produce a variety of sounds to communicate.",
			"It collects small objects in its beak, using them to create nests or as tools to help find food.",
			"This Pokémon’s beak is highly versatile, allowing it to perform a wide range of tasks, from building to attacking."
		]
	},
	"toucannon": {
		"pokemon_name": "toucannon",
		"dex_info": [
			"Toucannon’s beak heats up to scorching temperatures, allowing it to unleash powerful fiery attacks.",
			"It’s known for its fiery temper, and it can blast its enemies with intense heat from its beak.",
			"This Pokémon’s beak acts like a cannon, capable of firing off superheated blasts that can incinerate anything in its path."
		]
	},
	"yungoos": {
		"pokemon_name": "yungoos",
		"dex_info": [
			"Yungoos is always hungry, and it spends most of its time searching for food. Its strong jaws can crush anything.",
			"It has a voracious appetite, and it’s known to bite and chew on anything it can find.",
			"This Pokémon is constantly on the lookout for its next meal, using its powerful jaws to snap up anything in its path."
		]
	},
	"gumshoos": {
		"pokemon_name": "gumshoos",
		"dex_info": [
			"Gumshoos is patient and persistent, often waiting for hours or even days to ambush its prey.",
			"It has a keen sense of smell, allowing it to track down its prey with great accuracy.",
			"This Pokémon’s methodical hunting style makes it a formidable predator, able to outlast and outsmart its targets."
		]
	},
	"grubbin": {
		"pokemon_name": "grubbin",
		"dex_info": [
			"Grubbin uses its strong jaws to burrow into the ground, and it can generate electricity by chewing on tree roots.",
			"It’s known for its love of electricity, often chewing on cables and wires to satisfy its cravings.",
			"This Pokémon’s powerful jaws are not only for digging, but also for feeding on tree sap and generating electric energy."
		]
	},
	"charjabug": {
		"pokemon_name": "charjabug",
		"dex_info": [
			"Charjabug stores electricity in its body like a battery, and it can share this energy with other Pokémon.",
			"It often stays still to conserve energy, storing up power for its evolution.",
			"This Pokémon acts like a living battery, capable of powering other devices or Pokémon with its stored electricity."
		]
	},
	"vikavolt": {
		"pokemon_name": "vikavolt",
		"dex_info": [
			"Vikavolt can fire beams of electricity with pinpoint accuracy, using its powerful jaws to conduct and direct the energy.",
			"It’s an agile flier, able to maneuver through dense forests while hunting for prey.",
			"This Pokémon’s electrical attacks are highly focused and devastating, making it a formidable hunter in any environment."
		]
	},
	"crabrawler": {
		"pokemon_name": "crabrawler",
		"dex_info": [
			"Crabrawler is always looking for a fight, using its powerful claws to challenge opponents and defend its territory.",
			"It’s known for its competitive nature, often picking fights with other Pokémon to prove its strength.",
			"This Pokémon’s aggressive personality and strong claws make it a tough opponent in battle, always ready to throw a punch."
		]
	},
	"crabominable": {
		"pokemon_name": "crabominable",
		"dex_info": [
			"Crabominable’s icy punches are strong enough to shatter boulders, and it thrives in cold, snowy environments.",
			"It migrated to snowy mountains, where it adapted to the cold by developing powerful ice-based attacks.",
			"This Pokémon’s frosty punches can freeze anything they hit, making it a formidable fighter in icy regions."
		]
	},
	"oricorio": {
		"pokemon_name": "oricorio",
		"dex_info": [
			"Oricorio’s form changes depending on the nectar it drinks, each form having its own unique dance and battle style.",
			"It’s known for its graceful dance moves, which it uses to mesmerize opponents and boost its own power.",
			"This Pokémon’s dance is not just for show—it’s a powerful technique that can enhance its abilities and confuse its enemies."
		]
	},
	"cutiefly": {
		"pokemon_name": "cutiefly",
		"dex_info": [
			"Cutiefly is attracted to flowers by their scent, and it can identify which flowers are ready for pollination.",
			"It flits around fields of flowers, collecting nectar and spreading pollen as it goes.",
			"This Pokémon’s keen sense of smell allows it to find the most fragrant flowers, where it gathers nectar to fuel its flight."
		]
	},
	"ribombee": {
		"pokemon_name": "ribombee",
		"dex_info": [
			"Ribombee makes pollen puffs that it uses to heal allies or attack enemies, depending on the situation.",
			"It’s known for its gentle nature, often helping other Pokémon by sharing its pollen.",
			"This Pokémon’s pollen has powerful effects, capable of revitalizing its allies or causing harm to its foes."
		]
	},
	"rockruff": {
		"pokemon_name": "rockruff",
		"dex_info": [
			"Rockruff is loyal and brave, always eager to protect its Trainer, even at the cost of its own safety.",
			"It loves to play, and it’s known for its sharp claws and strong bite, which it uses to roughhouse with friends.",
			"This Pokémon’s playful nature and fierce loyalty make it a beloved companion, always ready to defend its Trainer."
		]
	},
	"lycanroc": {
		"pokemon_name": "lycanroc",
		"dex_info": [
			"Lycanroc’s personality changes depending on its form, with each form showing a different side of its nature.",
			"It’s a swift and powerful fighter, able to adapt its battle style to match its surroundings.",
			"This Pokémon’s fierce demeanor and sharp claws make it a formidable opponent, no matter what form it takes."
		]
	},
	"wishiwashi": {
		"pokemon_name": "wishiwashi",
		"dex_info": [
			"Wishiwashi’s School Form is a terrifying sight, as it transforms from a weak individual into a massive, powerful group.",
			"It’s known for its ability to call others of its kind to form a large, formidable school when threatened.",
			"This Pokémon’s strength lies in numbers, as it can overwhelm opponents by forming a massive school that fights as one."
		]
	},
	"mareanie": {
		"pokemon_name": "mareanie",
		"dex_info": [
			"Mareanie’s poisonous spikes are dangerous, and it’s known for its habit of eating Corsola branches.",
			"It hides in coral reefs, waiting to ambush prey with its toxic spikes.",
			"This Pokémon’s venomous nature and stealthy hunting tactics make it a feared predator in coral-rich waters."
		]
	},
	"toxapex": {
		"pokemon_name": "toxapex",
		"dex_info": [
			"Toxapex leaves a trail of toxic spikes wherever it goes, making the sea floor a dangerous place for others.",
			"Its spikes are filled with a potent toxin that can paralyze and poison its enemies.",
			"This Pokémon’s toxic spikes are not only a powerful weapon, but also a means of controlling its territory in the ocean."
		]
	},
	"mudbray": {
		"pokemon_name": "mudbray",
		"dex_info": [
			"Mudbray loves to play in the mud, and it gains strength by consuming soil rich in nutrients.",
			"It’s known for its stubbornness and incredible strength, often moving heavy loads despite its small size.",
			"This Pokémon’s affinity for mud and soil makes it a powerful and enduring worker, capable of carrying heavy burdens over long distances."
		]
	},
	"mudsdale": {
		"pokemon_name": "mudsdale",
		"dex_info": [
			"Mudsdale’s hooves are strong enough to crush rocks, and it can carry heavy loads without tiring.",
			"It’s known for its stamina and resilience, able to keep going even in the harshest of conditions.",
			"This Pokémon’s incredible strength and endurance make it an invaluable partner in tough terrains and challenging environments."
		]
	},
	"dewpider": {
		"pokemon_name": "dewpider",
		"dex_info": [
			"Dewpider uses the water bubble on its head to breathe on land, and it’s known for its curious nature.",
			"It creates bubbles to protect itself from drying out, and it often explores new places in search of water.",
			"This Pokémon’s bubble serves as both a breathing apparatus and a shield, allowing it to thrive on land and in water."
		]
	},
	"araquanid": {
		"pokemon_name": "araquanid",
		"dex_info": [
			"Araquanid traps prey inside its water bubble, where it drowns them before consuming them.",
			"It’s known for its protective nature, often carrying small Pokémon inside its bubble to keep them safe.",
			"This Pokémon’s water bubble is both a weapon and a sanctuary, allowing it to protect itself and others from danger."
		]
	},
	"fomantis": {
		"pokemon_name": "fomantis",
		"dex_info": [
			"Fomantis is a nocturnal Pokémon, using photosynthesis during the day to store energy for its nighttime activities.",
			"It’s known for its scythe-like leaves, which it uses to cut down prey and defend itself.",
			"This Pokémon’s delicate appearance hides its true strength, as it uses its leaves to deliver swift and powerful attacks."
		]
	},
	"lurantis": {
		"pokemon_name": "lurantis",
		"dex_info": [
			"Lurantis’s appearance is deceiving, as its flower-like body can deliver powerful blows with its sharp leaves.",
			"It’s known for its elegant and precise movements, which it uses to slice through enemies with ease.",
			"This Pokémon’s beauty is matched by its deadly prowess in battle, making it a feared opponent among those who underestimate it."
		]
	},
	"morelull": {
		"pokemon_name": "morelull",
		"dex_info": [
			"Morelull emits spores that cause drowsiness, helping it escape from predators while it feeds on tree roots.",
			"It’s known for its glowing spores, which it uses to light up dark forests and lure in prey.",
			"This Pokémon’s spores are both a defense mechanism and a way to attract food, making it a unique and resourceful creature."
		]
	},
	"shiinotic": {
		"pokemon_name": "shiinotic",
		"dex_info": [
			"Shiinotic’s spores have a calming effect, lulling its prey into a deep sleep before it drains their energy.",
			"It’s known for its eerie glow, which it uses to disorient and trap those who wander too close.",
			"This Pokémon’s bioluminescence and hypnotic spores make it a dangerous predator in dark and misty forests."
		]
	},
		"salandit": {
		"pokemon_name": "salandit",
		"dex_info": [
			"Salandit emits toxic gas that it uses to poison enemies, often fighting in groups to overwhelm larger foes.",
			"It’s known for its cunning nature, using its toxic breath to weaken opponents before striking.",
			"This Pokémon’s poison is potent enough to immobilize even the strongest opponents, allowing it to take down much larger prey."
		]
	},
	"salazzle": {
		"pokemon_name": "salazzle",
		"dex_info": [
			"Salazzle emits pheromones that attract male Salandit, which it uses to form a loyal following.",
			"It’s known for its manipulative nature, using its pheromones to control other Pokémon.",
			"This Pokémon’s ability to command a harem of male Salandit makes it a dangerous and influential force in its territory."
		]
	},
	"stufful": {
		"pokemon_name": "stufful",
		"dex_info": [
			"Stufful may look cute, but it’s incredibly strong, and its flailing can knock out a full-grown human.",
			"It dislikes being touched and will fight back ferociously if it feels threatened.",
			"This Pokémon’s strength is surprising given its size, making it a tough opponent despite its cuddly appearance."
		]
	},
	"bewear": {
		"pokemon_name": "bewear",
		"dex_info": [
			"Bewear’s hugs are dangerously strong, capable of crushing anything in its grip, though it often doesn’t realize its own strength.",
			"It’s very affectionate, but its strength makes it a danger to those it cares about.",
			"This Pokémon’s overwhelming power is both its greatest asset and its biggest flaw, as it often unintentionally harms those it loves."
		]
	},
	"bounsweet": {
		"pokemon_name": "bounsweet",
		"dex_info": [
			"Bounsweet’s sweet aroma attracts Pokémon and people alike, though it uses this scent to lure in predators, which it then escapes from.",
			"It’s known for its pleasant fragrance, which can calm even the most agitated Pokémon.",
			"This Pokémon’s sweet scent makes it a favorite among humans, though it often has to run away from predators drawn by its aroma."
		]
	},
	"steenee": {
		"pokemon_name": "steenee",
		"dex_info": [
			"Steenee’s sweet scent and playful nature make it popular, but it can deliver surprisingly powerful kicks.",
			"It uses its strong legs to deliver crushing blows to enemies, often catching them off guard with its strength.",
			"This Pokémon’s combination of sweetness and strength makes it both endearing and formidable in battle."
		]
	},
	"tsareena": {
		"pokemon_name": "tsareena",
		"dex_info": [
			"Tsareena’s powerful legs allow it to execute high-speed, high-power kicks that can shatter bones.",
			"It’s known for its queenly demeanor, and it commands respect from other Pokémon with its regal presence.",
			"This Pokémon’s royal bearing and powerful attacks make it a dominant force in battle, feared by all who face it."
		]
	},
	"comfey": {
		"pokemon_name": "comfey",
		"dex_info": [
			"Comfey gathers flowers and threads them into a ring, which it uses to heal its allies during battle.",
			"It’s known for its calming presence, often seen in hospitals where it helps to comfort the sick and injured.",
			"This Pokémon’s soothing aura and ability to heal others make it a cherished companion among those who are unwell."
		]
	},
	"oranguru": {
		"pokemon_name": "oranguru",
		"dex_info": [
			"Oranguru is highly intelligent, often seen giving orders to other Pokémon. It’s known to live in harmony with nature.",
			"It spends its days meditating and gathering knowledge, which it shares with others when needed.",
			"This Pokémon’s wisdom is respected by many, and it often acts as a leader and guide in the wild."
		]
	},
	"passimian": {
		"pokemon_name": "passimian",
		"dex_info": [
			"Passimian works in groups to gather food and build nests, with each member playing a specific role.",
			"It’s known for its teamwork, often passing around a berry or stone during training exercises.",
			"This Pokémon’s strength lies in its cooperation, and it’s highly disciplined in both battle and daily life."
		]
	},
	"wimpod": {
		"pokemon_name": "wimpod",
		"dex_info": [
			"Wimpod is a cowardly Pokémon, known for fleeing at the first sign of danger, but it’s also very curious.",
			"It scavenges for food along the shoreline, quickly retreating when startled.",
			"This Pokémon’s timid nature is balanced by its curiosity, often leading it to investigate new objects before quickly scurrying away."
		]
	},
	"golisopod": {
		"pokemon_name": "golisopod",
		"dex_info": [
			"Golisopod’s hard shell can withstand even the fiercest attacks, and it strikes back with powerful slashes.",
			"It’s a fearsome fighter, known for its strong sense of duty and its willingness to protect others at all costs.",
			"This Pokémon’s powerful claws and resilient shell make it a formidable opponent, often fighting to defend its territory."
		]
	},
	"sandygast": {
		"pokemon_name": "sandygast",
		"dex_info": [
			"Sandygast is formed from sand infused with the grudges of the dead, and it can possess people who touch its shovel.",
			"It haunts beaches, using its ghostly powers to trap those who come too close.",
			"This Pokémon’s eerie presence and ability to possess others make it a feared creature among beachgoers."
		]
	},
	"palossand": {
		"pokemon_name": "palossand",
		"dex_info": [
			"Palossand controls the sand around it, forming powerful sandstorms to trap and bury its prey.",
			"It’s known for its ability to absorb the life force of anything it catches in its sandy grip.",
			"This Pokémon’s power over sand makes it a deadly predator, often lurking beneath the surface to ambush unsuspecting victims."
		]
	},
	"pyukumuku": {
		"pokemon_name": "pyukumuku",
		"dex_info": [
			"Pyukumuku’s sticky insides can eject forcefully to protect itself, often surprising its attackers.",
			"It’s known for its stoic nature, often remaining still for long periods of time, but it can strike back quickly when threatened.",
			"This Pokémon’s unique defense mechanism and calm demeanor make it a curious but formidable creature."
		]
	},
	"typenull": {
		"pokemon_name": "typenull",
		"dex_info": [
			"Type: Null was created to be the ultimate Pokémon, with a mask that suppresses its immense power.",
			"It’s known for its strength and loyalty, often forming strong bonds with its Trainer despite its origins.",
			"This Pokémon’s mysterious past and incredible power make it a unique and formidable partner."
		]
	},
	"silvally": {
		"pokemon_name": "silvally",
		"dex_info": [
			"Silvally’s ability to change its type makes it incredibly versatile in battle, adapting to any situation.",
			"It trusts its Trainer completely, often risking its own safety to protect them.",
			"This Pokémon’s loyalty and adaptability make it a powerful and dependable ally, capable of facing any challenge."
		]
	},
	"minior": {
		"pokemon_name": "minior",
		"dex_info": [
			"Minior falls from the sky, and its core glows in different colors depending on its diet. It’s both fragile and powerful.",
			"It’s known for its explosive power, often bursting open when its shell is cracked.",
			"This Pokémon’s colorful core and volatile nature make it a unique and unpredictable fighter."
		]
	},
	"komala": {
		"pokemon_name": "komala",
		"dex_info": [
			"Komala is always drowsy, and it remains asleep throughout its entire life, using its log as a pillow.",
			"It’s known for its strong grip, holding onto its log even in the deepest sleep.",
			"This Pokémon’s perpetual sleep is both a mystery and a defense mechanism, allowing it to stay calm and serene no matter what happens."
		]
	},
	"turtonator": {
		"pokemon_name": "turtonator",
		"dex_info": [
			"Turtonator’s shell is filled with explosive material, which it detonates when attacked, causing massive damage to its enemies.",
			"It lives near volcanoes, using the heat to fuel its explosive power.",
			"This Pokémon’s explosive abilities and tough shell make it a dangerous opponent, often using its power to protect its territory."
		]
	},
	"togedemaru": {
		"pokemon_name": "togedemaru",
		"dex_info": [
			"Togedemaru’s spikes can stand on end to defend itself, and it generates electricity by rolling around.",
			"It’s known for its playful nature, often using its electricity to shock friends in a lighthearted manner.",
			"This Pokémon’s spikes and electric abilities make it both a playful and powerful fighter, capable of defending itself with ease."
		]
	},
	"mimikyu": {
		"pokemon_name": "mimikyu",
		"dex_info": [
			"Mimikyu disguises itself as Pikachu to make friends, but its true form is said to cause a mysterious illness.",
			"It’s very lonely and tries to look like Pikachu to be more approachable, but its real appearance is terrifying.",
			"This Pokémon’s tragic desire for companionship is matched by the eerie power it hides beneath its disguise."
		]
	},
	"bruxish": {
		"pokemon_name": "bruxish",
		"dex_info": [
			"Bruxish’s psychic power is released through its teeth, which it uses to grind down its enemies’ defenses.",
			"It’s known for its loud, grating cry, which it uses to startle and intimidate its foes.",
			"This Pokémon’s psychic abilities and sharp teeth make it a formidable predator, often catching its prey off guard with its shrill cry."
		]
	},
	"drampa": {
		"pokemon_name": "drampa",
		"dex_info": [
			"Drampa is a gentle and friendly Pokémon, but it becomes incredibly protective and fierce when its friends are in danger.",
			"It lives high in the mountains, descending to visit children and other Pokémon it befriends.",
			"This Pokémon’s kind nature is balanced by its fierce protectiveness, making it a beloved guardian among those it cares for."
		]
	},
	"dhelmise": {
		"pokemon_name": "dhelmise",
		"dex_info": [
			"Dhelmise uses its anchor and seaweed to trap its prey, often lying in wait at the bottom of the ocean.",
			"It’s known for its eerie presence, often found haunting shipwrecks and dragging them deeper into the sea.",
			"This Pokémon’s ghostly nature and powerful anchor make it a dangerous predator in the ocean, feared by sailors and Pokémon alike."
		]
	},
	"jangmo-o": {
		"pokemon_name": "jangmo-o",
		"dex_info": [
			"Jangmo-o trains by clashing its scales together, and it’s known for its pride and determination.",
			"It’s a brave Pokémon that never backs down from a challenge, always striving to grow stronger.",
			"This Pokémon’s tough scales and unyielding spirit make it a determined fighter, always ready to prove its strength."
		]
	},
	"hakamo-o": {
		"pokemon_name": "hakamo-o",
		"dex_info": [
			"Hakamo-o’s scales are both armor and weapons, and it dances to show off its strength and intimidate its foes.",
			"It’s a fierce warrior that hones its skills in battle, using its scales to strike with precision.",
			"This Pokémon’s powerful dance and hardened scales make it a formidable opponent, feared by those who challenge it."
		]
	},
	"kommo-o": {
		"pokemon_name": "kommo-o",
		"dex_info": [
			"Kommo-o is a legendary fighter, known for its incredible strength and ability to create shockwaves with its scales.",
			"It seeks out worthy opponents, often battling to protect its territory and prove its strength.",
			"This Pokémon’s mighty scales and fighting spirit make it a legendary warrior, respected by all who know of its power."
		]
	},
	"tapukoko": {
		"pokemon_name": "tapukoko",
		"dex_info": [
			"Tapu-Koko is the guardian of Melemele Island, and it’s known for its quick temper and electric power.",
			"It protects its territory fiercely, often challenging those who it deems unworthy of its presence.",
			"This Pokémon’s electric abilities and guardian status make it a revered and feared protector of the island."
		]
	},
	"tapulele": {
		"pokemon_name": "tapulele",
		"dex_info": [
			"Tapu-Lele’s scales have healing properties, and it’s known for its playful and sometimes mischievous nature.",
			"It can spread healing energy over a wide area, but it can also be capricious and unpredictable.",
			"This Pokémon’s healing powers and whimsical personality make it both a blessing and a challenge to those who encounter it."
		]
	},
	"tapubulu": {
		"pokemon_name": "tapubulu",
		"dex_info": [
			"Tapu-Bulu controls vegetation, using its powers to grow plants and trees at will. It’s known for its strong sense of justice.",
			"It’s a guardian deity that protects its land by manipulating nature, often using its power to punish wrongdoers.",
			"This Pokémon’s connection to the land and its fierce protection of its territory make it a powerful and respected guardian."
		]
	},
	"tapufini": {
		"pokemon_name": "tapufini",
		"dex_info": [
			"Tapu-Fini can create a mist that confuses and disorients enemies, and it’s known for its elusive and mysterious nature.",
			"It protects its territory with a mystical fog, often testing those who seek its help.",
			"This Pokémon’s misty powers and enigmatic personality make it a challenging and revered guardian of its domain."
		]
	},
	"cosmog": {
		"pokemon_name": "cosmog",
		"dex_info": [
			"Cosmog is a curious and playful Pokémon, known for its ability to open Ultra Wormholes.",
			"It’s very light and floats in the air, often getting carried away by the wind.",
			"This Pokémon’s mysterious origins and ability to manipulate space make it a key figure in many legends."
		]
	},
	"cosmoem": {
		"pokemon_name": "cosmoem",
		"dex_info": [
			"Cosmoem is said to be the cocoon of a legendary Pokémon, and it’s incredibly dense despite its small size.",
			"It remains motionless as it prepares to evolve, gathering energy from the cosmos.",
			"This Pokémon’s compact form and incredible density make it a mysterious and powerful entity, often regarded as a precursor to something greater."
		]
	},
	"solgaleo": {
		"pokemon_name": "solgaleo",
		"dex_info": [
			"Solgaleo is known as the Beast That Devours the Sun, and it can open Ultra Wormholes with its radiant light.",
			"It’s revered as a symbol of the sun, often associated with life and growth.",
			"This Pokémon’s immense power and connection to the sun make it a legendary figure, capable of bringing light to the darkest places."
		]
	},
	"lunala": {
		"pokemon_name": "lunala",
		"dex_info": [
			"Lunala is known as the Beast That Calls the Moon, and it can open Ultra Wormholes with its dark energy.",
			"It’s associated with the moon and is often seen as a protector of the night.",
			"This Pokémon’s connection to the moon and its ability to manipulate darkness make it a legendary figure, revered as a guardian of the night."
		]
	},
	"nihilego": {
		"pokemon_name": "nihilego",
		"dex_info": [
			"Nihilego is an Ultra Beast that resembles a jellyfish, and it can merge with a host to control them.",
			"It’s known for its parasitic nature, often taking over the minds of those it infects.",
			"This Pokémon’s eerie appearance and ability to control others make it a feared and dangerous creature from another dimension."
		]
	},
	"buzzwole": {
		"pokemon_name": "buzzwole",
		"dex_info": [
			"Buzzwole is an Ultra Beast known for its incredible strength and muscular build, often flexing to intimidate foes.",
			"It’s said to have muscles so dense that they can deflect bullets, making it nearly invulnerable.",
			"This Pokémon’s brute strength and intimidating presence make it a formidable opponent, feared by all who encounter it."
		]
	},
	"pheromosa": {
		"pokemon_name": "pheromosa",
		"dex_info": [
			"Pheromosa is an Ultra Beast known for its speed and grace, often moving faster than the eye can follow.",
			"It’s said to be so clean and fastidious that it avoids touching anything it deems unclean.",
			"This Pokémon’s speed and elegance make it a dangerous and elusive opponent, often outmaneuvering its foes with ease."
		]
	},
	"xurkitree": {
		"pokemon_name": "xurkitree",
		"dex_info": [
			"Xurkitree is an Ultra Beast that generates massive amounts of electricity, often draining power plants dry.",
			"It’s known for its erratic movements and ability to conduct electricity through its wire-like limbs.",
			"This Pokémon’s connection to electricity and its unpredictable behavior make it a dangerous and powerful creature from another dimension."
		]
	},
	"celesteela": {
		"pokemon_name": "celesteela",
		"dex_info": [
			"Celesteela is an Ultra Beast that resembles a large rocket, capable of launching itself into the sky with great force.",
			"It’s said to have a metallic body that’s nearly indestructible, making it a formidable opponent in battle.",
			"This Pokémon’s ability to launch itself like a rocket and its incredibly tough exterior make it a feared and respected Ultra Beast."
		]
	},
	"kartana": {
		"pokemon_name": "kartana",
		"dex_info": [
			"Kartana is an Ultra Beast that’s as sharp as a blade, capable of slicing through steel with ease.",
			"It’s known for its precise and deadly attacks, often cutting down its foes before they even realize it.",
			"This Pokémon’s razor-sharp body and swift movements make it a dangerous and efficient fighter, feared by those who face it."
		]
	},
	"guzzlord": {
		"pokemon_name": "guzzlord",
		"dex_info": [
			"Guzzlord is an Ultra Beast known for its insatiable appetite, devouring anything in its path.",
			"It’s said to consume entire mountains, leaving nothing but devastation in its wake.",
			"This Pokémon’s massive size and voracious hunger make it a terrifying force of destruction, feared by all who witness its rampage."
		]
	},
	"necrozma": {
		"pokemon_name": "necrozma",
		"dex_info": [
			"Necrozma is a mysterious Pokémon that can absorb light, often shrouded in darkness as it seeks to restore its lost power.",
			"It’s said to have once been a being of pure light, but now it seeks to reclaim the light it has lost.",
			"This Pokémon’s ability to manipulate light and its enigmatic nature make it a powerful and feared figure in the Pokémon world."
		]
	},
	"magearna": {
		"pokemon_name": "magearna",
		"dex_info": [
			"Magearna is a man-made Pokémon, created by a scientist 500 years ago to serve as a companion and protector.",
			"It’s known for its ability to feel emotions, despite being an artificial life form.",
			"This Pokémon’s mechanical body and human-like emotions make it a unique and cherished companion, often seen as a marvel of engineering."
		]
	},
	"marshadow": {
		"pokemon_name": "marshadow",
		"dex_info": [
			"Marshadow hides in the shadows, observing others and mimicking their movements to perfect its fighting style.",
			"It’s known for its stealth and ability to remain unseen, often blending into the darkness.",
			"This Pokémon’s ability to hide in the shadows and its mastery of mimicry make it a formidable and elusive opponent in battle."
		]
	},
	"poipole": {
		"pokemon_name": "poipole",
		"dex_info": [
			"Poipole is an Ultra Beast that loves to spray poison from the needles on its head, often using it to mark its territory.",
			"It’s known for its playful and curious nature, often exploring its surroundings with great interest.",
			"This Pokémon’s playful demeanor and toxic abilities make it both an endearing and dangerous creature from another dimension."
		]
	},
	"naganadel": {
		"pokemon_name": "naganadel",
		"dex_info": [
			"Naganadel’s stinger is filled with a potent toxin, and it can shoot it at high speeds to take down its prey.",
			"It’s known for its speed and agility, often striking before its opponents can react.",
			"This Pokémon’s toxic stinger and swift movements make it a feared predator, capable of taking down even the strongest foes."
		]
	},
	"stakataka": {
		"pokemon_name": "stakataka",
		"dex_info": [
			"Stakataka is an Ultra Beast composed of many smaller units, and it can reassemble itself after being damaged.",
			"It’s known for its incredible defense, often withstanding powerful attacks with ease.",
			"This Pokémon’s ability to reconstruct itself and its impenetrable defense make it a formidable and resilient opponent in battle."
		]
	},
	"blacephalon": {
		"pokemon_name": "blacephalon",
		"dex_info": [
			"Blacephalon is an Ultra Beast that causes explosions with its head, often using them to surprise and confuse its enemies.",
			"It’s known for its flashy and unpredictable attacks, often leaving its foes dazed and disoriented.",
			"This Pokémon’s explosive power and showy tactics make it a dangerous and unpredictable fighter, feared by those who face it."
		]
	},
	"zeraora": {
		"pokemon_name": "zeraora",
		"dex_info": [
			"Zeraora is a lightning-fast Pokémon that can generate powerful electric currents from its claws, often striking before its enemies can react.",
			"It’s known for its incredible speed and agility, making it nearly impossible to hit in battle.",
			"This Pokémon’s lightning-fast attacks and electric abilities make it a formidable opponent, capable of taking down foes in the blink of an eye."
		]
	},
	"meltan": {
		"pokemon_name": "meltan",
		"dex_info": [
			"Meltan is a mysterious Pokémon that can dissolve metal and absorb it into its body, often using it to grow stronger.",
			"It’s known for its curious nature, often attracted to anything made of metal.",
			"This Pokémon’s ability to absorb metal and its enigmatic origins make it a unique and intriguing figure in the Pokémon world."
		]
	},
	"melmetal": {
		"pokemon_name": "melmetal",
		"dex_info": [
			"Melmetal is the evolved form of Meltan, and it can generate massive amounts of energy by rotating its arms, often using it to unleash devastating attacks.",
			"It’s said to be incredibly strong, capable of crushing anything in its path with its powerful fists.",
			"This Pokémon’s immense power and ability to generate energy make it a fearsome and respected figure, often regarded as a legendary being."
		]
	},
		"grookey": {
		"pokemon_name": "grookey",
		"dex_info": [
			"Grookey uses a stick to tap out rhythms on tree trunks, which it uses to communicate with others and express its emotions.",
			"It’s known for its cheerful and energetic personality, often seen drumming on anything it can find.",
			"This Pokémon’s rhythmic drumming is both a form of communication and a way to spread its infectious energy to those around it."
		]
	},
	"thwackey": {
		"pokemon_name": "thwackey",
		"dex_info": [
			"Thwackey wields two sticks, using them to create complex rhythms that boost its spirits and those of its allies.",
			"It’s a master of drumming, often using its rhythm to inspire and lead other Pokémon in battle.",
			"This Pokémon’s drumming skills are unmatched, and it uses its rhythmic abilities to motivate its team and overwhelm its opponents."
		]
	},
	"rillaboom": {
		"pokemon_name": "rillaboom",
		"dex_info": [
			"Rillaboom controls its drum with great skill, using the sound waves to attack and defend with incredible power.",
			"It’s known for its strong leadership qualities, often acting as the protector of its group.",
			"This Pokémon’s drumming is not just for show—its beats can create shockwaves that can knock out enemies and shield allies."
		]
	},
	"scorbunny": {
		"pokemon_name": "scorbunny",
		"dex_info": [
			"Scorbunny’s powerful legs allow it to run and jump at incredible speeds, leaving a trail of flames in its wake.",
			"It’s full of energy and always ready to play, often using its fiery kicks to show off in battle.",
			"This Pokémon’s fiery spirit and athletic abilities make it a fast and formidable opponent, capable of outmaneuvering its foes with ease."
		]
	},
	"raboot": {
		"pokemon_name": "raboot",
		"dex_info": [
			"Raboot trains constantly to improve its kicking techniques, using its powerful legs to deliver precise and fiery strikes.",
			"It’s known for its serious demeanor and focus on perfecting its battle skills.",
			"This Pokémon’s disciplined approach to training makes it a force to be reckoned with, capable of delivering devastating kicks."
		]
	},
	"cinderace": {
		"pokemon_name": "cinderace",
		"dex_info": [
			"Cinderace is a master of using its powerful legs to control fireballs, often scoring goals and hitting targets with pinpoint accuracy.",
			"It’s known for its strong sense of justice, often stepping in to protect those in need.",
			"This Pokémon’s fiery kicks and impressive athleticism make it a star on the battlefield, capable of turning the tide of any match."
		]
	},
	"sobble": {
		"pokemon_name": "sobble",
		"dex_info": [
			"Sobble blends into its surroundings when it’s nervous or scared, often disappearing completely in water.",
			"It’s a timid Pokémon that cries easily, but its tears are so potent that they can make others cry as well.",
			"This Pokémon’s ability to camouflage itself and its emotional nature make it both a tricky and endearing companion."
		]
	},
	"drizzile": {
		"pokemon_name": "drizzile",
		"dex_info": [
			"Drizzile is a cunning and tactical Pokémon, often setting traps for its opponents and using water to its advantage.",
			"It’s known for its resourcefulness, often using the environment to hide and launch surprise attacks.",
			"This Pokémon’s strategic thinking and ability to blend into its surroundings make it a formidable opponent in battle."
		]
	},
	"inteleon": {
		"pokemon_name": "inteleon",
		"dex_info": [
			"Inteleon is a master of precision, using its sharp mind and water-based attacks to take down foes with perfect accuracy.",
			"It’s known for its calm and collected demeanor, often outsmarting its opponents with ease.",
			"This Pokémon’s sniper-like skills and strategic approach to battle make it a highly respected and feared fighter."
		]
	},
	"skwovet": {
		"pokemon_name": "skwovet",
		"dex_info": [
			"Skwovet is always stuffing its cheeks with berries, which it stores for later. It’s known for its greedy nature.",
			"It’s often seen searching for food, hoarding as much as it can to prepare for tough times.",
			"This Pokémon’s love of food and its habit of storing berries make it a common sight in forests and fields."
		]
	},
	"greedent": {
		"pokemon_name": "greedent",
		"dex_info": [
			"Greedent’s cheeks are always full, and it can often be found burying berries to save for later.",
			"It’s known for its gluttonous appetite, often eating more than it can handle.",
			"This Pokémon’s habit of overeating and storing food makes it a bit of a hoarder, but it’s always prepared for anything."
		]
	},
	"rookidee": {
		"pokemon_name": "rookidee",
		"dex_info": [
			"Rookidee is a brave and determined Pokémon, often challenging opponents much larger than itself.",
			"It’s known for its fearlessness, often diving headfirst into battle without hesitation.",
			"This Pokémon’s bold nature and strong will make it a fierce and unyielding fighter, always ready to prove its strength."
		]
	},
	"corvisquire": {
		"pokemon_name": "corvisquire",
		"dex_info": [
			"Corvisquire is a skilled flier, using its sharp talons and beak to strike with precision and power.",
			"It’s known for its intelligence, often outmaneuvering its opponents in the air.",
			"This Pokémon’s aerial abilities and sharp mind make it a formidable opponent, capable of taking down foes with swift and calculated strikes."
		]
	},
	"corviknight": {
		"pokemon_name": "corviknight",
		"dex_info": [
			"Corviknight is a powerful and imposing Pokémon, often serving as a transport for people in Galar.",
			"It’s known for its strong wings and steel-like body, making it nearly invulnerable in battle.",
			"This Pokémon’s combination of strength, speed, and resilience makes it a respected and feared guardian in the skies of Galar."
		]
	},
	"blipbug": {
		"pokemon_name": "blipbug",
		"dex_info": [
			"Blipbug is highly intelligent and curious, often absorbing information about its surroundings.",
			"It’s known for its love of learning, often found studying plants and other Pokémon.",
			"This Pokémon’s inquisitive nature and keen mind make it a valuable companion for researchers and Trainers alike."
		]
	},
	"dottler": {
		"pokemon_name": "dottler",
		"dex_info": [
			"Dottler is a patient and methodical Pokémon, often spending long periods in one place while it evolves.",
			"It’s known for its psychic abilities, which it uses to protect itself and gather information.",
			"This Pokémon’s psychic powers and calm demeanor make it a steady and reliable partner, often used by Trainers to navigate difficult situations."
		]
	},
	"orbeetle": {
		"pokemon_name": "orbeetle",
		"dex_info": [
			"Orbeetle’s brain is highly developed, giving it strong psychic abilities that it uses to control and manipulate its environment.",
			"It’s known for its strategic thinking, often planning several steps ahead in battle.",
			"This Pokémon’s intelligence and psychic powers make it a master tactician, capable of outsmarting and overwhelming its opponents."
		]
	},
	"nickit": {
		"pokemon_name": "nickit",
		"dex_info": [
			"Nickit is a cunning and sneaky Pokémon, often stealing food and leaving no trace of its presence.",
			"It’s known for its quick reflexes and ability to escape from danger with ease.",
			"This Pokémon’s sly nature and agility make it a tricky and elusive opponent, often slipping away before its enemies realize what’s happened."
		]
	},
	"thievul": {
		"pokemon_name": "thievul",
		"dex_info": [
			"Thievul is a master thief, using its keen senses and speed to steal food and valuables without being caught.",
			"It’s known for its elegant and precise movements, often leaving its mark before vanishing into the night.",
			"This Pokémon’s stealth and cunning make it a feared and respected figure among those who know of its abilities."
		]
	},
	"gossifleur": {
		"pokemon_name": "gossifleur",
		"dex_info": [
			"Gossifleur’s pollen has healing properties, and it rides the wind to spread its seeds and help the land thrive.",
			"It’s known for its gentle and nurturing nature, often seen caring for plants and flowers.",
			"This Pokémon’s connection to nature and its healing abilities make it a cherished companion in the wild."
		]
	},
	"eldegoss": {
		"pokemon_name": "eldegoss",
		"dex_info": [
			"Eldegoss’s cotton-like fluff protects it from harm, and it releases soothing spores that heal the wounds of others.",
			"It’s known for its calm and serene demeanor, often bringing peace and tranquility to those around it.",
			"This Pokémon’s ability to heal and protect makes it a valuable ally in battle, often serving as a guardian for its companions."
		]
	},
	"wooloo": {
		"pokemon_name": "wooloo",
		"dex_info": [
			"Wooloo’s fleece grows back quickly, and it uses its thick wool to roll away from danger.",
			"It’s known for its docile nature, often following its Trainer around with a gentle and trusting demeanor.",
			"This Pokémon’s soft fleece and calm personality make it a beloved companion, often seen in peaceful pastures and fields."
		]
	},
	"dubwool": {
		"pokemon_name": "dubwool",
		"dex_info": [
			"Dubwool’s thick, springy wool provides excellent protection, allowing it to charge at enemies with great force.",
			"It’s known for its strong and sturdy build, often using its wool to cushion its powerful headbutts.",
			"This Pokémon’s strength and resilience make it a formidable opponent, capable of taking on even the toughest challenges."
		]
	},
	"chewtle": {
		"pokemon_name": "chewtle",
		"dex_info": [
			"Chewtle’s strong jaws can crush hard berries and rocks, and it often challenges others to show off its strength.",
			"It’s known for its aggressive nature, often biting at anything that comes too close.",
			"This Pokémon’s powerful bite and tenacious spirit make it a tough and determined fighter, always ready to prove itself."
		]
	},
	"drednaw": {
		"pokemon_name": "drednaw",
		"dex_info": [
			"Drednaw’s jaws can bite through steel, and it’s known for its fearsome temper and powerful attacks.",
			"It’s often seen patrolling rivers and lakes, using its strength to defend its territory.",
			"This Pokémon’s immense power and tough exterior make it a formidable force, feared by those who cross its path."
		]
	},
	"yamper": {
		"pokemon_name": "yamper",
		"dex_info": [
			"Yamper loves to chase after anything that moves, and it can generate electricity by running.",
			"It’s known for its playful and energetic personality, often seen herding Pokémon and playing with its Trainer.",
			"This Pokémon’s cheerful demeanor and electric abilities make it a lively and loyal companion, always ready for action."
		]
	},
	"boltund": {
		"pokemon_name": "boltund",
		"dex_info": [
			"Boltund’s legs are strong and fast, allowing it to run at incredible speeds and generate powerful electric shocks.",
			"It’s known for its loyalty and determination, often going to great lengths to protect its Trainer.",
			"This Pokémon’s speed and electric power make it a formidable opponent, capable of outrunning and overwhelming its foes with ease."
		]
	},
	"rolycoly": {
		"pokemon_name": "rolycoly",
		"dex_info": [
			"Rolycoly rolls around using the coal on its body, which it burns to produce energy and navigate dark caves.",
			"It’s known for its sturdy build and ability to withstand harsh environments, often seen exploring mines and tunnels.",
			"This Pokémon’s ability to generate heat and its tough exterior make it a reliable and enduring companion in rocky terrain."
		]
	},
	"carkol": {
		"pokemon_name": "carkol",
		"dex_info": [
			"Carkol’s body is covered in coal, which it burns to move faster and produce intense heat during battle.",
			"It’s known for its powerful fire-based attacks, often using its speed and heat to overwhelm opponents.",
			"This Pokémon’s fiery nature and coal-covered body make it a formidable fighter, capable of burning through any obstacle in its path."
		]
	},
	"coalossal": {
		"pokemon_name": "coalossal",
		"dex_info": [
			"Coalossal’s massive body is fueled by coal, and it can create powerful explosions by igniting the coal within.",
			"It’s known for its incredible strength and resilience, often using its fiery attacks to protect its territory.",
			"This Pokémon’s immense size and fiery power make it a dominant force, capable of leveling mountains and scorching the earth with its heat."
		]
	},
	"applin": {
		"pokemon_name": "applin",
		"dex_info": [
			"Applin hides inside an apple, using the fruit as a disguise to avoid predators while it waits to evolve.",
			"It’s known for its sweet aroma, often attracting other Pokémon to the apple it inhabits.",
			"This Pokémon’s clever use of its apple home and its ability to blend in make it a tricky and elusive creature."
		]
	},
	"flapple": {
		"pokemon_name": "flapple",
		"dex_info": [
			"Flapple uses its apple peel wings to glide through the air, spitting acidic juice at its enemies.",
			"It’s known for its speed and agility, often attacking from above with quick and precise strikes.",
			"This Pokémon’s combination of flight and acidic attacks make it a dangerous and unpredictable opponent, often catching its foes off guard."
		]
	},
	"appletun": {
		"pokemon_name": "appletun",
		"dex_info": [
			"Appletun’s body is made of sweet, sticky syrup, which it uses to lure in prey and protect itself.",
			"It’s known for its gentle nature, often sharing its syrup with other Pokémon and humans.",
			"This Pokémon’s delicious aroma and syrupy body make it a beloved companion, often seen in peaceful gardens and orchards."
		]
	},
	"silicobra": {
		"pokemon_name": "silicobra",
		"dex_info": [
			"Silicobra burrows into the ground to sleep, often hiding in sand to avoid predators and stay cool.",
			"It’s known for its ability to store moisture in its body, allowing it to survive in arid environments.",
			"This Pokémon’s sandy camouflage and ability to retain water make it a resilient and adaptable creature, often thriving in harsh deserts."
		]
	},
	"sandaconda": {
		"pokemon_name": "sandaconda",
		"dex_info": [
			"Sandaconda’s body is covered in sand, which it can whip up into powerful sandstorms to protect itself and attack enemies.",
			"It’s known for its ability to coil and constrict its prey, often using its sand-covered body to smother and overwhelm opponents.",
			"This Pokémon’s control over sand and its powerful constriction make it a dangerous and formidable opponent, feared by all who face it."
		]
	},
		"cramorant": {
		"pokemon_name": "cramorant",
		"dex_info": [
			"Cramorant dives into the water to catch prey, and it sometimes accidentally swallows Pikachu or Arrokuda.",
			"It’s known for its gluttonous appetite, often stuffing its beak with whatever it can catch.",
			"This Pokémon’s reckless nature and strong hunting instincts make it both a formidable and unpredictable opponent."
		]
	},
	"arrokuda": {
		"pokemon_name": "arrokuda",
		"dex_info": [
			"Arrokuda’s sharp fangs can tear through flesh, and it swims at high speeds to ram into its prey.",
			"It’s known for its fast swimming and aggressive nature, often attacking anything that moves.",
			"This Pokémon’s speed and sharp teeth make it a dangerous hunter, always ready to strike at a moment’s notice."
		]
	},
	"barraskewda": {
		"pokemon_name": "barraskewda",
		"dex_info": [
			"Barraskewda’s streamlined body allows it to swim at incredible speeds, making it one of the fastest Pokémon in the water.",
			"It’s known for its powerful thrusts, often skewering its prey with its sharp jaw.",
			"This Pokémon’s speed and sharp jaws make it a fearsome predator, capable of taking down even the strongest foes."
		]
	},
	"toxel": {
		"pokemon_name": "toxel",
		"dex_info": [
			"Toxel stores poison in its body and releases it through its skin when it feels threatened.",
			"It’s known for its rebellious nature, often shocking those who try to approach it.",
			"This Pokémon’s toxic nature and electric abilities make it both a tricky and dangerous companion."
		]
	},
	"toxtricity": {
		"pokemon_name": "toxtricity",
		"dex_info": [
			"Toxtricity’s electric guitar-like body can generate powerful sounds and vibrations that overwhelm its foes.",
			"It’s known for its punk rock attitude, often causing trouble with its loud and aggressive behavior.",
			"This Pokémon’s electric power and rebellious nature make it a formidable fighter, capable of unleashing devastating sound-based attacks."
		]
	},
	"sizzlipede": {
		"pokemon_name": "sizzlipede",
		"dex_info": [
			"Sizzlipede’s body is covered in fiery scales that it uses to defend itself and burn its prey.",
			"It’s known for its aggressive nature, often attacking anything that gets too close with its fiery body.",
			"This Pokémon’s burning scales and fierce demeanor make it a dangerous opponent, capable of setting its enemies ablaze."
		]
	},
	"centiskorch": {
		"pokemon_name": "centiskorch",
		"dex_info": [
			"Centiskorch’s body is so hot that it can melt steel, and it uses its long, fiery body to wrap around and incinerate its prey.",
			"It’s known for its powerful fire attacks, often leaving a trail of scorched earth in its wake.",
			"This Pokémon’s fiery body and intense heat make it a formidable force, capable of reducing anything in its path to ashes."
		]
	},
	"clobbopus": {
		"pokemon_name": "clobbopus",
		"dex_info": [
			"Clobbopus loves to fight, using its strong, stretchy arms to grapple and throw its opponents.",
			"It’s known for its curious nature, often testing its strength against anything it encounters.",
			"This Pokémon’s fighting spirit and strong arms make it a tough and determined opponent, always ready to challenge anyone who crosses its path."
		]
	},
	"grapploct": {
		"pokemon_name": "grapploct",
		"dex_info": [
			"Grapploct is a master of martial arts, using its powerful tentacles to execute precise and crushing moves.",
			"It’s known for its relentless fighting style, often battling until its opponent is completely subdued.",
			"This Pokémon’s grappling techniques and powerful limbs make it a formidable fighter, capable of taking down even the strongest foes."
		]
	},
	"sinistea": {
		"pokemon_name": "sinistea",
		"dex_info": [
			"Sinistea is a ghost that inhabits a teacup, and it can steal the life force of those who drink from it.",
			"It’s known for its eerie presence, often hiding in plain sight until it’s too late for its victim.",
			"This Pokémon’s ghostly nature and ability to drain life make it a feared and mysterious figure, often haunting those who are careless."
		]
	},
	"polteageist": {
		"pokemon_name": "polteageist",
		"dex_info": [
			"Polteageist’s tea is said to have a rich flavor, but drinking it can be dangerous due to its ability to possess others.",
			"It’s known for its ability to hide in teapots, often tricking people into drinking its cursed tea.",
			"This Pokémon’s ghostly powers and deceptive nature make it a tricky and dangerous companion, often leading to unfortunate fates for those who underestimate it."
		]
	},
	"hatenna": {
		"pokemon_name": "hatenna",
		"dex_info": [
			"Hatenna can sense the emotions of others, and it dislikes being around people who are overly emotional.",
			"It’s known for its calm and serene demeanor, often retreating to quiet places to avoid stress.",
			"This Pokémon’s sensitivity to emotions and its desire for peace make it a gentle and reserved companion, often seeking solitude to maintain its tranquility."
		]
	},
	"hattrem": {
		"pokemon_name": "hattrem",
		"dex_info": [
			"Hattrem uses its psychic powers to calm others, often soothing those who are angry or upset.",
			"It’s known for its ability to manipulate emotions, often using its powers to bring peace to its surroundings.",
			"This Pokémon’s calming influence and psychic abilities make it a valuable ally, capable of diffusing tense situations with ease."
		]
	},
	"hatterene": {
		"pokemon_name": "hatterene",
		"dex_info": [
			"Hatterene’s psychic powers are incredibly strong, and it can read the emotions of others to predict their actions.",
			"It’s known for its reclusive nature, often avoiding contact with others to protect its own peace of mind.",
			"This Pokémon’s powerful psychic abilities and sensitivity to emotions make it a formidable and enigmatic figure, often shrouded in mystery."
		]
	},
	"impidimp": {
		"pokemon_name": "impidimp",
		"dex_info": [
			"Impidimp loves to cause mischief, often stealing items and playing pranks on people and Pokémon alike.",
			"It’s known for its mischievous nature, often using its small size to slip through cracks and create chaos.",
			"This Pokémon’s playful and devious personality makes it a tricky and unpredictable companion, often leaving a trail of trouble wherever it goes."
		]
	},
	"morgrem": {
		"pokemon_name": "morgrem",
		"dex_info": [
			"Morgrem uses its deceptive appearance to lure in opponents, then strikes with its sharp claws when they least expect it.",
			"It’s known for its cunning and sly nature, often using trickery to get the upper hand in battle.",
			"This Pokémon’s deceptive tactics and sharp mind make it a formidable opponent, often outwitting its foes with ease."
		]
	},
	"grimmsnarl": {
		"pokemon_name": "grimmsnarl",
		"dex_info": [
			"Grimmsnarl’s hair can harden into powerful spikes, which it uses to overwhelm its enemies in battle.",
			"It’s known for its intimidating appearance and brute strength, often using its muscular body to crush its opponents.",
			"This Pokémon’s combination of strength, intimidation, and cunning make it a dangerous and feared figure, capable of taking down even the most powerful foes."
		]
	},
	"obstagoon": {
		"pokemon_name": "obstagoon",
		"dex_info": [
			"Obstagoon is known for its defiant attitude, often taunting its opponents and daring them to attack.",
			"It’s a fierce fighter, often using its tough body to block and counter enemy attacks.",
			"This Pokémon’s rebellious nature and powerful moves make it a formidable opponent, always ready to stand its ground and fight back."
		]
	},
	"perrserker": {
		"pokemon_name": "perrserker",
		"dex_info": [
			"Perrserker’s claws are incredibly sharp, and it uses them to slash through anything in its way.",
			"It’s known for its fierce and aggressive nature, often charging into battle with reckless abandon.",
			"This Pokémon’s warrior spirit and sharp claws make it a formidable and feared fighter, often leaving a trail of destruction in its wake."
		]
	},
	"cursola": {
		"pokemon_name": "cursola",
		"dex_info": [
			"Cursola is the spirit of a coral reef that has passed away, and it haunts the seas with its ghostly presence.",
			"It’s known for its ability to drain life energy from anything that touches it, often leaving its victims weakened and disoriented.",
			"This Pokémon’s eerie appearance and life-draining abilities make it a feared and respected figure in the ocean, often regarded as a guardian of the dead."
		]
	},
	"sirfetchd": {
		"pokemon_name": "sirfetchd",
		"dex_info": [
			"Sirfetch’d is a noble and honorable fighter, often using its sharp leek as a lance in battle.",
			"It’s known for its chivalrous nature, often stepping in to protect those who are weaker.",
			"This Pokémon’s sense of honor and its powerful lance make it a respected and feared knight, always ready to defend the helpless."
		]
	},
	"mrrime": {
		"pokemon_name": "mr_rime",
		"dex_info": [
			"Mr. Rime is a master of tap dance, often using its rhythmic movements to confuse and dazzle opponents.",
			"It’s known for its artistic flair, often performing elaborate routines that leave its audience in awe.",
			"This Pokémon’s dancing skills and psychic abilities make it a formidable opponent, capable of overwhelming its foes with style and grace."
		]
	},
	"runerigus": {
		"pokemon_name": "runerigus",
		"dex_info": [
			"Runerigus is a cursed Pokémon that drags around a slab of stone, and it’s said to trap those who come too close.",
			"It’s known for its dark and mysterious nature, often hiding in ancient ruins and haunted places.",
			"This Pokémon’s curse and its connection to ancient times make it a feared and enigmatic figure, often regarded as a guardian of lost souls."
		]
	},
	"milcery": {
		"pokemon_name": "milcery",
		"dex_info": [
			"Milcery’s body is made of cream, and it’s known for its sweet and gentle nature.",
			"It’s often found in kitchens, where it’s used as an ingredient in delicious desserts.",
			"This Pokémon’s sweet aroma and creamy body make it a beloved companion, often seen in peaceful and joyful places."
		]
	},
	"alcremie": {
		"pokemon_name": "alcremie",
		"dex_info": [
			"Alcremie can produce whipped cream from its body, and it’s known for its ability to create delicious and beautiful desserts.",
			"It’s often used in celebrations, where its cream is a key ingredient in many festive dishes.",
			"This Pokémon’s ability to produce cream and its joyful personality make it a cherished companion, often associated with happiness and celebration."
		]
	},
	"falinks": {
		"pokemon_name": "falinks",
		"dex_info": [
			"Falinks is a group of six Pokémon that march in formation, and they work together to overcome any obstacle.",
			"They’re known for their strong sense of teamwork, often moving and attacking as one unit.",
			"This Pokémon’s unity and discipline make it a formidable force, capable of taking on challenges that would be impossible for a single Pokémon."
		]
	},
	"pincurchin": {
		"pokemon_name": "pincurchin",
		"dex_info": [
			"Pincurchin’s spines are filled with electricity, and it uses them to paralyze its prey.",
			"It’s known for its small size and powerful electric attacks, often surprising larger foes with its strength.",
			"This Pokémon’s spiky exterior and electric abilities make it a tricky and dangerous opponent, capable of shocking anyone who underestimates it."
		]
	},
	"snom": {
		"pokemon_name": "snom",
		"dex_info": [
			"Snom’s body is covered in icy spikes, which it uses to protect itself from predators.",
			"It’s known for its slow and careful movements, often inching its way through snowy fields.",
			"This Pokémon’s icy body and cautious nature make it a resilient and determined survivor, often thriving in the coldest environments."
		]
	},
	"frosmoth": {
		"pokemon_name": "frosmoth",
		"dex_info": [
			"Frosmoth’s wings are covered in frost, and it can create blizzards with a flap of its wings.",
			"It’s known for its elegant and graceful movements, often gliding through the air with a serene presence.",
			"This Pokémon’s icy wings and calm demeanor make it a powerful and respected figure, often seen as a guardian of the frozen lands."
		]
	},
	"stonjourner": {
		"pokemon_name": "stonjourner",
		"dex_info": [
			"Stonjourner’s body is made of massive stones, and it stands tall like a monument, watching over the land.",
			"It’s known for its incredible strength and endurance, often withstanding powerful attacks without flinching.",
			"This Pokémon’s towering presence and unyielding strength make it a formidable guardian, often regarded as an ancient protector of the land."
		]
	},
	"eiscue": {
		"pokemon_name": "eiscue",
		"dex_info": [
			"Eiscue’s head is covered in a block of ice, which it uses to protect itself from attacks.",
			"It’s known for its calm and collected demeanor, often gliding across the ice with a serene presence.",
			"This Pokémon’s icy head and peaceful nature make it a resilient and enduring companion, often thriving in the coldest environments."
		]
	},
	"indeedee": {
		"pokemon_name": "indeedee",
		"dex_info": [
			"Indeedee is known for its caring nature, often serving as a butler or caretaker for others.",
			"It’s highly attuned to the emotions of those around it, often going out of its way to help those in need.",
			"This Pokémon’s gentle and attentive personality makes it a beloved companion, often seen in peaceful and nurturing environments."
		]
	},
	"morpeko": {
		"pokemon_name": "morpeko",
		"dex_info": [
			"Morpeko’s hunger switches it between its Full Belly Mode and Hangry Mode, causing its personality to change drastically.",
			"It’s known for its love of snacking, often carrying seeds in its pockets to keep itself satisfied.",
			"This Pokémon’s dual nature and electric abilities make it a unique and unpredictable companion, often keeping its foes on their toes."
		]
	},
	"cufant": {
		"pokemon_name": "cufant",
		"dex_info": [
			"Cufant’s trunk is strong enough to lift heavy objects, and it often helps with construction work.",
			"It’s known for its friendly and hardworking nature, often assisting humans with heavy lifting.",
			"This Pokémon’s strength and helpful attitude make it a valuable partner, often seen in industrial and construction sites."
		]
	},
	"copperajah": {
		"pokemon_name": "copperajah",
		"dex_info": [
			"Copperajah’s massive body is incredibly strong, and it can flatten anything in its path with its powerful trunk.",
			"It’s known for its tough and determined personality, often taking on the hardest tasks without hesitation.",
			"This Pokémon’s immense strength and resilience make it a formidable force, capable of moving mountains and clearing obstacles with ease."
		]
	},
	"dracozolt": {
		"pokemon_name": "dracozolt",
		"dex_info": [
			"Dracozolt is a fossil Pokémon that was revived using parts of different ancient creatures, giving it a unique and powerful appearance.",
			"It’s known for its strong legs and electric abilities, often using its speed to overwhelm its opponents.",
			"This Pokémon’s unusual combination of traits and its powerful electric attacks make it a formidable and unpredictable opponent in battle."
		]
	},
	"arctozolt": {
		"pokemon_name": "arctozolt",
		"dex_info": [
			"Arctozolt is a fossil Pokémon that was revived using parts of different ancient creatures, giving it a unique and chilling appearance.",
			"It’s known for its icy breath and electric abilities, often freezing its foes before striking with powerful shocks.",
			"This Pokémon’s unusual combination of traits and its ability to freeze and shock opponents make it a dangerous and unpredictable fighter."
		]
	},
	"dracovish": {
		"pokemon_name": "dracovish",
		"dex_info": [
			"Dracovish is a fossil Pokémon that was revived using parts of different ancient creatures, giving it a unique and powerful appearance.",
			"It’s known for its strong jaws and water-based attacks, often using its bite to crush and overpower its opponents.",
			"This Pokémon’s unusual combination of traits and its powerful bite make it a formidable and unpredictable opponent in battle."
		]
	},
	"arctovish": {
		"pokemon_name": "arctovish",
		"dex_info": [
			"Arctovish is a fossil Pokémon that was revived using parts of different ancient creatures, giving it a unique and chilling appearance.",
			"It’s known for its icy breath and water-based attacks, often freezing its foes before striking with powerful blasts.",
			"This Pokémon’s unusual combination of traits and its ability to freeze and overwhelm opponents make it a dangerous and unpredictable fighter."
		]
	},
	"duraludon": {
		"pokemon_name": "duraludon",
		"dex_info": [
			"Duraludon’s body is made of a lightweight but incredibly durable metal, making it both fast and resilient in battle.",
			"It’s known for its powerful steel-based attacks, often overwhelming its opponents with sheer force.",
			"This Pokémon’s tough exterior and strong attacks make it a formidable force, often regarded as a protector of its territory."
		]
	},
	"dreepy": {
		"pokemon_name": "dreepy",
		"dex_info": [
			"Dreepy is a ghostly Pokémon that haunts old battlefields, often seen floating silently through the air.",
			"It’s known for its stealthy nature, often using its ghostly abilities to sneak up on its enemies.",
			"This Pokémon’s eerie presence and ghostly powers make it a tricky and unpredictable opponent, often catching its foes off guard."
		]
	},
	"drakloak": {
		"pokemon_name": "drakloak",
		"dex_info": [
			"Drakloak is known for its fast and stealthy movements, often carrying Dreepy on its head as it hunts for prey.",
			"It’s a loyal Pokémon that often protects and guides younger Dreepy, using its speed and power to keep them safe.",
			"This Pokémon’s strong bond with Dreepy and its ghostly abilities make it a formidable and dependable fighter, often leading the charge in battle."
		]
	},
	"dragapult": {
		"pokemon_name": "dragapult",
		"dex_info": [
			"Dragapult launches Dreepy like missiles at its opponents, using its incredible speed to outmaneuver and overwhelm its foes.",
			"It’s known for its powerful Dragon-type attacks and its strong bond with the Dreepy it carries.",
			"This Pokémon’s combination of speed, power, and teamwork make it a feared and respected figure in the Pokémon world, often regarded as a master of the skies."
		]
	},
	"zacian": {
		"pokemon_name": "zacian",
		"dex_info": [
			"Zacian is a legendary Pokémon that wields a sword, and it’s said to have saved the Galar region in ancient times.",
			"It’s known for its grace and strength, often fighting with a noble and honorable spirit.",
			"This Pokémon’s legendary status and powerful sword make it a revered and feared figure, often regarded as the protector of the Galar region."
		]
	},
	"zamazenta": {
		"pokemon_name": "zamazenta",
		"dex_info": [
			"Zamazenta is a legendary Pokémon that uses a shield to protect itself and others, and it’s said to have saved the Galar region in ancient times.",
			"It’s known for its unbreakable defense and its willingness to fight for those who cannot defend themselves.",
			"This Pokémon’s legendary status and powerful shield make it a revered and respected figure, often regarded as the guardian of the Galar region."
		]
	},
	"eternatus": {
		"pokemon_name": "eternatus",
		"dex_info": [
			"Eternatus is a mysterious and powerful Pokémon that is said to be the source of Dynamax energy in the Galar region.",
			"It’s known for its immense size and overwhelming power, often causing destruction wherever it goes.",
			"This Pokémon’s connection to Dynamax and its fearsome power make it a legendary figure, often regarded as a force of chaos and destruction."
		]
	},
	"kubfu": {
		"pokemon_name": "kubfu",
		"dex_info": [
			"Kubfu is a determined and courageous Pokémon, often training hard to improve its martial arts skills.",
			"It’s known for its strong sense of justice and its willingness to protect others, even at the cost of its own safety.",
			"This Pokémon’s fighting spirit and determination make it a formidable and respected figure, often regarded as a warrior in training."
		]
	},
	"urshifu": {
		"pokemon_name": "urshifu",
		"dex_info": [
			"Urshifu is a master of martial arts, and it’s known for its powerful and precise strikes, often overwhelming its opponents with sheer force.",
			"It’s a disciplined and honorable fighter, often using its skills to protect the weak and uphold justice.",
			"This Pokémon’s mastery of martial arts and its strong sense of justice make it a revered and feared figure, often regarded as a warrior of legend."
		]
	},
	"zarude": {
		"pokemon_name": "zarude",
		"dex_info": [
			"Zarude is a wild and aggressive Pokémon that lives deep in the forest, often using its vines to swing from tree to tree.",
			"It’s known for its strong survival instincts and its fierce protectiveness of its territory.",
			"This Pokémon’s connection to the forest and its powerful fighting abilities make it a formidable and feared figure, often regarded as the guardian of the jungle."
		]
	},
	"regieleki": {
		"pokemon_name": "regieleki",
		"dex_info": [
			"Regieleki is a legendary Pokémon that can generate massive amounts of electricity, often using its power to overwhelm its opponents.",
			"It’s known for its incredible speed and its ability to harness and control electrical energy.",
			"This Pokémon’s legendary status and electric abilities make it a revered and feared figure, often regarded as a master of electricity."
		]
	},
	"regidrago": {
		"pokemon_name": "regidrago",
		"dex_info": [
			"Regidrago is a legendary Pokémon that can harness the power of dragons, often using its energy to unleash devastating attacks.",
			"It’s known for its connection to ancient dragons and its ability to control and manipulate dragon energy.",
			"This Pokémon’s legendary status and dragon abilities make it a revered and feared figure, often regarded as a master of dragon power."
		]
	},
	"glastrier": {
		"pokemon_name": "glastrier",
		"dex_info": [
			"Glastrier is a powerful and icy Pokémon that is known for its strength and resilience, often using its ice-based attacks to overwhelm its foes.",
			"It’s known for its cold and stoic demeanor, often showing little emotion as it charges into battle.",
			"This Pokémon’s icy exterior and powerful attacks make it a formidable and respected figure, often regarded as a master of ice."
		]
	},
	"spectrier": {
		"pokemon_name": "spectrier",
		"dex_info": [
			"Spectrier is a ghostly and swift Pokémon that is known for its speed and agility, often using its ghostly powers to evade and confuse its foes.",
			"It’s known for its eerie presence and its ability to move through the shadows without making a sound.",
			"This Pokémon’s ghostly nature and incredible speed make it a feared and respected figure, often regarded as a master of the shadows."
		]
	},
	"calyrex": {
		"pokemon_name": "calyrex",
		"dex_info": [
			"Calyrex is a legendary Pokémon that is said to have once ruled over Galar, known for its wisdom and power.",
			"It’s known for its ability to control and guide other Pokémon, often using its psychic powers to influence the world around it.",
			"This Pokémon’s legendary status and psychic abilities make it a revered and respected figure, often regarded as a wise and just ruler."
		]
	},
	
}
