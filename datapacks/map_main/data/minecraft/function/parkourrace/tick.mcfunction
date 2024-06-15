##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=play.parkour] at @s if block ~ ~-1 ~ minecraft:light_blue_concrete run effect give @s minecraft:speed 1 3 true
execute as @a[team=play.parkour] at @s if block ~ ~-1 ~ minecraft:lime_concrete run effect give @s minecraft:jump_boost 1 3 true


execute as @a[team=play.parkour,gamemode=adventure] at @s if block ~ ~-0.3 ~ minecraft:red_concrete run function minecraft:parkourrace/died
execute as @a[team=play.parkour,gamemode=adventure] at @s if block ~ ~-0.3 ~ minecraft:grass_block run function minecraft:parkourrace/died
execute as @a[team=play.parkour,gamemode=adventure] at @s if block ~ ~-0.3 ~ minecraft:black_stained_glass run function minecraft:parkourrace/died
execute as @a[team=play.parkour,gamemode=adventure] at @s if block ~ ~-0.3 ~ minecraft:oak_leaves run function minecraft:parkourrace/died
execute as @a[team=play.parkour,gamemode=adventure] at @s if block ~ ~-0.3 ~ minecraft:emerald_block run function minecraft:parkourrace/win


execute as @a[team=play.parkour] at @s if block ~ ~-1 ~ minecraft:black_concrete run effect give @s minecraft:levitation 1 4 true
execute as @a[team=play.parkour] at @s if block ~ ~-1 ~ minecraft:brown_concrete run effect give @s minecraft:slowness 2 2 true
execute as @a[team=play.parkour] at @s if block ~ ~-1 ~ minecraft:yellow_concrete run effect give @s minecraft:blindness 2 20 true
execute as @a[team=play.parkour] at @s if block ~ ~-1 ~ minecraft:glass run effect clear @s

effect give @a[team=play.parkour] saturation 2 25 true
effect give @a[team=play.parkour] minecraft:resistance 2 25 true
