execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0 1
execute unless entity @s[tag=merchant.alive] if score @s score matches 1.. run tellraw @s ["\u00a7c很抱歉，虽然你在小游戏中取得了分数，但你无法获得金币奖励：你已经淘汰了。"]
execute unless entity @s[tag=merchant.alive] run return fail
scoreboard players add @s score 0
scoreboard players set merchant.coin temp 100
execute if score @s score matches 0 run scoreboard players set @s score -1
scoreboard players operation merchant.coin temp *= @s score
team leave @s
execute if score merchant.coin temp matches 1.. run tellraw @a[tag=merchant.player] [{selector:"@s",color:gold},{text:": ",color:aqua},{text:"+",color:green},{score:{"objective":"temp",name:"merchant.coin"},color:green},{text:" 金币",color:yellow}]
execute if score merchant.coin temp matches ..-1 run tellraw @a[tag=merchant.player] [{selector:"@s",color:gold},{text:": ",color:aqua},{text:"",color:red},{score:{"objective":"temp",name:"merchant.coin"},color:red},{text:" 金币",color:yellow}]
team join deskgame @s

scoreboard players operation @s merchant.coin += merchant.coin temp
scoreboard players reset @s score