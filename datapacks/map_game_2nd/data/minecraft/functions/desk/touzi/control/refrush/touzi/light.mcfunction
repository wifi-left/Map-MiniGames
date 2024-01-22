scoreboard players set desk.random board 0
execute store result score desk.random board run random value 1..6
execute if score desk.random board matches 1 run give @s minecraft:light{display:{Name:'"\\u00a7f\\u00a7l光骰子 \\u00a77- \\u00a7b{6}(6)"'},desk_item:1,touzi:3,number:6,touzit:11}
execute if score desk.random board matches 2 run give @s minecraft:light{display:{Name:'"\\u00a7f\\u00a7l光骰子 \\u00a77- \\u00a7b{9}(9)"'},desk_item:1,touzi:3,number:9,touzit:11}
execute if score desk.random board matches 3 run give @s minecraft:light{display:{Name:'"\\u00a7f\\u00a7l光骰子 \\u00a77- \\u00a7b{12}(12)"'},desk_item:1,touzi:3,number:12,touzit:11}
execute if score desk.random board matches 4 run give @s minecraft:light{display:{Name:'"\\u00a7f\\u00a7l光骰子 \\u00a77- \\u00a7bBling~"'},desk_item:1,touzi:5,number:0,touzit:11}
execute if score desk.random board matches 5 run give @s minecraft:light{display:{Name:'"\\u00a7f\\u00a7l光骰子 \\u00a77- \\u00a7bTwinkle~"'},desk_item:1,touzi:5,number:0,touzit:11}
execute if score desk.random board matches 6 run give @s minecraft:light{display:{Name:'"\\u00a7f\\u00a7l光骰子 \\u00a77- \\u00a7b你相信光吗？"'},desk_item:1,touzi:5,number:0,touzit:11}
