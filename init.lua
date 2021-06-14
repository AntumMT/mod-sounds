
sounds = {}


function sounds.node(tbl)
	tbl = tbl or {}
	tbl.footstep = tbl.footstep or {name="", gain=1.0}
	tbl.dug = tbl.dug or {name="sounds_node_dug", gain=0.25}
	tbl.place = tbl.place or {name="sounds_node_place", gain=1.0}

	return tbl
end
