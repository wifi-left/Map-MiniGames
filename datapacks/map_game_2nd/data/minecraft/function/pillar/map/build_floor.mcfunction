execute if score pillar.floor board matches 0..1 in airworld run return fail
execute if score pillar.floor board matches 2 in airworld run fill ~-5 -63 ~-5 ~5 -62 ~5 snow_block
execute if score pillar.floor board matches 3 in airworld run fill ~-5 -63 ~-5 ~5 -62 ~5 grass_block
execute if score pillar.floor board matches 4 in airworld run fill ~-5 -63 ~-5 ~5 -62 ~5 netherrack
execute if score pillar.floor board matches 5 in airworld run fill ~-5 -63 ~-5 ~5 -62 ~5 sandstone
execute if score pillar.floor board matches 6 in airworld run fill ~-5 -63 ~-5 ~5 -62 ~5 slime_block
execute if score pillar.floor board matches 7..8 in airworld run fill ~-6 -62 ~-6 ~6 -64 ~6 structure_void keep
execute if score pillar.floor board matches 7 in airworld run fill ~-5 -63 ~-5 ~5 -62 ~5 water strict
execute if score pillar.floor board matches 8 in airworld run fill ~-5 -63 ~-5 ~5 -62 ~5 lava strict
execute if score pillar.floor board matches 9 in airworld run fill ~-5 -63 ~-5 ~5 -62 ~5 powder_snow strict
execute if score pillar.floor board matches 10 in airworld run fill ~-5 -63 ~-5 ~5 -62 ~5 glass strict
execute if score pillar.floor board matches 11 in airworld run fill ~-5 -63 ~-5 ~5 -62 ~5 glass_pane strict
execute if score pillar.floor board matches 12 in airworld run fill ~-5 -63 ~-5 ~5 -62 ~5 iron_bars strict
execute if score pillar.floor board matches 13 in airworld run fill ~-5 -63 ~-5 ~5 -62 ~5 iron_chain[axis=y] strict
execute if score pillar.floor board matches 14 in airworld run fill ~-5 -63 ~-5 ~5 -62 ~5 cobweb strict