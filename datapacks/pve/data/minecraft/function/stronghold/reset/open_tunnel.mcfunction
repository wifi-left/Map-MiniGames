execute as @s at @s positioned ~19 ~ ~ if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run fill ~17 ~3 ~7 ~17 ~7 ~11 air
execute as @s at @s positioned ~-19 ~ ~ if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run fill ~1 ~3 ~7 ~1 ~7 ~11 air
execute as @s at @s positioned ~ ~ ~19 if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run fill ~7 ~3 ~17 ~11 ~7 ~17 air
execute as @s at @s positioned ~ ~ ~-19 if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run fill ~7 ~3 ~1 ~11 ~7 ~1 air
execute as @s at @s positioned ~-19 ~ ~ if entity @e[tag=pve.stronghold.rooms,distance=..3] run fill ~17 ~3 ~7 ~17 ~7 ~11 air
execute as @s at @s positioned ~19 ~ ~ if entity @e[tag=pve.stronghold.rooms,distance=..3] run fill ~1 ~3 ~7 ~1 ~7 ~11 air
execute as @s at @s positioned ~ ~ ~-19 if entity @e[tag=pve.stronghold.rooms,distance=..3] run fill ~7 ~3 ~17 ~11 ~7 ~17 air
execute as @s at @s positioned ~ ~ ~19 if entity @e[tag=pve.stronghold.rooms,distance=..3] run fill ~7 ~3 ~1 ~11 ~7 ~1 air