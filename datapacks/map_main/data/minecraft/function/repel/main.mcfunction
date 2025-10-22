##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=play.repel,gamemode=adventure] at @s if block ~ ~-2 ~ minecraft:orange_stained_glass run function minecraft:repel/died
execute as @a[team=play.repel,gamemode=adventure] at @s if block ~ ~-1 ~ minecraft:orange_stained_glass run function minecraft:repel/died

scoreboard players set play.repel.player tick 0
execute as @a[team=play.repel,gamemode=adventure] run scoreboard players add play.repel.player tick 1
execute unless score play.repel.player tick matches 2.. run function minecraft:repel/over

execute as @a[team=play.repel,gamemode=adventure] at @s if block ~ ~-0.2 ~ end_portal_frame run playsound minecraft:entity.ender_dragon.flap player @s ~ ~ ~ 0.5 1 0.5
execute as @a[team=play.repel,gamemode=adventure] at @s if block ~ ~-0.2 ~ end_portal_frame run effect give @s levitation 1 15 true

