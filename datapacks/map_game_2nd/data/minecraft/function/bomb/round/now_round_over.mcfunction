scoreboard players reset @a[team=golf] temp
schedule clear minecraft:bomb/round/cdover
schedule clear minecraft:bomb/round/next_person
scoreboard players set boom.state state 1
execute if score bomb.allmap state matches 2 run function minecraft:bomb/over/all
execute if score boom.state state matches 1..4 run tellraw @a[team=golf] ["\n§6本轮结束。即将开始下一个地图。\n"]
execute if score boom.state state matches 1..4 if score boob.level board matches 6.. run function minecraft:bomb/over/all
execute if score boom.state state matches 1..4 run function minecraft:bomb/round/next_map
