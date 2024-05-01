##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set desk.random board 0
execute store result score desk.random board run random value 1..6
execute if score desk.random board matches 1 run give @s minecraft:command_block[custom_name='"\\u00a7dCommand Block骰子 \\u00a77- \\u00a7c脉冲(6)"',custom_data={desk_item:1,touzi:2,number:6,touzit:10}]
execute if score desk.random board matches 2 run give @s minecraft:chain_command_block[custom_name='"\\u00a7dCommand Block骰子 \\u00a77- \\u00a7c连锁(9)"',custom_data={desk_item:1,touzi:2,number:9,touzit:10}]
execute if score desk.random board matches 3 run give @s minecraft:repeating_command_block[custom_name='"\\u00a7dCommand Block骰子 \\u00a77- \\u00a7c循环(12)"',custom_data={desk_item:1,touzi:2,number:12,touzit:10}]
execute if score desk.random board matches 4 run give @s minecraft:command_block[custom_name='"\\u00a7dCommand Block骰子 \\u00a77- \\u00a7c激活"',custom_data={desk_item:1,touzi:4,number:0,touzit:10}]
execute if score desk.random board matches 5 run give @s minecraft:command_block[custom_name='"\\u00a7dCommand Block骰子 \\u00a77- \\u00a7c{auto:true}"',custom_data={desk_item:1,touzi:4,number:0,touzit:10}]
execute if score desk.random board matches 6 run give @s minecraft:command_block[custom_name='"\\u00a7dCommand Block骰子 \\u00a77- \\u00a7c{powered:true}"',custom_data={desk_item:1,touzi:4,number:0,touzit:10}]

