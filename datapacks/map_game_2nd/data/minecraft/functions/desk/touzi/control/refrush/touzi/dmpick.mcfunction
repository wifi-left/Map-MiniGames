##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set desk.random board 0
execute store result score desk.random board run random value 1..6
execute if score desk.random board matches 1 run give @s minecraft:diamond_pickaxe[custom_name='"\\u00a78钻石镐骰子 \\u00a77- \\u00a7c⛏(4)"',custom_data={desk_item:1,touzi:2,number:3,touzit:4}]
execute if score desk.random board matches 2 run give @s minecraft:diamond_pickaxe[custom_name='"\\u00a78钻石镐骰子 \\u00a77- \\u00a7c⛏(4)"',custom_data={desk_item:1,touzi:2,number:4,touzit:4}]
execute if score desk.random board matches 3 run give @s minecraft:diamond_pickaxe[custom_name='"\\u00a78钻石镐骰子 \\u00a77- \\u00a7c挖铁矿"',custom_data={desk_item:1,touzi:4,number:2,touzit:4}]
execute if score desk.random board matches 4 run give @s minecraft:diamond_pickaxe[custom_name='"\\u00a78钻石镐骰子 \\u00a77- \\u00a7c挖钻石"',custom_data={desk_item:1,touzi:4,number:2,touzit:4}]
execute if score desk.random board matches 5 run give @s minecraft:diamond_pickaxe[custom_name='"\\u00a78钻石镐骰子 \\u00a77- 无属性面"',custom_data={desk_item:1,touzi:0,number:2,touzit:4}]
execute if score desk.random board matches 6 run give @s minecraft:diamond_pickaxe[custom_name='"\\u00a78钻石镐骰子 \\u00a77- 无属性面"',custom_data={desk_item:1,touzi:0,number:2,touzit:4}]

