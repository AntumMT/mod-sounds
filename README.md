## Sound Pack for Minetest

### Description:

A [Minetest][] mod that provides a set of free sounds & methods. It is intended as a more universal method for adding sounds to games than depending on [MTG & default][default] for sounds only.

As of right now, only sounds from *default* mod have been added.

<img src="screenshot.png" alt="icon" width="200" />

### Licensing:

- Code: [MIT](LICENSE.txt)
- Icon/Screenshot: [CC0](https://openclipart.org/detail/260975)
- Media: see following table

#### Sound file sources & licensing:

| Filename (sounds_) / Source  | Author                   | License      | Notes                   |
| ---------------------------- | ------------------------ | ------------ | ----------------------- |
| [apple_bite][]               | sonicmariobrotha         | CC0          |                         |
| [break_glass.1][]            | cmusounddesign           | CC BY 3.0    |                         |
| [break_glass.2][]            | Tomlija                  | CC BY 3.0    |                         |
| [break_glass.3][]            | lsprice                  | CC BY 3.0    |                         |
| [dig_choppy.*][dig_choppy]   | Sheyvan                  | CC0          |                         |
| [dig_cracky.*][dig_cracky]   | Benboncan                | CC BY 3.0    |                         |
| [dig_crumbly][default]       | Mito551                  | CC BY-SA 3.0 |                         |
| [dig_gravel.*][dig_gravel]   | lolamadeus               | CC0          |                         |
| [dig_ice.*][dig_ice]         | dheming                  | CC BY 3.0    |                         |
| [dig_metal][]                | yadronoff                | CC BY 3.0    |                         |
| [dig_snappy][]               | blukotek                 | CC0          |                         |
| [dug_gravel.*][dig_gravel]   | lolamadeus               | CC0          |                         |
| [dug_ice][]                  | Angel_Perez_Grandi       | CC BY 3.0    |                         |
| [dug_metal.*][dug_metal]     | qubodup                  | CC0          |                         |
| [dug_node.*][default]        | Mito551                  | CC BY-SA 3.0 |                         |
| [entity_hit][]               | sonictechtonic           | CC BY 3.0    |                         |
| [gallop_01][]                | Alan McKinney (alanmcki) | CC BY 3.0    |                         |
| [gallop_02][]                | Alan McKinney (alanmcki) | CC BY 3.0    |                         |
| [horse_neigh_01][]           | GoodListener             | CC BY 3.0    |                         |
| [horse_neigh_02][]           | foxen10                  | CC0          |                         |
| [horse_snort_01][]           | madklown                 | CC0          |                         |
| [horse_snort_02][]           | 0_ciz                    | CC0          |                         |
| [step_dirt.*][default]       | Mito551                  | CC BY-SA 3.0 |                         |
| [step_glass][default]        | Mito551                  | CC BY-SA 3.0 |                         |
| [step_grass.*][default]      | Mito551                  | CC BY-SA 3.0 |                         |
| [step_gravel][default]       | Mito551                  | CC BY-SA 3.0 |                         |
| [step_hard.*][step_hard]     | Erdie                    | CC BY 3.0    |                         |
| [step_ice.*][step_ice]       | InspectorJ               | CC BY 3.0    |                         |
| [step_metal.*][step_metal]   | mypantsfelldown          | CC0          |                         |
| [step_sand.*][step_sand]     | worthahep88              | CC0          |                         |
| [step_snow.*][step_snow]     | Ryding                   | CC0          |                         |
| [step_water.1][]             | AGFX                     | CC BY 3.0    |                         |
| [step_water.2][]             | AGFX                     | CC BY 3.0    |                         |
| [step_water.3][]             | AGFX                     | CC BY 3.0    |                         |
| step_water.4                 | AntumDeluge              | CC0          | generated with Audacity |
| [step_wood.*][default]       | Mito551                  | CC BY-SA 3.0 |                         |
| [place_metal.*][place_metal] | Ogrebane                 | CC0          |                         |
| [place_node*][default]       | Mito551                  | CC BY-SA 3.0 |                         |

### Usage:

If your mod depends on *default* for node sounds only, then you can easily switch to *sounds*. Simply add *default* & *sounds* as optional dependencies in your *mod.conf*. *sounds* aliases or overrides methods used by *default* to its own. For example *default.node_sound_dirt_defaults*.

Example code:
```lua
function sounds.node_dirt(tbl)
	tbl = tbl or {}

	tbl.footstep = tbl.footstep or {name="sounds_step_dirt", gain=0.4}
	tbl.dug = tbl.dug or {name="sounds_step_dirt", gain=1.0}
	tbl.place = tbl.place or {name="sounds_place_node_soft", gain=1.0}

	sounds.node(tbl)
	return tbl
end

default.node_sound_dirt_defaults = sounds.node_dirt
```

### Links:

- [![ContentDB](https://content.minetest.net/packages/AntumDeluge/sounds/shields/title/)](https://content.minetest.net/packages/AntumDeluge/sounds/)
- [Forum](https://forum.minetest.net/viewtopic.php?t=26868)
- [Git repo](https://github.com/AntumMT/mod-sounds)
- [API](https://antummt.github.io/mod-sounds/docs/api.html)
- [Changelog](changelog.txt)
- [TODO](TODO.txt)


[Minetest]: http://minetest.net/
[default]: https://github.com/minetest/minetest_game/tree/master/mods/default

[apple_bite]: https://freesound.org/s/333825/
[break_glass.1]: https://freesound.org/s/71947/
[break_glass.2]: https://freesound.org/s/97669/
[break_glass.3]: https://freesound.org/s/88808/
[dig_choppy]: https://freesound.org/s/476113/
[dig_cracky]: https://freesound.org/s/71823/
[dig_gravel]: https://freesound.org/s/179341/
[dig_ice]: https://freesound.org/s/268023/
[dig_metal]: https://freesound.org/s/320397/
[dig_snappy]: https://freesound.org/s/251660/
[dug_ice]: https://freesound.org/s/49190/
[dug_metal]: https://opengameart.org/node/18150
[entity_hit]: https://freesound.org/s/241872/
[gallop_01]: https://freesound.org/s/403026/
[gallop_02]: https://freesound.org/s/403025/
[horse_neigh_01]: https://freesound.org/s/322443/
[horse_neigh_02]: https://freesound.org/s/149024/
[horse_snort_01]: https://freesound.org/s/184503/
[horse_snort_02]: https://freesound.org/s/475480/
[place_metal]: https://opengameart.org/node/3511
[step_hard]: https://freesound.org/s/41579/
[step_ice]: https://freesound.org/s/416967/
[step_metal]: https://freesound.org/s/398937/
[step_sand]: https://freesound.org/s/319224/
[step_snow]: https://freesound.org/s/94337/
[step_water.1]: https://freesound.org/s/20432/
[step_water.2]: https://freesound.org/s/20434/
[step_water.3]: https://freesound.org/s/20437/
