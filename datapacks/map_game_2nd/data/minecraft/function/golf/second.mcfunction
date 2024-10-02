##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
effect give @e[team=golf] resistance 3 25 true
# effect give @e[tag=golf.ball] invisibility 3 25 true
execute if score golf.state state matches 1.. as @e[type=zombie,tag=golf.ball] at @s if block ~ ~-1 ~ copper_block run function golf/gaming/next
execute if score golf.state state matches 1.. as @e[type=zombie,tag=golf.ball] at @s if block ~ ~-1 ~ magma_block run function golf/gaming/redo
execute as @a[team=golf,gamemode=adventure] run function golf/gaming/item

execute if score golf.state state matches 1..4 run scoreboard players remove golf.time tick 1
execute if score golf.state state matches 1..4 run function minecraft:golf/detect_unexpected
execute if score golf.state state matches 1..4 run bossbar set minecraft:golf name ["\u00a76时间限制 \u00a7bTime Limit \u00a77| \u00a7a剩余：",{"score": {"objective": "tick","name": "golf.time"},"color": "#078848"},"\u00a7as"]
execute if score golf.state state matches 1..4 run execute store result bossbar golf value run scoreboard players get golf.time tick