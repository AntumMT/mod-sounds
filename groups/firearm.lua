
--- Pre-defined Firearm Sound Groups
--
--  @topic firearm_groups



--- Assualt Rifle
--
--  @section ar


--- @sndgroup sounds.ar_burst
--  @snd ar_burst_01
--  @snd ar_burst_02
sounds.ar_burst = SoundGroup({
	"ar_burst_01",
	"ar_burst_02",
})

--- <br>
--
--  Includes:
--
--  - `sounds.ar_burst`
--
--  @sndgroup sounds.ar_fire
--  @snd ar_fire_01
--  @snd ar_fire_02
sounds.ar_fire = SoundGroup({
	"ar_fire_01",
	"ar_fire_02",
}) + sounds.ar_burst



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
--  @snd pistol_fire_03
sounds.pistol_fire = SoundGroup({
	"pistol_fire_01",
	"pistol_fire_02",
	"pistol_fire_03",
})

--- @sndgroup sounds.pistol_fire_dry
--  @snd pistol_fire_dry
sounds.pistol_fire_dry = SoundGroup({
	"pistol_fire_dry",
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
--  - `sounds.pistol_fire_dry`
--  - `sounds.pistol_reload`
--
-- @sndgroup sounds.pistol
sounds.pistol = sounds.pistol_cock + sounds.pistol_fire + sounds.pistol_fire_dry + sounds.pistol_reload



--- Ricochet
--
--  @section ricochet


--- @sndgroup = sounds.ricochet
--  @snd ricochet
sounds.ricochet = SoundGroup({
	"ricochet",
})



--- Rifle
--
--  @section rifle


--- @sndgroup sounds.rifle_cock
--  @snd rifle_cock_01
--  @snd rifle_cock_02
--  @snd rifle_cock_03
sounds.rifle_cock = SoundGroup({
	"rifle_cock_01",
	"rifle_cock_02",
	"rifle_cock_03",
})

--- @sndgroup sounds.rifle_fire
--  @snd rifle_fire_01
--  @snd rifle_fire_02
--  @snd rifle_fire_03
--  @snd rifle_fire_04
--  @snd rifle_fire_cock
sounds.rifle_fire = SoundGroup({
	"rifle_fire_01",
	"rifle_fire_02",
	"rifle_fire_03",
	"rifle_fire_04",
	"rifle_fire_cock",
})

--- @sndgroup sounds.rifle_fire_dry
--  @snd rifle_fire_dry
sounds.rifle_fire_dry = SoundGroup({
	"rifle_fire_dry",
})

--- @sndgroup sounds.rifle_small_fire
--  @snd rifle_small_fire_01
--  @snd rifle_small_fire_02
sounds.rifle_small_fire = SoundGroup({
	"rifle_small_fire_01",
	"rifle_small_fire_02",
})

--- <br>
--
--  Includes:
--
--  - `sounds.rifle_cock`
--  - `sounds.rifle_fire`
--  - `sounds.rifle_fire_dry`
--  - `sounds.rifle_small_fire`
--
--  @sndgroup sounds.rifle
sounds.rifle = sounds.rifle_cock + sounds.rifle_fire + sounds.rifle_fire_dry + sounds.rifle_small_fire



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
