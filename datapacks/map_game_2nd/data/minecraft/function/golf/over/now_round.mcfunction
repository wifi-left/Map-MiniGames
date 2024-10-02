scoreboard players reset @a[team=golf] temp
execute if score golf.allmap state matches 2 run function minecraft:golf/over/all
execute if score golf.state state matches 1..4 run tellraw @a[team=golf] ["\n\u00a76本轮结束。即将开始下一个地图。\n"]
execute if score golf.state state matches 1..4 if score golf.map board matches 2.. run function minecraft:golf/over/all
execute if score golf.state state matches 1..4 run function minecraft:golf/gaming/next_map