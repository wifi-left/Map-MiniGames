##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset @a[team=golf] temp
execute if score golf.allmap state matches 2 run function minecraft:golf/over/all
execute if score golf.state state matches 1..4 run tellraw @a[team=golf] ["\n§6本轮结束。即将开始下一个地图。\n"]
execute if score golf.state state matches 1..4 if score golf.map board matches 2.. run function minecraft:golf/over/all
execute if score golf.state state matches 1..4 run function minecraft:golf/gaming/next_map
