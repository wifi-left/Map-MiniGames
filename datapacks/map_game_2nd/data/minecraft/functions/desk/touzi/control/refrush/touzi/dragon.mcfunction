##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set desk.random board 0
execute store result score desk.random board run random value 1..6
execute if score desk.random board matches 1 run give @s minecraft:dragon_egg[custom_name='"\\u00a70龙骰子 \\u00a77- \\u00a7c普通咆哮(4)"',custom_data={desk_item:1,touzi:2,number:4,touzit:6}]
execute if score desk.random board matches 2 run give @s minecraft:dragon_egg[custom_name='"\\u00a70龙骰子 \\u00a77- \\u00a7c恶龙咆哮(6)"',custom_data={desk_item:1,touzi:2,number:6,touzit:6}]
execute if score desk.random board matches 3 run give @s minecraft:dragon_egg[custom_name='"\\u00a70龙骰子 \\u00a77- \\u00a7c猛冲(5)"',custom_data={desk_item:1,touzi:2,number:5,touzit:6}]
execute if score desk.random board matches 4 run give @s minecraft:dragon_egg[custom_name='"\\u00a70龙骰子 \\u00a77- \\u00a7c转圈"',custom_data={desk_item:1,touzi:4,number:0,touzit:6}]
execute if score desk.random board matches 5 run give @s minecraft:dragon_egg[custom_name='"\\u00a70龙骰子 \\u00a77- \\u00a7c停留"',custom_data={desk_item:1,touzi:4,number:0,touzit:6}]
execute if score desk.random board matches 6 run give @s minecraft:dragon_egg[custom_name='"\\u00a70龙骰子 \\u00a77- \\u00a7c震翅"',custom_data={desk_item:1,touzi:4,number:0,touzit:6}]

