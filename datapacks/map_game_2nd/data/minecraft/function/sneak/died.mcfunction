##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @s
tellraw @s ["§c对不起，你踩到某人的尾巴了。\n§a请等待下一局游戏！"]
tellraw @a[team=sneak] ["§a[SNEAK] ",{"selector":"@s"},"§7淘汰了。"]

scoreboard players set play.tmp.player tick 0
execute as @a[team=sneak,gamemode=adventure] run scoreboard players add play.tmp.player tick 1

execute if score play.tmp.player tick matches 0 run execute as @s run function minecraft:small_games/total/win_score {score:3}
execute if score play.tmp.player tick matches 1 run execute as @s run function minecraft:small_games/total/win_score {score:2}
execute if score play.tmp.player tick matches 2 run execute as @s run function minecraft:small_games/total/win_score {score:1}