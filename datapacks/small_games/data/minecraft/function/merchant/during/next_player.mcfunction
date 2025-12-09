execute as @a[gamemode=adventure,team=deskgame,limit=1] at @s run return run function minecraft:merchant/player/over_turn

scoreboard players add desk.merchant.nowround order 1

execute if score desk.merchant.nowround order > desk.merchant.order order run return run function minecraft:merchant/during/round_over

function merchant/during/find_now_round

execute unless entity @a[team=deskgame,gamemode=adventure] run return run function minecraft:merchant/during/next_player

tellraw @a[team=deskgame] ["\u00a77请第 [",{score:{name:"desk.merchant.nowround",objective:order},color:aqua},"\u00a77] 位玩家",{selector:"@a[gamemode=adventure,team=deskgame]"},"\u00a77开始操作。"]
title @a[team=deskgame] subtitle ["\u00a77轮到",{selector:"@a[gamemode=adventure,team=deskgame]"},"\u00a77操作了！"]
title @a[team=deskgame] title ["\u00a7b轮到第 ",{score:{name:"desk.merchant.nowround",objective:order},color:green},"\u00a7b 位玩家了！"]
title @a[team=deskgame,gamemode=adventure] title ["\u00a76你的回合"]
title @a[team=deskgame,gamemode=adventure] subtitle ["请开始操作"]
execute as @a[team=deskgame,gamemode=adventure] at @s run function merchant/player/turn
scoreboard players set desk.time board 121