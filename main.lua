
--- General Sounds
--
--  @topic general


local playing = {}
local failed = {}


-- initialize random number generator
local rand = PcgRandom(os.time())


--- Plays a sound.
--
--
--  @function sounds:play
--  @tparam string name Sound file without .ogg suffix.
--  @tparam[opt] SoundParams sp Sound parameters.
--  @treturn bool `true` if sound is available to be played.
--  @usage
--  -- create new sound groups
--  local s_group1 = SoundGroup({"sound1", "sound2"})
--  local s_group2 = SoundGroup({"modname_sound1", "modname_sound2", no_prepend=true})
--
--  -- play sound at index
--  s_group1:play(2)
--
--  -- play random sound from group
--  s_group1:play()
--
--  -- play sound with parameters
--  s_group1:play(1, {gain=1.0, max_hear_distance=100})
sounds.play = function(self, name, sp)
	local s_type = type(name)
	if s_type ~= "string" then
		sounds.log("error", "cannot play non-string type: " .. s_type)
		return false
	end

	if not sounds.cache[name] then
		if not failed[name] then
			failed[name] = true
			sounds.log("error", "\"" .. name .. "\" not available for playing")
		end

		return false
	end

	local s_handle = core.sound_play(name, sp)

	-- TODO: register check to see if sound is still playing & remove from "playing" list
	--playing[s_handle] = name

	return true
end


--- Objects
--
--  @section objects

--- Sound Group.
--
--  @table SoundGroup
--  @tfield SoundGroup:new new Constructor method (deprecated).
--  @tfield SoundGroup:count count Retrieves number of available sounds.
--  @tfield SoundGroup:play play Plays indexed or random sound.
--  @tfield bool no_prepend If set to `true`, omits prepending "sounds_" to sound filenames when played.
SoundGroup = {
	--- Constructor.
	--
	--  @function SoundGroup
	--  @tparam table def Sound definition.
	--  @treturn SoundGroup Sound group definition table.
	__init = {
		__call = function(self, def)
			def = def or {}

			for k, v in pairs(self) do
				if k ~= "new" and def[k] == nil then
					def[k] = v
				end
			end

			return def
		end
	},
	--- Creates a new sound definition (deprecated).
	--
	--  Deprecated: Use ***SoundGroup()***.
	--
	--  @function SoundGroup:new
	--  @tparam table def Definition.
	--  @usage
	--  local sdef1 = SoundGroup:new({"sound1", "sound2"})
	--  local sdef2 = SoundGroup:new({"sound3", "sound4", no_prepend=true})
	new = function(self, def)
		sounds.log("warning", "SoundGroup:new() is deprected, use SoundGroup()")

		return self(def)
	end,

	--- Retrieves number of sounds in group.
	--
	--  @function SoundGroup:count
	--  @treturn int
	count = function(self)
		local s_count = 0
		for _, idx in ipairs(self) do
			s_count = s_count + 1
		end

		return s_count
	end,

	--- Plays a sound from the group.
	--
	--  If ***idx*** is not specified, an available sound will be selected
	--  randomly from the group.
	--
	--  @function SoundGroup:play
	--  @tparam[opt] int idx Sound index.
	--  @tparam[opt] SoundParams sp Sound parameters.
	--  @note idx & sp parameters positions can be switched.
	play = function(self, idx, sp)
		local s_count = self:count()
		if s_count < 1 then
			sounds.log("error", "no sounds to play")
			return false
		end

		-- allow second parameter to be sound parameters table
		if type(idx) == "table" then
			local sp_old = sp
			sp = table.copy(idx)
			idx = sp_old
			sp_old = nil
		end

		-- play random
		if not idx then
			if s_count == 1 then
				idx = 1
			else
				idx = rand.next(1, s_count)
			end
		end

		if type(idx) ~= "number" then
			print("idx must be a number")
			return false
		end

		if idx > s_count then
			sounds.log("error", "sound index " .. idx .. " out of range: max " .. s_count)
			return false
		end

		local selected = self[idx]
		if type(selected) == "string" and self.no_prepend ~= true then
			selected = "sounds_" .. selected
		end

		return sounds:play(selected, sp)
	end,
}
setmetatable(SoundGroup, SoundGroup.__init)


--- Pre-defined sound groups
--
--  @section groups

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

--- Pencil sounds.
--
--  @sndgroup sounds.pencil
--  @snd pencil_erase
--  @snd pencil_write
sounds.pencil = SoundGroup({
	"pencil_erase",
	"pencil_write",
})

sounds.node = {
	["break"] = {
		glass = SoundGroup({"glass_break"}),
	},
	dig = {
		choppy = SoundGroup({"dig_choppy"}),
		cracky = SoundGroup({"dig_cracky"}),
		crumbly = SoundGroup({"dig_crumbly"}),
		snappy = SoundGroup({"dig_snappy"}),
		gravel = SoundGroup({"gravel_dig"}),
		ice = SoundGroup({"ice_dig"}),
		metal = SoundGroup({"metal_dig"}),
	},
	dug = SoundGroup({"node_dug",
		gravel = SoundGroup({"gravel_dug"}),
		ice = SoundGroup({"ice_dug"}),
		metal = SoundGroup({"metal_dug"}),
	}),
	place = SoundGroup({"node_place",
		metal = SoundGroup({"metal_step"}),
		soft = SoundGroup({"node_place_soft"}),
	}),
	step = {
		dirt = SoundGroup({"dirt_step"}),
		glass = SoundGroup({"glass_step"}),
		grass = SoundGroup({"grass_step"}),
		gravel = SoundGroup({"gravel_step"}),
		hard = SoundGroup({"step_hard"}),
		ice = SoundGroup({"ice_step"}),
		metal = SoundGroup({"metal_step"}),
		sand = SoundGroup({"sand_step"}),
		snow = SoundGroup({"snow_step"}),
		water = SoundGroup({"water_step"}),
	},
}