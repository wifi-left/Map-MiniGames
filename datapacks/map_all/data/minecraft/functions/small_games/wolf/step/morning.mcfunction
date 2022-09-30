# scoreboard players set wolf.step board 5
# setblock 79 23 94 air
# execute as @a[team=Who_Killer_Text] at @s run playsound minecraft:ambient.cave player @s
# tellraw @a[team=Who_Killer_Text] ["\u00a7f\u00a7l天亮了。"]
# title @a[team=Who_Killer_Text] title ["\u00a7f\u00a7l天亮了。"]
# execute if entity @a[tag=lrs.out,team=Who_Killer_Text] run tellraw @a[team=Who_Killer_Text] ["\u00a7c这天晚上，",{"selector":"@a[tag=lrs.out,team=Who_Killer_Text]"},"\u00a7c死了。"]
# gamemode spectator @a[tag=lrs.out,team=Who_Killer_Text]
# title @a[tag=lrs.out,team=Who_Killer_Text] title ["\u00a7c你死了"]
# title @a[tag=lrs.out,team=Who_Killer_Text] subtitle ["\u00a7e你被杀死了"]
# execute unless entity @a[tag=lrs.out,team=Who_Killer_Text] run tellraw @a[team=Who_Killer_Text] ["\u00a7a今晚是一个平安夜。"]
# tag @a remove lrs.out
# tellraw @a[gamemode=!spectator,team=Who_Killer_Text] ["\u00a76现在轮到你选择了！请打开聊天栏，选择一位玩家。\n\u00a7l票数最多的玩家将会淘汰出局。"]
# gamemode spectator @a[team=Who_Killer_Text,tag=lrs.out]
# execute as @a[gamemode=!spectator,team=Who_Killer_Text] run function small_games/wolf/showid
# tag @a remove lrs.out
# tellraw @a[team=Who_Killer_Text] ["\u00a7d是时候开始投票啦！\n\u00a7b\u00a7l注意：你只有一次投票机会。"]
# scoreboard players set wolf.countdown board 120
# scoreboard players set @a[team=Who_Killer_Text] SP -3
# effect clear @a[team=Who_Killer_Text]
scoreboard players set wolf.countdown board 37
scoreboard players set wolf.step board 5
schedule function small_games/wolf/step_sel/morning 3s replace