scoreboard players set desk.random board 0
execute store result score desk.random board run random value 1..6
execute if score desk.random board matches 1 run give @s minecraft:candle[custom_data={touzit:0,desk_item:1,touzi:1,number:1},custom_model_data={floats:[1f]},custom_name='"\\u00a7a数字骰子 \\u00a77- \\u00a7e1"']
execute if score desk.random board matches 2 run give @s minecraft:candle[custom_data={touzit:0,desk_item:1,touzi:1,number:2},custom_model_data={floats:[2f]},custom_name='"\\u00a7a数字骰子 \\u00a77- \\u00a7e2"']
execute if score desk.random board matches 3 run give @s minecraft:candle[custom_data={touzit:0,desk_item:1,touzi:1,number:3},custom_model_data={floats:[3f]},custom_name='"\\u00a7a数字骰子 \\u00a77- \\u00a7e3"']
execute if score desk.random board matches 4 run give @s minecraft:candle[custom_data={touzit:0,desk_item:1,touzi:1,number:4},custom_model_data={floats:[4f]},custom_name='"\\u00a7a数字骰子 \\u00a77- \\u00a7e4"']
execute if score desk.random board matches 5 run give @s minecraft:candle[custom_data={touzit:0,desk_item:1,touzi:1,number:5},custom_model_data={floats:[5f]},custom_name='"\\u00a7a数字骰子 \\u00a77- \\u00a7e5"']
execute if score desk.random board matches 6 run give @s minecraft:candle[custom_data={touzit:0,desk_item:1,touzi:1,number:6},custom_model_data={floats:[6f]},custom_name='"\\u00a7a数字骰子 \\u00a77- \\u00a7e6"']

