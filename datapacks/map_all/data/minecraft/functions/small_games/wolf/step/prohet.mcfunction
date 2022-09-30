
# # effect give @a
# scoreboard players set wolf.step board 4
# scoreboard players set @a[scores={LRS_JOB=3},team=Who_Killer_Text] SP -2

# tellraw @a[team=Who_Killer_Text] ["\u00a76预言家，请选择你要预测的人。"]
# scoreboard players enable @a[scores={LRS_JOB=3},gamemode=!spectator] SP
# execute as @a[scores={LRS_JOB=3},team=Who_Killer_Text,gamemode=!spectator] run function small_games/wolf/showid
# tellraw @a[scores={LRS_JOB=3},team=Who_Killer_Text,gamemode=!spectator] ["\u00a76现在轮到你选择了！请打开聊天栏，选择一位玩家。\n\u00a7l你将获得玩家的身份好坏。"]
# scoreboard players set wolf.countdown board 30
scoreboard players set wolf.countdown board 37
scoreboard players set wolf.step board 4
schedule function small_games/wolf/step_sel/prohet 3s replace