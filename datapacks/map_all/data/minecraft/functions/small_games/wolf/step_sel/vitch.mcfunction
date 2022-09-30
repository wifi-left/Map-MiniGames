
# effect give @a
scoreboard players set wolf.step board 3
tellraw @a[team=Who_Killer_Text] ["\u00a76女巫，请选择操作。"]
scoreboard players set @a[scores={LRS_JOB=2},team=Who_Killer_Text] SP -3
execute if score vitch.kill board matches 1.. run scoreboard players enable @a[scores={LRS_JOB=2},team=Who_Killer_Text,gamemode=!spectator] SP
execute as @a[scores={LRS_JOB=2},team=Who_Killer_Text,gamemode=!spectator] if score vitch.kill board matches 1.. run function small_games/wolf/showid
tellraw @a[scores={LRS_JOB=2},team=Who_Killer_Text,gamemode=!spectator] ["\u00a76现在轮到你选择了！请打开聊天栏，选择一位玩家。\n\u00a7l该玩家将被你杀死或救助。"]
execute if entity @a[tag=lrs.out,team=Who_Killer_Text] run tellraw @a[scores={LRS_JOB=2},team=Who_Killer_Text,gamemode=!spectator] ["\u00a76昨晚，",{"selector":"@a[tag=lrs.out,team=Who_Killer_Text]"},"\u00a76 被杀死了。"]
execute if entity @a[tag=lrs.out,team=Who_Killer_Text] if score vitch.help board matches 1.. run tellraw @a[scores={LRS_JOB=2},team=Who_Killer_Text,gamemode=!spectator] [{"text":"\u00a7d[点击此处救他]","clickEvent": {"action": "run_command","value": "/trigger SP set -1"}},"\n\u00a7b或者点击上方列表杀人。"]
scoreboard players set wolf.countdown board 30
execute unless score vitch.kill board matches 1.. run tellraw @a[scores={LRS_JOB=2},team=Who_Killer_Text,gamemode=!spectator] ["\u00a7c你本局无法杀人。"]
execute unless score vitch.help board matches 1.. run tellraw @a[scores={LRS_JOB=2},team=Who_Killer_Text,gamemode=!spectator] ["\u00a7c你本局无法救人。"]