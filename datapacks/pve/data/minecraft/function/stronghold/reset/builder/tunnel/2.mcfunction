
execute as @s at @s positioned ~19 ~ ~ if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 165 -37 164 164 -47 144 ~18 ~ ~-1 strict
execute as @s at @s positioned ~-19 ~ ~ if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 165 -37 164 164 -47 144 ~-1 ~ ~-1 strict
execute as @s at @s positioned ~ ~ ~19 if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 164 -49 164 184 -59 163 ~-1 ~ ~18 strict
execute as @s at @s positioned ~ ~ ~-19 if entity @e[tag=pve.stronghold.rooms,distance=..3] at @s run clone 164 -49 164 184 -59 163 ~-1 ~ ~-1 strict