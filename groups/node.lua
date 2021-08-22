
--- Pre-defined Node Sound Groups
--
--  @topic node_groups


sounds.node = {
	dig = {
		--- @sndgroup sounds.node.dig.choppy
		--  @snd[r3] node_dig_choppy
		--  @see node sounds.node_choppy
		choppy = iSoundGroup({"node_dig_choppy"}),
		--- @sndgroup sounds.node.dig.cracky
		--  @snd[r3] node_dig_cracky
		--  @see node sounds.node_cracky
		cracky = iSoundGroup({"node_dig_cracky"}),
		--- @sndgroup sounds.node.dig.crumbly
		--  @snd node_dig_crumbly
		--  @see node sounds.node_crumbly
		crumbly = iSoundGroup({"node_dig_crumbly"}),
		--- @sndgroup sounds.node.dig.snappy
		--  @snd node_dig_snappy
		--  @see node sounds.node_snappy
		snappy = iSoundGroup({"node_dig_snappy"}),
		--- @sndgroup sounds.node.dig.gravel
		--  @snd[r2] node_dig_gravel
		--  @see node sounds.node_gravel
		gravel = iSoundGroup({"node_dig_gravel"}),
		--- @sndgroup sounds.node.dig.ice
		--  @snd[r3] node_dig_ice
		--  @see node sounds.node_ice
		ice = iSoundGroup({"node_dig_ice"}),
		--- @sndgroup sounds.node.dig.metal
		--  @snd node_dig_metal
		--  @see node sounds.node_metal
		metal = iSoundGroup({"node_dig_metal"}),
	},
	--- @sndgroup sounds.node.dug
	--  @snd[r2] node_dug
	--  @see node sounds.node
	dug = iSoundGroup({"node_dug",
		--- @sndgroup sounds.node.dug.glass
		--  @snd[r3] node_dug_glass
		--  @see node sounds.node_glass
		glass = iSoundGroup({"node_dug_glass"}),
		--- @sndgroup sounds.node.dug.gravel
		--  @snd[r3] node_dug_gravel
		gravel = iSoundGroup({"node_dug_gravel"}),
		--- @sndgroup sounds.node.dug.ice
		--  @snd node_dug_ice
		--  @see node sounds.node_ice
		ice = iSoundGroup({"node_dug_ice"}),
		--- @sndgroup sounds.node.dug.metal
		--  @snd[r2] node_dug_metal
		--  @see node sounds.node_metal
		metal = iSoundGroup({"node_dug_metal"}),
	}),
	--- @sndgroup sounds.node.place
	--  @snd[r2] node_place
	--  @see node sounds.node
	place = iSoundGroup({"node_place",
		--- @sndgroup sounds.node.place.metal
		--  @snd[r2] node_place_metal
		--  @see node sounds.node_metal
		metal = iSoundGroup({"node_place_metal"}),
		--- @sndgroup sounds.node.place.soft
		--  @snd[r3] node_place_soft
		soft = iSoundGroup({"node_place_soft"}),
	}),
	step = {
		--- @sndgroup sounds.node.step.dirt
		--  @snd[r2] node_step_dirt
		--  @see node sounds.node_dirt
		dirt = iSoundGroup({"node_step_dirt"}),
		--- @sndgroup sounds.node.step.glass
		--  @snd node_step_glass
		--  @see node sounds.node_glass
		glass = iSoundGroup({"node_step_glass"}),
		--- @sndgroup sounds.node.step.grass
		--  @snd[r3] node_step_grass
		--  @see node sounds.node_grass
		grass = iSoundGroup({"node_step_grass"}),
		--- @sndgroup sounds.node.step.gravel
		--  @snd[r4] node_step_gravel
		--  @see node sounds.node_gravel
		gravel = iSoundGroup({"node_step_gravel"}),
		--- @sndgroup sounds.node.step.hard
		--  @snd[r3] node_step_hard
		hard = iSoundGroup({"node_step_hard"}),
		--- @sndgroup sounds.node.step.ice
		--  @snd[r3] node_step_ice
		--  @see node sounds.node_ice
		ice = iSoundGroup({"node_step_ice"}),
		--- @sndgroup sounds.node.step.metal
		--  @snd[r3] node_step_metal
		--  @see node sounds.node_metal
		metal = iSoundGroup({"node_step_metal"}),
		--- @sndgroup sounds.node.step.sand
		--  @snd[r3] node_step_sand
		--  @see node sounds.node_sand
		sand = iSoundGroup({"node_step_sand"}),
		--- @sndgroup sounds.node.step.snow
		--  @snd[r5] node_step_snow
		--  @see node sounds.node_snow
		snow = iSoundGroup({"node_step_snow"}),
		--- @sndgroup sounds.node.step.water
		--  @snd[r4] node_step_water (**Note:** node\_step\_water.4 is silent)
		--  @see node sounds.node_water
		water = iSoundGroup({"node_step_water"}),
		--- @sndgroup sounds.node.step.wood
		--  @snd[r2] node_step_wood
		--  @see node sounds.node_wood
		wood = iSoundGroup({"node_step_wood"}),
	},
}
