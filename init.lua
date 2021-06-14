
sounds = {}


function sounds.node(tbl)
	tbl = tbl or {}
	tbl.footstep = tbl.footstep or {name="", gain=1.0}
	tbl.dug = tbl.dug or {name="sounds_dug_node", gain=0.25}
	tbl.place = tbl.place or {name="sounds_place_node", gain=1.0}

	return tbl
end

function sounds.node_stone(tbl)
	tbl = tbl or {}
	tbl.footstep = tbl.footstep or {name="sounds_footstep_hard", gain=0.3}
	tbl.dug = tbl.dug or {name="sounds_footstep_hard", gain=1.0}
	sounds.node(tbl)

	return tbl
end

function sounds.node_glass(tbl)
	tbl = tbl or {}
	tbl.footstep = tbl.footstep or {name="sounds_footstep_glass", gain=0.3}
	tbl.dig = tbl.dig or {name="sounds_footstep_glass", gain=0.5}
	tbl.dug = tbl.dug or {name="sounds_break_glass", gain=1.0}
	sounds.node(tbl)

	return tbl
end
