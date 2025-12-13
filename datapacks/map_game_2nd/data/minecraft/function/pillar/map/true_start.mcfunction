fill ~-1 0 ~-1 ~1 5 ~1 minecraft:air replace barrier
function minecraft:pillar/map/build_floor
execute as @s[tag=GOABLE.SPEC] run gamemode spectator @s
