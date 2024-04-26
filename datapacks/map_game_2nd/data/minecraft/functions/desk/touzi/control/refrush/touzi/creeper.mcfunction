scoreboard players set desk.random board 0
execute store result score desk.random board run random value 1..6
execute if score desk.random board matches 1 run give @s minecraft:gunpowder{display:{Name:'"\\u00a72苦力怕骰子 \\u00a77- \\u00a7c点火(4)"'},desk_item:1,touzi:2,number:4,touzit:5}
execute if score desk.random board matches 2 run give @s minecraft:gunpowder{display:{Name:'"\\u00a72苦力怕骰子 \\u00a77- \\u00a7c大型爆炸(6)"'},desk_item:1,touzi:2,number:6,touzit:5}
execute if score desk.random board matches 3 run give @s minecraft:gunpowder{display:{Name:'"\\u00a72苦力怕骰子 \\u00a77- \\u00a7c爆炸"'},desk_item:1,touzi:4,number:0,touzit:5}
execute if score desk.random board matches 4 run give @s minecraft:gunpowder{display:{Name:'"\\u00a72苦力怕骰子 \\u00a77- \\u00a7c同归于尽"'},desk_item:1,touzi:4,number:0,touzit:5}
execute if score desk.random board matches 5 run give @s minecraft:gunpowder{display:{Name:'"\\u00a72苦力怕骰子 \\u00a77- \\u00a7c召唤同伴"'},desk_item:1,touzi:4,number:0,touzit:5}
execute if score desk.random board matches 6 run give @s minecraft:gunpowder{display:{Name:'"\\u00a72苦力怕骰子 \\u00a77- 无属性面"'},desk_item:1,touzi:0,number:0,touzit:5}
