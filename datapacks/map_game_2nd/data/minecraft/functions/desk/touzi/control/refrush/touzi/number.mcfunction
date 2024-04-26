scoreboard players set desk.random board 0
execute store result score desk.random board run random value 1..6
execute if score desk.random board matches 1 run give @s minecraft:candle{touzit:0,CustomModelData:1,display:{Name:'"\\u00a7a数字骰子 \\u00a77- \\u00a7e1"'},desk_item:1,touzi:1,number:1}
execute if score desk.random board matches 2 run give @s minecraft:candle{touzit:0,CustomModelData:2,display:{Name:'"\\u00a7a数字骰子 \\u00a77- \\u00a7e2"'},desk_item:1,touzi:1,number:2}
execute if score desk.random board matches 3 run give @s minecraft:candle{touzit:0,CustomModelData:3,display:{Name:'"\\u00a7a数字骰子 \\u00a77- \\u00a7e3"'},desk_item:1,touzi:1,number:3}
execute if score desk.random board matches 4 run give @s minecraft:candle{touzit:0,CustomModelData:4,display:{Name:'"\\u00a7a数字骰子 \\u00a77- \\u00a7e4"'},desk_item:1,touzi:1,number:4}
execute if score desk.random board matches 5 run give @s minecraft:candle{touzit:0,CustomModelData:5,display:{Name:'"\\u00a7a数字骰子 \\u00a77- \\u00a7e5"'},desk_item:1,touzi:1,number:5}
execute if score desk.random board matches 6 run give @s minecraft:candle{touzit:0,CustomModelData:6,display:{Name:'"\\u00a7a数字骰子 \\u00a77- \\u00a7e6"'},desk_item:1,touzi:1,number:6}
