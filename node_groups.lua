
--- Pre-defined Node Sound Groups
--
--  @topic node_groups


sounds.node = {
	dig = {
		choppy = SoundGroup({"node_dig_choppy"}),
		cracky = SoundGroup({"node_dig_cracky"}),
		crumbly = SoundGroup({"node_dig_crumbly"}),
		snappy = SoundGroup({"node_dig_snappy"}),
		gravel = SoundGroup({"node_dig_gravel"}),
		ice = SoundGroup({"node_dig_ice"}),
		metal = SoundGroup({"node_dig_metal"}),
	},
	dug = SoundGroup({"node_dug",
		glass = SoundGroup({"node_dug_glass"}),
		gravel = SoundGroup({"node_dug_gravel"}),
		ice = SoundGroup({"node_dug_ice"}),
		metal = SoundGroup({"node_dug_metal"}),
	}),
	place = SoundGroup({"node_place",
		metal = SoundGroup({"node_place_metal"}),
		soft = SoundGroup({"node_place_soft"}),
	}),
	step = {
		dirt = SoundGroup({"node_step_dirt"}),
		glass = SoundGroup({"node_step_glass"}),
		grass = SoundGroup({"node_step_grass"}),
		gravel = SoundGroup({"node_step_gravel"}),
		hard = SoundGroup({"node_step_hard"}),
		ice = SoundGroup({"node_step_ice"}),
		metal = SoundGroup({"node_step_metal"}),
		sand = SoundGroup({"node_step_sand"}),
		snow = SoundGroup({"node_step_snow"}),
		water = SoundGroup({"node_step_water"}),
		wood = SoundGroup({"node_step_wood"}),
	},
}
