##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @s
tellraw @s ["§c很抱歉，因为游戏人数不均衡，您不幸被抽选为旁观者。"]
tellraw @s[tag=play.total] ["\u00a7e为了补偿您，您将获得1分作为奖励。"]
execute as @s run function minecraft:small_games/total/win_score {score:1}