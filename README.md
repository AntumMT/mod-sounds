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

| Filename             | Author             | License      | Source                       |
| -------------------- | ------------------ | ------------ | ---------------------------- |
| sounds_apple_bite    | sonicmariobrotha   | CC0          | [freesound.org][fs.333825]   |
| sounds_break_glass.1 | cmusounddesign     | CC BY 3.0    | [freesound.org][fs.71947]    |
| sounds_break_glass.2 | Tomlija            | CC BY 3.0    | [freesound.org][fs.97669]    |
| sounds_break_glass.3 | lsprice            | CC BY 3.0    | [freesound.org][fs.88808]    |
| sounds_dig_choppy.*  | Sheyvan            | CC0          | [freesound.org][fs.476113]   |
| sounds_dig_cracky.*  | Benboncan          | CC BY 3.0    | [freesound.org][fs.71823]    |
| sounds_dig_crumbly   | Mito551            | CC BY-SA 3.0 | [minetest_game][default]     |
| sounds_dig_gravel.*  | lolamadeus         | CC0          | [freesound.org][fs.179341]   |
| sounds_dig_ice.*     | dheming            | CC BY 3.0    | [freesound.org][fs.268023]   |
| sounds_dig_metal     | yadronoff          | CC BY 3.0    | [freesound.org][fs.320397]   |
| sounds_dig_snappy    | blukotek           | CC0          | [freesound.org][fs.251660]   |
| sounds_dug_gravel.*  | lolamadeus         | CC0          | [freesound.org][fs.179341]   |
| sounds_dug_ice       | Angel_Perez_Grandi | CC BY 3.0    | [freesound.org][fs.49190]    |
| sounds_dug_metal.*   | qubodup            | CC0          | [opengameart.org][oga.18150] |
| sounds_dug_node.*    | Mito551            | CC BY-SA 3.0 | [minetest_game][default]     |
| sounds_entity_hit    | sonictechtonic     | CC BY 3.0    | [freesound.org][fs.241872]   |
| sounds_gallop_01     | Alan McKinney (alanmcki) | CC BY 3.0 | [freesound.org][403026]   |
| sounds_gallop_02     | Alan McKinney (alanmcki) | CC BY 3.0 | [freesound.org][403025]   |
| sounds_horse_neigh_01 | GoodListener      | CC BY 3.0    | [freesound.org][322443]      |
| sounds_horse_neigh_02 | foxen10           | CC0          | [freesound.org][149024]      |
| sounds_horse_snort_01 | madklown          | CC0          | [freesound.org][184503]      |
| sounds_horse_snort_02 | 0_ciz             | CC0          | [freesound.org][475480]      |
| sounds_step_dirt.*   | Mito551            | CC BY-SA 3.0 | [minetest_game][default]     |
| sounds_step_glass    | Mito551            | CC BY-SA 3.0 | [minetest_game][default]     |
| sounds_step_grass.*  | Mito551            | CC BY-SA 3.0 | [minetest_game][default]     |
| sounds_step_gravel   | Mito551            | CC BY-SA 3.0 | [minetest_game][default]     |
| sounds_step_hard.*   | Erdie              | CC BY 3.0    | [freesound.org][fs.41579]    |
| sounds_step_ice.*    | InspectorJ         | CC BY 3.0    | [freesound.org][fs.416967]   |
| sounds_step_metal.*  | mypantsfelldown    | CC0          | [freesound.org][fs.398937]   |
| sounds_step_sand.*   | worthahep88        | CC0          | [freesound.org][fs.319224]   |
| sounds_step_snow.*   | Ryding             | CC0          | [freesound.org][fs.94337]    |
| sounds_step_water.1  | AGFX               | CC BY 3.0    | [freesound.org][fs.20432]    |
| sounds_step_water.2  | AGFX               | CC BY 3.0    | [freesound.org][fs.20434]    |
| sounds_step_water.3  | AGFX               | CC BY 3.0    | [freesound.org][fs.20437]    |
| sounds_step_water.4  | AntumDeluge        | CC0          | generated with Audacity      |
| sounds_step_wood.*   | Mito551            | CC BY-SA 3.0 | [minetest_game][default]     |
| sounds_place_metal.* | Ogrebane           | CC0          | [opengameart.org][oga.3511]  |
| sounds_place_node*   | Mito551            | CC BY-SA 3.0 | [minetest_game][default]     |

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
[fs.20432]: https://freesound.org/people/AGFX/sounds/20432
[fs.20434]: https://freesound.org/people/AGFX/sounds/20434
[fs.20437]: https://freesound.org/people/AGFX/sounds/20437
[fs.41579]: https://freesound.org/people/Erdie/sounds/41579
[fs.49190]: https://freesound.org/people/Angel_Perez_Grandi/sounds/49190
[fs.71823]: https://freesound.org/people/Benboncan/sounds/71823
[fs.71947]: https://freesound.org/people/cmusounddesign/sounds/71947
[fs.88808]: https://freesound.org/people/lsprice/sounds/88808
[fs.94337]: https://freesound.org/people/Ryding/sounds/94337
[fs.97669]: https://freesound.org/people/Tomlija/sounds/97669
[fs.149024]: https://freesound.org/people/foxen10/sounds/149024/
[fs.179341]: https://freesound.org/people/lolamadeus/sounds/179341
[fs.184503]: https://freesound.org/people/madklown/sounds/184503/
[fs.241872]: https://freesound.org/people/sonictechtonic/sounds/241872
[fs.251660]: https://freesound.org/people/blukotek/sounds/251660
[fs.268023]: https://freesound.org/people/dheming/sounds/268023
[fs.319224]: https://freesound.org/people/worthahep88/sounds/319224
[fs.320397]: https://freesound.org/people/yadronoff/sounds/320397
[fs.322443]: https://freesound.org/people/GoodListener/sounds/322443/
[fs.333825]: https://freesound.org/people/sonicmariobrotha/sounds/333825/
[fs.398937]: https://freesound.org/people/mypantsfelldown/sounds/398937
[fs.403025]: https://freesound.org/people/alanmcki/sounds/403025/
[fs.403026]: https://freesound.org/people/alanmcki/sounds/403026/
[fs.416967]: https://freesound.org/people/InspectorJ/sounds/416967
[fs.475480]: https://freesound.org/people/o_ciz/sounds/475480/
[fs.476113]: https://freesound.org/people/Sheyvan/sounds/476113
[oga.3511]: https://opengameart.org/node/3511
[oga.18150]: https://opengameart.org/node/18150
