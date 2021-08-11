
--- Pre-defined Animal Sound Groups
--
--  @topic animal_groups



--- Amphibian
--
--  @section amphibian


--- @sndgroup sounds.frog
--  @snd frog
sounds.frog = SoundGroup({
	"frog",
})



--- Bovine
--
--  @section bovine


--- @sndgroup sounds.cow_moo
--  @snd cow_moo_01
--  @snd cow_moo_02
sounds.cow_moo = SoundGroup({
	"cow_moo_01",
	"cow_moo_02",
})

--- @sndgroup sounds.yak
--  @snd yak
sounds.yak = SoundGroup({
	"yak",
})

--- Bovine Sounds
--
--  Includes sounds from:
--
--  - `sounds.cow_moo`
--  - `sounds.yak`
--
--  @sndgroup sounds.bovine
sounds.bovine = sounds.cow_moo + sounds.yak



--- Canine
--
--  @section canine


--- @sndgroup sounds.coyote_howl
--  @snd coyote_howl
sounds.coyote_howl = SoundGroup({
	"coyote_howl",
})

--- @sndgroup sounds.dog_bark
--  @snd dog_bark
sounds.dog_bark = SoundGroup({
	"dog_bark",
})

--- @sndgroup sounds.puppy_bark
--  @snd puppy_bark
sounds.puppy_bark = SoundGroup({
	"puppy_bark",
})

--- Dog sounds.
--
-- Includes sounds from:
--
--  - `sounds.dog_bark`
--  - `sounds.puppy_bark`
--
--  @sndgroup sounds.dog
sounds.dog = sounds.dog_bark + sounds.puppy_bark

--- @sndgroup sounds.hyena
--  @snd hyena_01
--  @snd hyena_02
--  @snd hyena_03
sounds.hyena = SoundGroup({
	"hyena_01",
	"hyena_02",
	"hyena_03",
})

--- @sndgroup sounds.wolf_howl
--  @snd wolf_howl
sounds.wolf_howl = SoundGroup({
	"wolf_howl",
})

--- @sndgroup sounds.wolf_snarl
--  @snd wolf_snarl
sounds.wolf_snarl = SoundGroup({
	"wolf_snarl",
})

--- Wolf sounds.
--
--  Includes:
--
--  - `sounds.wolf_howl`
--  - `sounds.wolf_snarl`
--
--  @sndgroup sounds.wolf
sounds.wolf = sounds.wolf_howl + sounds.wolf_snarl

--- Canine sounds.
--
--  Includes:
--
--  - `sounds.coyote_howl`
--  - `sounds.dog`
--  - `sounds.hyena`
--  - `sounds.wolf`
--
--  @sndgroup sounds.canine
sounds.canine = sounds.coyote_howl + sounds.dog + sounds.hyena + sounds.wolf



--- Caprine
--
--  @section caprine


--- @sndgroup sounds.goat_bleat
--  @snd goat_bleat_01
--  @snd goat_bleat_02
--  @snd goat_bleat_03
sounds.goat_bleat = SoundGroup({
	"goat_bleat_01",
	"goat_bleat_02",
	"goat_bleat_03",
})

--- @sndgroup sounds.sheep
--  @snd sheep
sounds.sheep = SoundGroup({
	"sheep",
})

--- Caprine Sounds
--
--  Includes:
--
--  - `sounds.goat_bleat`
--  - `sounds.sheep`
--
--  @sndgroup sounds.caprine
sounds.caprine = sounds.goat_bleat + sounds.sheep



--- Elephant
--
--  @section elephant


--- Elephant Sounds
--
--  @sndgroup sounds.elephant
--  @snd elephant
sounds.elephant = SoundGroup({
	"elephant",
})



--- Equine
--
--  @section equine


--- @sndgroup sounds.horse_neigh
--  @snd horse_neigh_01
--  @snd horse_neigh_02
sounds.horse_neigh = SoundGroup({
	"horse_neigh_01",
	"horse_neigh_02",
})

--- @sndgroup sounds.horse_snort
--  @snd horse_snort_01
--  @snd horse_snort_02
sounds.horse_snort = SoundGroup({
	"horse_snort_01",
	"horse_snort_02",
})

--- Horse sounds.
--
--  Includes sounds from:
--
--  - `sounds.horse_neigh`
--  - `sounds.horse_snort`
--
--  @sndgroup sounds.horse
sounds.horse = sounds.horse_neigh + sounds.horse_snort

--- @sndgroup sounds.zebra
--  @snd zebra
sounds.zebra = SoundGroup({
	"zebra",
})

--- Equine Sounds
--
--  Includes sounds from:
--
--  - `sounds.horse`
--  - `sounds.zebra`
--
--  @sndgroup sounds.equine
sounds.equine = sounds.horse + sounds.zebra



--- Feline
--
--  @section feline


--- @sndgroup sounds.cat_meow
--  @snd cat_meow
sounds.cat_meow = SoundGroup({
	"cat_meow",
})

--- @sndgroup sounds.jaguar
--  @snd jaguar_saw
sounds.jaguar = SoundGroup({
	"jaguar_saw",
})

--- @sndgroup sounds.lion
--  @snd lion_bellow
sounds.lion = SoundGroup({
	"lion_bellow",
})

--- @sndgroup sounds.tiger
--  @snd tiger_roar_01
--  @snd tiger_snarl_01
--  @snd tiger_snarl_02
--  @snd tiger_snarl_03
--  @snd tiger_snarl_04
sounds.tiger = SoundGroup({
	"tiger_roar_01",
	"tiger_snarl_01",
	"tiger_snarl_02",
	"tiger_snarl_03",
	"tiger_snarl_04",
})

--- Feline Sounds
--
--  Includes:
--
--  - `sounds.cat_meow`
--  - `sounds.jaguar`
--  - `sounds.lion`
--  - `sounds.tiger`
--
--  @sndgroup sounds.feline
sounds.feline = sounds.cat_meow + sounds.jaguar + sounds.lion + sounds.tiger



--- Fowl
--
--  @section fowl


--- @sndgroup sounds.bird
--  @snd bird_01
--  @snd bird_02
--  @snd bird_03
sounds.bird = SoundGroup({
	"bird_01",
	"bird_02",
	"bird_03",
})

--- @sndgroup sounds.chicken
--  @snd chicken_01
--  @snd chicken_02
sounds.chicken = SoundGroup({
	"chicken_01",
	"chicken_02",
})

--- @sndgroup sounds.crow_caw
--  @snd crow_caw
sounds.crow_caw = SoundGroup({
	"crow_caw",
})

--- @sndgroup sounds.duck_quack
--  @snd duck_quack
sounds.duck_quack = SoundGroup({
	"duck_quack",
})

--- @sndgroup sounds.owl
--  @snd owl_hoot
sounds.owl = SoundGroup({
	"owl_hoot",
})

--- @sndgroup sound.peacock
--  @snd peacock
sounds.peacock = SoundGroup({
	"peacock",
})

--- @sndgroup sounds.penguin
--  @snd penguin_01
--  @snd penguin_02
sounds.penguin = SoundGroup({
	"penguin_01",
	"penguin_02",
})

--- Pigeon sounds.
--
--  @sndgroup sounds.pigeon
--  @snd pigeon
sounds.pigeon = SoundGroup({
	"pigeon",
})

--- Quail sounds.
--
--  @sndgroup sounds.quail
--  @snd quail
sounds.quail = SoundGroup({
	"quail",
})

--- Rooster sounds.
--
--  @sndgroup sounds.rooster
--  @snd rooster
sounds.rooster = SoundGroup({
	"rooster",
})

--- @sndgroup sounds.vulture
--  @snd vulture
sounds.vulture = SoundGroup({
	"vulture",
})

--- Fowl Sounds
--
--  Includes sounds from:
--
--  - `sounds.bird`
--  - `sounds.chicken`
--  - `sounds.crow_caw`
--  - `sounds.duck_quack`
--  - `sounds.owl`
--  - `sounds.peacock`
--  - `sounds.penguin`
--  - `sounds.pigeon`
--  - `sounds.quail`
--  - `sounds.rooster`
--  - `sounds.vulture`
--
--  @sndgroup sounds.fowl
sounds.fowl = sounds.bird + sounds.chicken + sounds.crow_caw + sounds.duck_quack
	+ sounds.owl + sounds.peacock + sounds.penguin + sounds.pigeon + sounds.quail
	+ sounds.rooster + sounds.vulture



--- Insect
--
--  @section insect


--- @sndgroup sounds.bee
--  @snd bee
--  @snd bumble_bee_01
--  @snd bumble_bee_02
--  @snd bees
sounds.bee = SoundGroup({
	"bee",
	"bumble_bee_01",
	"bumble_bee_02",
	"bees",
})

--- @sndgroup sounds.grasshopper
--  @snd grasshopper
sounds.grasshopper = SoundGroup({
	"grasshopper",
})

--- Insect Sounds
--
--  Includes:
--
--  - `sounds.bee`
--  - `sounds.grasshopper`
--
--  @sndgroup sounds.insect
sounds.insect = sounds.bee + sounds.grasshopper



--- Rodent
--
--  @section rodent

--- @sndgroup sounds.mouse
--  @snd mouse
sounds.mouse = SoundGroup({
	"mouse",
})



--- Swine
--
--  @section swine

--- @sndgroup sounds.pig
--  @snd pig
sounds.pig = SoundGroup({
	"pig",
})
