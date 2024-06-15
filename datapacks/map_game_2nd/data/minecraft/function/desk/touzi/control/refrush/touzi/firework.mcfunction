##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set desk.random board 0
execute store result score desk.random board run random value 1..6
execute if score desk.random board matches 1 run give @s minecraft:firework_star[custom_name='"\\u00a7b烟花骰子 \\u00a77- \\u00a7b信号弹(3)"',custom_data={desk_item:1,touzi:3,number:3,touzit:8}]
execute if score desk.random board matches 2 run give @s minecraft:firework_star[custom_name='"\\u00a7b烟花骰子 \\u00a77- \\u00a7b闪光弹(3)"',custom_data={desk_item:1,touzi:3,number:3,touzit:8}]
execute if score desk.random board matches 3 run give @s minecraft:firework_star[custom_name='"\\u00a7b烟花骰子 \\u00a77- \\u00a7b发射"',custom_data={desk_item:1,touzi:5,number:0,touzit:8}]
execute if score desk.random board matches 4 run give @s minecraft:firework_star[custom_name='"\\u00a7b烟花骰子 \\u00a77- \\u00a7b升空"',custom_data={desk_item:1,touzi:5,number:0,touzit:8}]
execute if score desk.random board matches 5 run give @s minecraft:firework_star[custom_name='"\\u00a7b烟花骰子 \\u00a77- \\u00a7b烟花爆炸"',custom_data={desk_item:1,touzi:5,number:0,touzit:8}]
execute if score desk.random board matches 6 run give @s minecraft:firework_star[custom_name='"\\u00a7b烟花骰子 \\u00a77- 无属性面"',custom_data={desk_item:1,touzi:0,number:0,touzit:8}]

