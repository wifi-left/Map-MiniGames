setblock 79 23 94 redstone_block

# # effect give @a
# scoreboard players set @a[scores={LRS_JOB=1},team=Who_Killer_Text] SP -2
# scoreboard players set wolf.step board 2
# tellraw @a[team=Who_Killer_Text] ["\u00a76狼人，请选择你要杀害的人。"]
# scoreboard players enable @a[scores={LRS_JOB=1}] SP
# execute as @a[scores={LRS_JOB=1},team=Who_Killer_Text,gamemode=!spectator] run function small_games/wolf/showid
# tellraw @a[scores={LRS_JOB=1},team=Who_Killer_Text,gamemode=!spectator] ["\u00a76现在轮到你选择了！请打开聊天栏，选择一位玩家。\n\u00a7l该玩家将被你杀死。"]
# tellraw @a[scores={LRS_JOB=1},team=Who_Killer_Text,gamemode=!spectator] ["\u00a7a你的狼人团队：",{"selector":"@a[scores={LRS_JOB=1},team=Who_Killer_Text,gamemode=!spectator]"}]
# scoreboard players set wolf.countdown board 30
scoreboard players set wolf.countdown board 37
scoreboard players set wolf.step board 2
schedule function small_games/wolf/step_sel/wolf 3s replace