
--- Pre-defined General Sound Groups
--
--  @topic groups


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

--- Piano sounds.
--
--  @sndgroup sounds.piano
--  @snd piano
sounds.piano = SoundGroup({
	"piano",
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

--- Zipper sounds.
--
--  @sndgroup sounds.zipper
--  @snd zipper
sounds.zipper = SoundGroup({
	"zipper",
})
