
--- Pre-defined Sound Groups
--
--  @topic groups


--- Bird sounds.
--
--  @sndgroup sounds.bird
--  @snd bird_01
--  @snd bird_02
--  @snd bird_03
sounds.bird = SoundGroup({
	"bird_01",
	"bird_02",
	"bird_03",
})

--- Bite sounds.
--
--  @sndgroup sounds.bite
--  @snd apple_bite
sounds.bite = SoundGroup({
	"apple_bite",
})

--- Bounce sounds.
--
--  @sndgroup sounds.bounce
--  @snd boing
sounds.bounce = SoundGroup({
	"boing",
})

--- Bee sounds.
--
--  @sndgroup sounds.bee
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

--- Cat meow sounds.
--
--  @sndgroup sounds.cat_meow
--  @snd cat_meow
sounds.cat_meow = SoundGroup({
	"cat_meow",
})

--- Chicken sounds.
--
--  @sndgroup sounds.chicken
--  @snd chicken_01
--  @snd chicken_02
sounds.chicken = SoundGroup({
	"chicken_01",
	"chicken_02",
})

--- Clock sounds.
--
--  @sndgroup sounds.clock
--  @snd clock_tick
sounds.clock = SoundGroup({
	"clock_tick",
})

--- Coin sounds.
--
--  @sndgroup sounds.coin
--  @snd coin
sounds.coin = SoundGroup({
	"coin",
})

--- Cow moo sounds.
--
--  @sndgroup sounds.cow_moo
--  @snd cow_moo_01
--  @snd cow_moo_02
sounds.cow_moo = SoundGroup({
	"cow_moo_01",
	"cow_moo_02",
})

--- Coyote howl sounds.
--
--  @sndgroup sounds.coyote_howl
--  @snd coyote_howl
sounds.coyote_howl = SoundGroup({
	"coyote_howl",
})

--- Crow caw sounds.
--
--  @sndgroup sounds.crow_caw
--  @snd crow_caw
sounds.crow_caw = SoundGroup({
	"crow_caw",
})

--- Dog bark sounds.
--
--  @sndgroup sounds.dog_bark
--  @snd dog_bark
sounds.dog_bark = SoundGroup({
	"dog_bark",
})

--- Duck quack sounds.
--
--  @sndgroup sounds.duck_quack
--  @snd duck_quack
sounds.duck_quack = SoundGroup({
	"duck_quack",
})

--- Elephant sounds.
--
--  @sndgroup sounds.elephant
--  @snd elephant
sounds.elephant = SoundGroup({
	"elephant",
})

--- Entity hit sounds.
--
--  @sndgroup sounds.entity_hit
--  @snd entity_hit
sounds.entity_hit = SoundGroup({
	"entity_hit",
})

--- Explosion sounds.
--
--  @sndgroup sounds.explosion
--  @snd explosion
sounds.explosion = SoundGroup({
	"explosion",
})

--- Frog sounds.
--
--  @sndgroup sounds.frog
--  @snd frog
sounds.frog = SoundGroup({
	"frog",
})

--- Fuse sounds.
--
--  @sndgroup sounds.fuse
--  @snd fuse
sounds.fuse = SoundGroup({
	"fuse",
})

--- Gallop sounds.
--
--  @sndgroup sounds.gallop
--  @snd gallop_01
--  @snd gallop_02
sounds.gallop = SoundGroup({
	"gallop_01",
	"gallop_02",
})

--- Goat bleat sounds.
--
--  @sndgroup sounds.goat_bleat
--  @snd goat_bleat_01
--  @snd goat_bleat_02
--  @snd goat_bleat_03
sounds.goat_bleat = SoundGroup({
	"goat_bleat_01",
	"goat_bleat_02",
	"goat_bleat_03",
})

--- Grasshopper sounds.
--
--  @sndgroup sounds.grasshopper
--  @snd grasshopper
sounds.grasshopper = SoundGroup({
	"grasshopper",
})

--- Horse neigh sounds.
--
--  @sndgroup sounds.horse_neigh
--  @snd horse_neigh_01
--  @snd horse_neigh_02
sounds.horse_neigh = SoundGroup({
	"horse_neigh_01",
	"horse_neigh_02",
})

--- Horse snort sounds.
--
--  @sndgroup sounds.horse_snort
--  @snd horse_snort_01
--  @snd horse_snort_02
sounds.horse_snort = SoundGroup({
	"horse_snort_01",
	"horse_snort_02",
})

--- Horse sounds.
--
--  Includes sounds from `sounds.horse_neigh` & `sounds.horse_snort`.
--
--  @sndgroup sounds.horse
sounds.horse = sounds.horse_neigh + sounds.horse_snort

--- Hyena sounds.
--
--  @sndgroup sounds.hyena
--  @snd hyena_01
--  @snd hyena_02
--  @snd hyena_03
sounds.hyena = SoundGroup({
	"hyena_01",
	"hyena_02",
	"hyena_03",
})

--- Jaguar sounds.
--
--  @sndgroup sounds.jaguar
--  @snd jaguar_saw
sounds.jaguar = SoundGroup({
	"jaguar_saw",
})

--- Lion sounds.
--
--  @sndgroup sounds.lion
--  @snd lion_bellow
sounds.lion = SoundGroup({
	"lion_bellow",
})

--- Mouse sounds.
--
--  @sndgroup sounds.mouse
--  @snd mouse
sounds.mouse = SoundGroup({
	"mouse",
})

--- Owl sounds.
--
--  @sndgroup sounds.owl
--  @snd owl_hoot
sounds.owl = SoundGroup({
	"owl_hoot",
})

--- Peacock sounds.
--
--  @sndgroup sound.peacock
--  @snd peacock
sounds.peacock = SoundGroup({
	"peacock",
})

--- Pencil erase sounds.
--
--  @sndgroup sounds.pencil_erase
--  @snd pencil_erase
sounds.pencil_erase = SoundGroup({
 "pencil_erase",
})

--- Pencil write sounds.
--
--  @sndgroup sounds.pencil_write
--  @snd pencil_write
sounds.pencil_write = SoundGroup({
	"pencil_write",
})

--- Pencil sounds.
--
--  Includes sounds from `sounds.pencil_erase` & `sounds.pencil_write`.
--
--  @sndgroup sounds.pencil
sounds.pencil = sounds.pencil_erase + sounds.pencil_write

--- Penguin sounds.
--
--  @sndgroup sounds.penguin
--  @snd penguin_01
--  @snd penguin_02
sounds.penguin = SoundGroup({
	"penguin_01",
	"penguin_02",
})

--- Piano sounds.
--
--  @sndgroup sounds.piano
--  @snd piano
sounds.piano = SoundGroup({
	"piano",
})

--- Pig sounds.
--
--  @sndgroup sounds.pig
--  @snd pig
sounds.pig = SoundGroup({
	"pig",
})

--- Pigeon sounds.
--
--  @sndgroup sounds.pigeon
--  @snd pigeon
sounds.pigeon = SoundGroup({
	"pigeon",
})

--- Puppy bark sounds.
--
--  @sndgroup sounds.puppy_bark
--  @snd puppy_bark
sounds.puppy_bark = SoundGroup({
	"puppy_bark",
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

--- Sheep sounds.
--
--  @sndgroup sounds.sheep
--  @snd sheep
sounds.sheep = SoundGroup({
	"sheep",
})

--- Skeleton sounds.
--
--  @sndgroup sounds.skeleton
--  @snd skeleton_bones
sounds.skeleton = SoundGroup({
	"skeleton_bones",
})

--- Tiger sounds.
--
--  @sndgroup sounds.tiger
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

--- Undead moan sounds.
--
--  @sndgroup sounds.undead_moan
--  @snd undead_moan_01
--  @snd undead_moan_02
--  @snd undead_moan_03
--  @snd undead_moan_04
sounds.undead_moan = SoundGroup({
	"undead_moan_01",
	"undead_moan_02",
	"undead_moan_03",
	"undead_moan_04",
})

--- Vulture sounds.
--
--  @sndgroup sounds.vulture
--  @snd vulture
sounds.vulture = SoundGroup({
	"vulture",
})

--- Watch sounds.
--
--  @sndgroup sounds.watch
--  @snd watch_tick
sounds.watch = SoundGroup({
	"watch_tick",
})

--- Whistle sounds.
--
--  @sndgroup sounds.whistle
--  @snd whistle
sounds.whistle = SoundGroup({
	"whistle",
})

--- Wolf howl sounds.
--
--  @sndgroup sounds.wolf_howl
--  @snd wolf_howl
sounds.wolf_howl = SoundGroup({
	"wolf_howl",
})

--- Wolf snarl sounds.
--
--  @sndgroup sounds.wolf_snarl
--  @snd wolf_snarl
sounds.wolf_snarl = SoundGroup({
	"wolf_snarl",
})

--- Wolf sounds.
--
--  Includes sounds from `sounds.wolf_howl` & `sounds.wolf_snarl`.
--
--  @sndgroup sounds.wolf
sounds.wolf = sounds.wolf_howl + sounds.wolf_snarl

--- Yak sounds.
--
--  @sndgroup sounds.yak
--  @snd yak
sounds.yak = SoundGroup({
	"yak",
})

--- Zebra sounds.
--
--  @sndgroup sounds.zebra
--  @snd zebra
sounds.zebra = SoundGroup({
	"zebra",
})

--- Zipper sounds.
--
--  @sndgroup sounds.zipper
--  @snd zipper
sounds.zipper = SoundGroup({
	"zipper",
})
