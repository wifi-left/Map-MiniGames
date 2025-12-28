
tellraw @a[team=t_says] [{"selector":"@s"},"§a 已完成！"]
tag @s add t_says.finished
execute if score t_says.has_finished board matches 0 run function t_says/player_gain_coin {count:3,reason:"第一个完成"}
execute if score t_says.has_finished board matches 1 run function t_says/player_gain_coin {count:2,reason:"第二个完成"}
execute if score t_says.has_finished board matches 2.. run function t_says/player_gain_coin {count:1,reason:"完成要求"}

scoreboard players add t_says.has_finished board 1
execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
title @s title ["\u00a7a你成功了"]
title @s subtitle ["你完成了要求"]
clear @s *[!custom_data~{"douzi":1}]
