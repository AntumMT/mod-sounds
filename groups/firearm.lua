
--- Pre-defined Firearm Sound Groups
--
--  @topic firearm_groups



--- @sndgroup sounds.firearm_cock
--  @snd firearm_cock_01
--  @snd firearm_cock_02
sounds.firearm_cock = SoundGroup({
	"firearm_cock_01",
	"firearm_cock_02",
})

--- @sndgroup sounds.pistol_fire
--  @snd pistol_fire
sounds.pistol_fire = SoundGroup({
	"pistol_fire",
})

--- @sndgroup sounds.shotgun_fire
--  @snd shotgun_fire_pump
sounds.shotgun_fire = SoundGroup({
	"shotgun_fire_pump",
})

--- @sndgroup sounds.shotgun_pump
--  @snd shotgun_pump
sounds.shotgun_pump = SoundGroup({
	"shotgun_pump",
})

--- <br>
--
--  Includes:
--
--  - `sounds.shotgun_fire`
--  - `sounds.shotgun_pump`
--
--  @sndgroup sounds.shotgun
sounds.shotgun = sounds.shotgun_fire + sounds.shotgun_pump
