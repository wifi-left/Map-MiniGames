execute unless score desk.russia.nowround.rounds board matches 1.. run scoreboard players add desk.russia.nowround order 1

tag @a[tag=desk.russia.nowround] remove desk.russia.nowround

execute unless score desk.russia.nowround.rounds board matches 1.. run execute if score desk.russia.nowround order > desk.russia.order order run return run function minecraft:desk/russia/round_over

function minecraft:desk/russia/find_now_round

execute unless entity @a[tag=desk.russia.nowround] run scoreboard players set desk.russia.nowround.rounds board 0
execute unless entity @a[tag=desk.russia.nowround] run return run function minecraft:desk/russia/next_player
execute if score desk.russia.nowround.rounds board matches 1.. run scoreboard players remove desk.russia.nowround.rounds board 1
clear @a[team=deskgame] *[custom_data~{desk_default_tool:true}]
tellraw @a[team=deskgame] ["\u00a77请第[",{score:{name:"desk.russia.nowround",objective:order},color:aqua},"\u00a77]位玩家",{selector:"@a[tag=desk.russia.nowround]"},"\u00a77开始操作。"]
title @a[tag=desk.russia.nowround] title ["\u00a76你的回合"]
title @a[tag=desk.russia.nowround] subtitle ["请开始操作"]
execute as @a[tag=desk.russia.nowround] at @s run function minecraft:desk/russia/default_tool
execute as @a[tag=desk.russia.nowround] at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 2 1
scoreboard players set desk.time board 121