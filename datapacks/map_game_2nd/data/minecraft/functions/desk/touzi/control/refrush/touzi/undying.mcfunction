scoreboard players set desk.random board 0
execute store result score desk.random board run random value 1..6
execute if score desk.random board matches 1 run give @s minecraft:totem_of_undying{display:{Name:'"\\u00a7e不死图腾骰子 \\u00a77- \\u00a7b图腾保佑(3)"'},desk_item:1,touzi:3,number:3,touzit:9}
execute if score desk.random board matches 2 run give @s minecraft:totem_of_undying{display:{Name:'"\\u00a7e不死图腾骰子 \\u00a77- \\u00a7b残血警告(6)"'},desk_item:1,touzi:3,number:6,touzit:9}
execute if score desk.random board matches 3 run give @s minecraft:totem_of_undying{display:{Name:'"\\u00a7e不死图腾骰子 \\u00a77- \\u00a7b不死图腾(6)"'},desk_item:1,touzi:3,number:6,touzit:9}
execute if score desk.random board matches 4 run give @s minecraft:totem_of_undying{display:{Name:'"\\u00a7e不死图腾骰子 \\u00a77- \\u00a7b激活图腾"'},desk_item:1,touzi:5,number:0,touzit:9}
execute if score desk.random board matches 5 run give @s minecraft:totem_of_undying{display:{Name:'"\\u00a7e不死图腾骰子 \\u00a77- \\u00a7b保佑"'},desk_item:1,touzi:5,number:0,touzit:9}
execute if score desk.random board matches 6 run give @s minecraft:totem_of_undying{display:{Name:'"\\u00a7e不死图腾骰子 \\u00a77- \\u00a7b警告"'},desk_item:1,touzi:5,number:0,touzit:9}