
execute as @s at @s positioned ~19 ~ ~ if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 183 -37 164 184 -47 144 ~18 ~ ~-1 strict
execute as @s at @s positioned ~-19 ~ ~ if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 183 -37 164 184 -47 144 ~-1 ~ ~-1 strict
execute as @s at @s positioned ~ ~ ~19 if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 184 -49 145 164 -59 144 ~-1 ~ ~18 strict
execute as @s at @s positioned ~ ~ ~-19 if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 184 -49 145 164 -59 144 ~-1 ~ ~-1 strict