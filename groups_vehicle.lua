
--- Pre-defined Vehicle Sound Groups
--
--  @topic vehicle_groups



--- Airplane
--
--  @section airplane


--- @sndgroup sounds.airplane
--  @snd airplane_prop (loopable)
sounds.airplane = SoundGroup({
	"airplane_prop",
})

--- @sndgroup sounds.jet
--  @snd jet_ambience (loopable)
--  @snd jet_flyby
--  @snd jet_land
sounds.jet = SoundGroup({
	"jet_ambience",
	"jet_flyby",
	"jet_land",
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



--- Train
--
--  @section train


--- @sndgroup sounds.train_whistle
--  @snd train_whistle
sounds.train_whistle = SoundGroup({
	"train_whistle",
})



--- Vehicle
--
--  @section vehicle


--- @sndgroup sound.vehicle_horn
--  @snd vehicle_horn_01
--  @snd vehicle_horn_02
sounds.vehicle_horn = SoundGroup({
	"vehicle_horn_01",
	"vehicle_horn_02",
})

--- @sndgroup sounds.vehicle_motor
--  @snd car_motor (loopable)
--  @snd vehicle_motor_idle (loopable)
sounds.vehicle_motor = SoundGroup({
	"car_motor",
	"vehicle_motor_idle",
})

--- <br>
--
--  Includes:
--
--  - `sounds.vehicle_horn`
--  - `sounds.vehicle_motor`
--
--  @sndgroup sounds.vehicle
sounds.vehicle = sounds.vehicle_horn + sounds.vehicle_motor
