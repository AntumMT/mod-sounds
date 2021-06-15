
sounds = {}
sounds.modname = core.get_current_modname()
sounds.modpath = core.get_modpath(sounds.modname)


dofile(sounds.modpath .. "/node.lua")
