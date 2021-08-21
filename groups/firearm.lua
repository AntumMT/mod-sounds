
--- Pre-defined Firearm Sound Groups
--
--  @topic firearm_groups



--- Assualt Rifle
--
--  @section ar


--- @sndgroup sounds.ar_fire
--  @snd ar_fire_01
--  @snd ar_fire_02
--  @snd ar_fire_03
--  @snd ar_fire_04
sounds.ar_fire = SoundGroup({
	"ar_fire_01",
	"ar_fire_02",
	"ar_fire_03",
	"ar_fire_04",
})



--- Pistol
--
--  @section pistol


--- @sndgroup sounds.pistol_cock
--  @snd pistol_cock_01
--  @snd pistol_cock_02
--  @snd pistol_cock_03
sounds.pistol_cock = SoundGroup({
	"pistol_cock_01",
	"pistol_cock_02",
	"pistol_cock_03",
})

--- @sndgroup sounds.pistol_fire
--  @snd pistol_fire_01
--  @snd pistol_fire_02
sounds.pistol_fire = SoundGroup({
	"pistol_fire_01",
	"pistol_fire_02",
})

--- @sndgroup sounds.pistol_reload
--  @snd pistol_reload
sounds.pistol_reload = SoundGroup({
	"pistol_reload",
})

--- <br>
--
--  Includes:
--
--  - `sounds.pistol_cock`
--  - `sounds.pistol_fire`
--  - `sounds.pistol_reload`
--
-- @sndgroup sounds.pistol
sounds.pistol = sounds.pistol_cock + sounds.pistol_fire + sounds.pistol_reload



--- Rifle
--
--  @section rifle


--- @sndgroup sounds.rifle_cock
--  @snd rifle_cock_01
--  @snd rifle_cock_02
sounds.rifle_cock = SoundGroup({
	"rifle_cock_01",
	"rifle_cock_02",
})



--- Shotgun
--
--  @section shotgun


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
