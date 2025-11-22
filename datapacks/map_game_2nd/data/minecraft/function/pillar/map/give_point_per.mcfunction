tp @s ~ 1 ~ 0 90
function minecraft:pillar/map/paint_pillar
tag @s remove pillar.random_team
title @s title ["\u00a7c请小心！游戏即将开始！"]
title @s subtitle ["请小心不要摔下去了！"]
# effect give @s slowness 5 127 true
gamemode survival @s
spawnpoint @s -55 -62 572 0 0
execute as @s[tag=GOABLE.SPEC] run gamemode spectator @s
