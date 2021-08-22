
--- Pre-defined Creature Sound Groups
--
--  @topic creature_groups



--- Ghost
--
--  @section ghost


--- @sndgroup sounds.ghost
--  @snd ghost_01
--  @snd ghost_02
sounds.ghost = iSoundGroup({
	"ghost_01",
	"ghost_02",
})

--- @sndgroup sounds.ghost_damage
--  @snd ghost_damage
sounds.ghost_damage = iSoundGroup({
	"ghost_damage",
})

--- @sndgroup sounds.ghost
--  @snd ghost_death
sounds.ghost_death = iSoundGroup({
	"ghost_death",
})



--- Undead
--
--  @section undead


--- @sndgroup sounds.skeleton
--  @snd skeleton_bones
sounds.skeleton = iSoundGroup({
	"skeleton_bones",
})

--- @sndgroup sounds.undead_moan
--  @snd undead_moan_01
--  @snd undead_moan_02
--  @snd undead_moan_03
--  @snd undead_moan_04
sounds.undead_moan = iSoundGroup({
	"undead_moan_01",
	"undead_moan_02",
	"undead_moan_03",
	"undead_moan_04",
})

--- @sndgroup sounds.zombie_damage
--  @snd zombie_damage
sounds.zombie_damage = iSoundGroup({
	"zombie_damage",
})

--- @sndgroup sounds.zombie_death
--  @snd zombie_death
sounds.zombie_death = iSoundGroup({
	"zombie_death",
})

--- @sndgroup sounds.zombie_growl
--  @snd zombie_growl_01
--  @snd zombie_growl_02
--  @snd zombie_growl_03
sounds.zombie_growl = iSoundGroup({
	"zombie_growl_01",
	"zombie_growl_02",
	"zombie_growl_03",
})

--- <br>
--
--  Includes:
--
--  - `sounds.skeleton`
--  - `sounds.undead_moan`
--  - `sounds.zombie_damage`
--  - `sounds.zombie_death`
--  - `sounds.zombie_growl`
--
--  @sndgroup sounds.undead
sounds.undead = sounds.skeleton + sounds.undead_moan + sounds.zombie_damage
	+ sounds.zombie_death + sounds.zombie_growl



--- Misc.
--
--  @section misc


--- @sndgroup sounds.laugh_evil
--  @snd laugh_evil_01
--  @snd laugh_evil_02
sounds.laugh_evil = iSoundGroup({
	"laugh_evil_01",
	"laugh_evil_02",
})
