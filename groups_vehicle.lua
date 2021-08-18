
--- Pre-defined Vehicle Sound Groups
--
--  @topic vehicle_groups



--- Airplane
--
--  @section airplane


--- @sndgroup sounds.jet
--  @snd jet_ambience (loopable)
sounds.jet = SoundGroup({
	"jet_ambience",
})



--- Bicycle
--
--  @section bicycle


--- @sndgroup sounds.bicycle_bell
--  @snd bicycle_bell
sounds.bicycle_bell = SoundGroup({
	"bicycle_bell",
})

--- @sndgroup sounds.bicycle_horn
--  @snd bicycle_horn
sounds.bicycle_horn = SoundGroup({
	"bicycle_horn",
})

--- @sndgroup sounds.bicycle_spokes
--  @snd bicycle_spokes
sounds.bicycle_spokes = SoundGroup({
	"bicycle_spokes",
})

--- <br>
--
--  Includes:
--
--  - `sounds.bicycle_bell`
--  - `sounds.bicycle_horn`
--  - `sounds.bicycle_spokes`
--
--  @sndgroup sounds.bicycle
sounds.bicycle = sounds.bicycle_bell + sounds.bicycle_horn + sounds.bicycle_spokes



--- Vehicle
--
--  @section vehicle


--- @sndgroup sounds.vehicle
--  @snd vehicle_motor_idle (loopable)
sounds.vehicle = SoundGroup({
	"vehicle_motor_idle",
})
