# setblock 79 23 94 redstone_block

# # effect give @a
scoreboard players set wolf.countdown board 37
scoreboard players set wolf.step board 1
schedule function small_games/wolf/step_sel/guard 3s replace
# scoreboard players set @a[scores={LRS_JOB=4},team=Who_Killer_Text] SP -2
# tellraw @a[team=Who_Killer_Text] ["\u00a76守卫，请选择你要保护的人。"]
# scoreboard players enable @a[scores={LRS_JOB=4},team=Who_Killer_Text,gamemode=!spectator] SP
# execute as @a[scores={LRS_JOB=4},team=Who_Killer_Text,gamemode=!spectator] run function small_games/wolf/showid
# tellraw @a[scores={LRS_JOB=4},team=Who_Killer_Text,gamemode=!spectator] ["\u00a76现在轮到你选择了！请打开聊天栏，选择一位玩家。\n\u00a7l该玩家在这一轮将不会被狼杀死。"]