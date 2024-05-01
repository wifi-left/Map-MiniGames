##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set color.state state 3
execute if score color.tre tick matches 1.. run scoreboard players remove color.tt tick 1
execute if score color.tre tick matches 1.. run scoreboard players remove color.tre tick 1
scoreboard players operation color.tick tick = color.tt tick
# playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0.1 1
execute as @a[team=play.color] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 2 2 1
execute if score color.tick tick matches ..2 run scoreboard players set color.tick tick 2
