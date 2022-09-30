title @a[team=Who_Killer_Text] title ["\u00a70\u00a7l天黑了"]
title @a[team=Who_Killer_Text] subtitle ["\u00a70\u00a7l"]
# scoreboard players set @a[team=Who_Killer_Text] SP -2

# execute if score vitch.kill board matches ..0 if score vitch.help board matches ..0 run function small_games/wolf/vitchreset
# setblock 79 23 94 minecraft:redstone_block
# execute if entity @a[team=Who_Killer_Text,scores={LRS_JOB=4}] run function small_games/wolf/step/guard
# execute unless entity @a[team=Who_Killer_Text,scores={LRS_JOB=4}] run function small_games/wolf/step/wolf
# # function small_games/wolf/step/wolf
# # function small_games/wolf/step/vitch
# # function small_games/wolf/step/prohet
# tag @a remove lrs.out
# # function small_games/wolf/step/morning
# #/setblock 79 23 94 minecraft:redstone_block

# tag @a remove lrs.out
# tag @a remove protected
scoreboard players set wolf.countdown board 37
scoreboard players set wolf.step board 1
schedule function small_games/wolf/step_sel/night 3s replace