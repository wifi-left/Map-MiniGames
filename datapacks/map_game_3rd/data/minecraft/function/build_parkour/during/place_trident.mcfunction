execute unless block ~ ~ ~ air run tellraw @a[gamemode=adventure,team=build_parkour] ["\u00a7c此处不能放置！"]
execute unless block ~ ~ ~ air run return run kill @s
setblock ~ ~ ~ prismarine_slab[waterlogged=true] strict
setblock ~1 ~ ~ structure_void strict
setblock ~-1 ~ ~ structure_void strict
setblock ~ ~ ~1 structure_void strict
setblock ~ ~ ~-1 structure_void strict
summon marker ~ ~ ~ {Tags:["build_parkour.block.trident"]}
kill @s[type=marker]