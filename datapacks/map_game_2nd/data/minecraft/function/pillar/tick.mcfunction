execute as @a[x=-55,y=-62,z=572,distance=..2,team=pillar,gamemode=!spectator,gamemode=!creative] at @s run function pillar/died
execute as @a[team=pillar,gamemode=!spectator,gamemode=!creative] at @s run kill @s[y=-64,dy=-250]
execute in airworld as @e[type=!player,y=-62,dy=-20] at @s run kill @s[]