scoreboard players set desk.random board 0
execute store result score desk.random board run random value 1..6
execute if score desk.random board matches 1 run give @s minecraft:tnt{display:{Name:'"\\u00a7cTNT\\u00a7e骰子 \\u00a77- \\u00a7c爆炸(5)"'},desk_item:1,touzi:2,number:5,touzit:7}
execute if score desk.random board matches 2 run give @s minecraft:tnt{display:{Name:'"\\u00a7cTNT\\u00a7e骰子 \\u00a77- \\u00a7c连锁爆炸(6)"'},desk_item:1,touzi:2,number:6,touzit:7}
execute if score desk.random board matches 3 run give @s minecraft:tnt{display:{Name:'"\\u00a7cTNT\\u00a7e骰子 \\u00a77- \\u00a7c连锁爆炸(6)"'},desk_item:1,touzi:2,number:6,touzit:7}
execute if score desk.random board matches 4 run give @s minecraft:tnt{display:{Name:'"\\u00a7cTNT\\u00a7e骰子 \\u00a77- \\u00a7c引燃"'},desk_item:1,touzi:4,number:0,touzit:7}
execute if score desk.random board matches 5 run give @s minecraft:tnt{display:{Name:'"\\u00a7cTNT\\u00a7e骰子 \\u00a77- \\u00a7c连锁反应"'},desk_item:1,touzi:4,number:0,touzit:7}
execute if score desk.random board matches 6 run give @s minecraft:tnt{display:{Name:'"\\u00a7cTNT\\u00a7e骰子 \\u00a77- \\u00a7c剧烈的氧化还原反应"'},desk_item:1,touzi:4,number:0,touzit:7}