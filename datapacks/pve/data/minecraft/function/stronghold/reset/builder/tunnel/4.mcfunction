
execute as @s at @s positioned ~19 ~ ~ if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 184 -49 164 183 -59 144 ~18 ~ ~-1 strict
execute as @s at @s positioned ~-19 ~ ~ if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 184 -49 164 183 -59 144 ~-1 ~ ~-1 strict
execute as @s at @s positioned ~ ~ ~19 if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 164 -37 163 184 -47 164 ~-1 ~ ~18 strict
execute as @s at @s positioned ~ ~ ~-19 if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 164 -37 163 184 -47 164 ~-1 ~ ~-1 strict
