##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=hide.play.ani] at @s run function hideseek/follow
execute as @a[team=hide.play.ani] at @s run kill @e[type=item,distance=0..8]
execute as @a[team=hide.play.hun] at @s run kill @e[type=item,distance=0..8]

execute in overworld positioned 368 -13 -477 as @a[distance=..2,gamemode=adventure,team=hide.play.ani] run function minecraft:hideseek/p_died
execute in overworld positioned 368 -13 -477 as @a[distance=..2,gamemode=adventure,team=hide.play.hun] run function minecraft:hideseek/p_died

execute as @a[team=hide.play.ani,gamemode=adventure] at @s if block ~ ~-1 ~ slime_block run effect give @s levitation 2 30 true
execute as @a[team=hide.play.ani,gamemode=adventure] at @s if block ~ ~-1 ~ slime_block run effect give @s slow_falling 10 0 true
execute as @a[team=hide.play.hun,gamemode=adventure] at @s if block ~ ~-1 ~ slime_block run effect give @s levitation 2 30 true
execute as @a[team=hide.play.hun,gamemode=adventure] at @s if block ~ ~-1 ~ slime_block run effect give @s slow_falling 10 0 true