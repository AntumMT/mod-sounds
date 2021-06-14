
sounds = {}


function sounds.node(tbl)
	tbl = tbl or {}
	tbl.footstep = tbl.footstep or {name="", gain=1.0}
	tbl.dug = tbl.dug or {name="sounds_node_dug", gain=0.25}
	tbl.place = tbl.place or {name="sounds_node_place", gain=1.0}

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
	tbl.footstep = tbl.footstep or {name="sounds_glass_footstep", gain=0.3}
	tbl.dig = tbl.dig or {name="sounds_glass_footstep", gain=0.5}
	tbl.dug = tbl.dug or {name="sounds_glass_break", gain=1.0}
	sounds.node(tbl)

	return tbl
end
