scoreboard players set desk.random board 0
execute store result score desk.random board run random value 1..6
execute if score desk.random board matches 1 run give @s minecraft:iron_pickaxe{display:{Name:'"\\u00a78铁镐骰子 \\u00a77- \\u00a7c⛏(4)"'},desk_item:1,touzi:2,number:4,touzit:3}
execute if score desk.random board matches 2 run give @s minecraft:iron_pickaxe{display:{Name:'"\\u00a78铁镐骰子 \\u00a77- \\u00a7c⛏(4)"'},desk_item:1,touzi:2,number:4,touzit:3}
execute if score desk.random board matches 3 run give @s minecraft:iron_pickaxe{display:{Name:'"\\u00a78铁镐骰子 \\u00a77- \\u00a7c挖铁矿"'},desk_item:1,touzi:4,number:2,touzit:3}
execute if score desk.random board matches 4 run give @s minecraft:iron_pickaxe{display:{Name:'"\\u00a78铁镐骰子 \\u00a77- \\u00a7c挖钻石矿"'},desk_item:1,touzi:4,number:2,touzit:3}
execute if score desk.random board matches 5 run give @s minecraft:iron_pickaxe{display:{Name:'"\\u00a78铁镐骰子 \\u00a77- 无属性面"'},desk_item:1,touzi:0,number:2,touzit:3}
execute if score desk.random board matches 6 run give @s minecraft:iron_pickaxe{display:{Name:'"\\u00a78铁镐骰子 \\u00a77- 无属性面"'},desk_item:1,touzi:0,number:2,touzit:3}
