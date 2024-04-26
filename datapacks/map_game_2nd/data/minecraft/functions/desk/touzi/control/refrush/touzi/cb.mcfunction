scoreboard players set desk.random board 0
execute store result score desk.random board run random value 1..6
execute if score desk.random board matches 1 run give @s minecraft:command_block{display:{Name:'"\\u00a7dCommand Block骰子 \\u00a77- \\u00a7c脉冲(6)"'},desk_item:1,touzi:2,number:6,touzit:10}
execute if score desk.random board matches 2 run give @s minecraft:chain_command_block{display:{Name:'"\\u00a7dCommand Block骰子 \\u00a77- \\u00a7c连锁(9)"'},desk_item:1,touzi:2,number:9,touzit:10}
execute if score desk.random board matches 3 run give @s minecraft:repeating_command_block{display:{Name:'"\\u00a7dCommand Block骰子 \\u00a77- \\u00a7c循环(12)"'},desk_item:1,touzi:2,number:12,touzit:10}
execute if score desk.random board matches 4 run give @s minecraft:command_block{display:{Name:'"\\u00a7dCommand Block骰子 \\u00a77- \\u00a7c激活"'},desk_item:1,touzi:4,number:0,touzit:10}
execute if score desk.random board matches 5 run give @s minecraft:command_block{display:{Name:'"\\u00a7dCommand Block骰子 \\u00a77- \\u00a7c{auto:true}"'},desk_item:1,touzi:4,number:0,touzit:10}
execute if score desk.random board matches 6 run give @s minecraft:command_block{display:{Name:'"\\u00a7dCommand Block骰子 \\u00a77- \\u00a7c{powered:true}"'},desk_item:1,touzi:4,number:0,touzit:10}
