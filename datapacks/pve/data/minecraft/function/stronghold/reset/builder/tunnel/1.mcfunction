
execute as @s at @s positioned ~19 ~ ~ if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 164 -49 144 165 -59 164 ~18 ~ ~-1 strict
execute as @s at @s positioned ~-19 ~ ~ if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 164 -49 144 165 -59 164 ~-1 ~ ~-1 strict
execute as @s at @s positioned ~ ~ ~19 if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 164 -37 144 184 -47 145 ~-1 ~ ~18 strict
execute as @s at @s positioned ~ ~ ~-19 if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 164 -37 144 184 -47 145 ~-1 ~ ~-1 strict