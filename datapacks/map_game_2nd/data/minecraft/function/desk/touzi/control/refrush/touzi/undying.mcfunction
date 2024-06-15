##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set desk.random board 0
execute store result score desk.random board run random value 1..6
execute if score desk.random board matches 1 run give @s minecraft:totem_of_undying[custom_name='"\\u00a7e不死图腾骰子 \\u00a77- \\u00a7b图腾保佑(3)"',custom_data={desk_item:1,touzi:3,number:3,touzit:9}]
execute if score desk.random board matches 2 run give @s minecraft:totem_of_undying[custom_name='"\\u00a7e不死图腾骰子 \\u00a77- \\u00a7b残血警告(6)"',custom_data={desk_item:1,touzi:3,number:6,touzit:9}]
execute if score desk.random board matches 3 run give @s minecraft:totem_of_undying[custom_name='"\\u00a7e不死图腾骰子 \\u00a77- \\u00a7b不死图腾(6)"',custom_data={desk_item:1,touzi:3,number:6,touzit:9}]
execute if score desk.random board matches 4 run give @s minecraft:totem_of_undying[custom_name='"\\u00a7e不死图腾骰子 \\u00a77- \\u00a7b激活图腾"',custom_data={desk_item:1,touzi:5,number:0,touzit:9}]
execute if score desk.random board matches 5 run give @s minecraft:totem_of_undying[custom_name='"\\u00a7e不死图腾骰子 \\u00a77- \\u00a7b保佑"',custom_data={desk_item:1,touzi:5,number:0,touzit:9}]
execute if score desk.random board matches 6 run give @s minecraft:totem_of_undying[custom_name='"\\u00a7e不死图腾骰子 \\u00a77- \\u00a7b警告"',custom_data={desk_item:1,touzi:5,number:0,touzit:9}]

