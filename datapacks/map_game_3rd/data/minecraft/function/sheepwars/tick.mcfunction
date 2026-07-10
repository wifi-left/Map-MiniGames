execute in airworld as @e[type=!player] at @s run kill @s[y=-65,dy=-20]
execute as @a[team=play.sheepwars.a,gamemode=!spectator,gamemode=!creative] at @s run kill @s[y=-67,dy=-250]
execute as @a[team=play.sheepwars.b,gamemode=!spectator,gamemode=!creative] at @s run kill @s[y=-67,dy=-250]

execute as @e[tag=sheepwars.sheep.nogravity] at @s run function minecraft:sheepwars/use_item/give_motion/nog_6
execute as @e[tag=sheepwars.sheep.normal] at @s run function minecraft:sheepwars/use_item/target/detect_normal

execute as @a[team=play.sheepwars.a,gamemode=survival] at @s run function minecraft:sheepwars/use_item/detect/use
execute as @a[team=play.sheepwars.b,gamemode=survival] at @s run function minecraft:sheepwars/use_item/detect/use

execute as @e[tag=sheepwars.countdown] at @s run function minecraft:sheepwars/use_item/target/detect_countdown

execute in airworld positioned 411 -63 823 as @a[gamemode=!spectator,gamemode=!creative,distance=..1] run function minecraft:sheepwars/died