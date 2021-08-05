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
| [dig_choppy.*][dig_choppy]   | Sheyvan                  | CC0          |                         |
| [dig_cracky.*][dig_cracky]   | Benboncan                | CC BY 3.0    |                         |
| [dig_crumbly][default]       | Mito551                  | CC BY-SA 3.0 |                         |
| [dig_snappy][]               | blukotek                 | CC0          |                         |
| [dirt_step.*][default]       | Mito551                  | CC BY-SA 3.0 |                         |
| [entity_hit][]               | sonictechtonic           | CC BY 3.0    |                         |
| [gallop_01][]                | Alan McKinney (alanmcki) | CC BY 3.0    |                         |
| [gallop_02][]                | Alan McKinney (alanmcki) | CC BY 3.0    |                         |
| [glass_break.1][]            | cmusounddesign           | CC BY 3.0    |                         |
| [glass_break.2][]            | Tomlija                  | CC BY 3.0    |                         |
| [glass_break.3][]            | lsprice                  | CC BY 3.0    |                         |
| [glass_step][default]        | Mito551                  | CC BY-SA 3.0 |                         |
| [grass_step.*][default]      | Mito551                  | CC BY-SA 3.0 |                         |
| [gravel_dig.*][gravel_dig]   | lolamadeus               | CC0          |                         |
| [gravel_dug.*][gravel_dig]   | lolamadeus               | CC0          |                         |
| [gravel_step][default]       | Mito551                  | CC BY-SA 3.0 |                         |
| [horse_neigh_01][]           | GoodListener             | CC BY 3.0    |                         |
| [horse_neigh_02][]           | foxen10                  | CC0          |                         |
| [horse_snort_01][]           | madklown                 | CC0          |                         |
| [horse_snort_02][]           | 0_ciz                    | CC0          |                         |
| [ice_dig.*][ice_dig]         | dheming                  | CC BY 3.0    |                         |
| [ice_dug][]                  | Angel_Perez_Grandi       | CC BY 3.0    |                         |
| [ice_step.*][ice_step]       | InspectorJ               | CC BY 3.0    |                         |
| [metal_dig][]                | yadronoff                | CC BY 3.0    |                         |
| [metal_dug.*][metal_dug]     | qubodup                  | CC0          |                         |
| [metal_place.*][metal_place] | Ogrebane                 | CC0          |                         |
| [metal_step.*][metal_step]   | mypantsfelldown          | CC0          |                         |
| [node_dug.*][default]        | Mito551                  | CC BY-SA 3.0 |                         |
| [node_place*][default]       | Mito551                  | CC BY-SA 3.0 |                         |
| [pencil_erase][]             | damsur                   | CC0          |                         |
| [pencil_write][]             | NachtmahrTV              | CC0          |                         |
| [sand_step.*][sand_step]     | worthahep88              | CC0          |                         |
| [snow_step.*][snow_step]     | Ryding                   | CC0          |                         |
| [step_hard.*][step_hard]     | Erdie                    | CC BY 3.0    |                         |
| [water_step.1][]             | AGFX                     | CC BY 3.0    |                         |
| [water_step.2][]             | AGFX                     | CC BY 3.0    |                         |
| [water_step.3][]             | AGFX                     | CC BY 3.0    |                         |
| water_step.4                 | AntumDeluge              | CC0          | generated with Audacity |
| [wood_step.*][default]       | Mito551                  | CC BY-SA 3.0 |                         |

### Usage:

If your mod depends on *default* for node sounds only, then you can easily switch to *sounds*. Simply add *default* & *sounds* as optional dependencies in your *mod.conf*. *sounds* aliases or overrides methods used by *default* to its own. For example *default.node_sound_dirt_defaults*.

Example code:
```lua
function sounds.node_dirt(tbl)
	tbl = tbl or {}

	tbl.footstep = tbl.footstep or {name="sounds_dirt_step", gain=0.4}
	tbl.dug = tbl.dug or {name="sounds_dirt_step", gain=1.0}
	tbl.place = tbl.place or {name="sounds_node_place_soft", gain=1.0}

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
[glass_break.1]: https://freesound.org/s/71947/
[glass_break.2]: https://freesound.org/s/97669/
[glass_break.3]: https://freesound.org/s/88808/
[dig_choppy]: https://freesound.org/s/476113/
[dig_cracky]: https://freesound.org/s/71823/
[dig_snappy]: https://freesound.org/s/251660/
[entity_hit]: https://freesound.org/s/241872/
[gallop_01]: https://freesound.org/s/403026/
[gallop_02]: https://freesound.org/s/403025/
[gravel_dig]: https://freesound.org/s/179341/
[horse_neigh_01]: https://freesound.org/s/322443/
[horse_neigh_02]: https://freesound.org/s/149024/
[horse_snort_01]: https://freesound.org/s/184503/
[horse_snort_02]: https://freesound.org/s/475480/
[ice_dig]: https://freesound.org/s/268023/
[ice_dug]: https://freesound.org/s/49190/
[ice_step]: https://freesound.org/s/416967/
[metal_dig]: https://freesound.org/s/320397/
[metal_dug]: https://opengameart.org/node/18150
[metal_place]: https://opengameart.org/node/3511
[metal_step]: https://freesound.org/s/398937/
[pencil_erase]: https://freesound.org/s/443241/
[pencil_write]: https://freesound.org/s/571800/
[sand_step]: https://freesound.org/s/319224/
[snow_step]: https://freesound.org/s/94337/
[step_hard]: https://freesound.org/s/41579/
[water.1_step]: https://freesound.org/s/20432/
[water.2_step]: https://freesound.org/s/20434/
[water.3_step]: https://freesound.org/s/20437/
