
--- Pre-defined General Sound Groups
--
--  @topic groups


--- @sndgroup sounds.balloon_inflate
--  @snd balloon_inflate
sounds.balloon_inflate = SoundGroup({
	"balloon_inflate",
})

--- @sndgroup sounds.balloon_pop
--  @snd balloon_pop
sounds.balloon_pop = SoundGroup({
	"balloon_pop",
})

--- <br>
--
--  Includes:
--
--  - `sounds.balloon_inflate`
--  - `sounds.balloon_pop`
--
-- @sndgroup sounds.balloon
sounds.balloon = sounds.balloon_inflate + sounds.balloon_pop

--- @sndgroup sounds.bite
--  @snd apple_bite
sounds.bite = SoundGroup({
	"apple_bite",
})

--- @sndgroup sounds.bounce
--  @snd boing
sounds.bounce = SoundGroup({
	"boing",
})

--- @sndgroup sounds.clock
--  @snd clock_tick
sounds.clock = SoundGroup({
	"clock_tick",
})

--- @sndgroup sounds.coin
--  @snd coin
sounds.coin = SoundGroup({
	"coin",
})

--- @sndgroup sounds.door_close
--  @snd door_close
sounds.door_close = SoundGroup({
	"door_close",
})

--- @sndgroup sounds.door_creak
--  @snd door_creak
sounds.door_creak = SoundGroup({
	"door_creak",
})

--- <br>
--
--  Includes:
--
--  - `sounds.door_close`
--  - `sounds.door_creak`
--
--  @sndgroup sounds.door
sounds.door = sounds.door_close + sounds.door_creak

--- @sndgroup sounds.entity_hit
--  @snd entity_hit
sounds.entity_hit = SoundGroup({
	"entity_hit",
})

--- @sndgroup sounds.explosion
--  @snd explosion
sounds.explosion = SoundGroup({
	"explosion",
})

--- @sndgroup sounds.fuse
--  @snd fuse
sounds.fuse = SoundGroup({
	"fuse",
})

--- @sndgroup sounds.gallop
--  @snd gallop_01
--  @snd gallop_02
sounds.gallop = SoundGroup({
	"gallop_01",
	"gallop_02",
})

--- @sndgroup sounds.pencil_erase
--  @snd pencil_erase
sounds.pencil_erase = SoundGroup({
 "pencil_erase",
})

--- @sndgroup sounds.pencil_write
--  @snd pencil_write
sounds.pencil_write = SoundGroup({
	"pencil_write",
})

--- <br>
--
--  Includes:
--
--  - `sounds.pencil_erase`
--  - `sounds.pencil_write`.
--
--  @sndgroup sounds.pencil
sounds.pencil = sounds.pencil_erase + sounds.pencil_write

--- @sndgroup sounds.piano
--  @snd piano
sounds.piano = SoundGroup({
	"piano",
})

--- @sndgroup sounds.watch
--  @snd watch_tick
sounds.watch = SoundGroup({
	"watch_tick",
})

--- @sndgroup sounds.whistle
--  @snd whistle
sounds.whistle = SoundGroup({
	"whistle",
})

--- @sndgroup sounds.zipper
--  @snd zipper
sounds.zipper = SoundGroup({
	"zipper",
})
