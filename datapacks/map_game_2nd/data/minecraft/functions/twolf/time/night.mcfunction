# execute as @e[tag=wolf.tppoint] at @s run fill ~1 ~ ~1 ~-1 ~3 ~-1 minecraft:black_concrete
# execute as @e[tag=wolf.tppoint] at @s run fill ~ ~1 ~ ~ ~2 ~ air replace barrier
scoreboard players set twolf.time state 2
team modify wolfpeople nametagVisibility hideForOwnTeam
tellraw @a[tag=wolf.tip] ["\u00a7f\u00a7l天黑请闭眼。"]
title @a[tag=wolf.tip] title [""]
title @a[tag=wolf.tip] subtitle ["\u00a7f\u00a7l天黑请闭眼。"]
schedule clear #wolffunctions
scoreboard players set wolf.time board -1
scoreboard players set wolf.ttime board -1
function twolf/action/tppoint

scoreboard players set wait.wolfpeople BAMBOO_MOD_SAYING 0

## 0 for nothing; 1 ban other team; 2 ban own team; 3 all banned; 4 ban /tshout
scoreboard players set wait.wolfpeople BAMBOO_MOD_SAYING 1
scoreboard players set wolfpeople BAMBOO_MOD_SAYING 3
