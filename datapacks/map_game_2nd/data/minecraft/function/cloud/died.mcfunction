##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @s
tp @s 688 40 353 0 90


scoreboard players set sw.people tick 0
execute as @a[team=play.sw,gamemode=!spectator] at @s run scoreboard players add sw.people tick 1

execute if score sw.people tick matches 0 run execute as @s run function minecraft:small_games/total/win_score {score:3}
execute if score sw.people tick matches 1 run execute as @s run function minecraft:small_games/total/win_score {score:2}
execute if score sw.people tick matches 2 run execute as @s run function minecraft:small_games/total/win_score {score:1}


tellraw @a[tag=sw.msg] [{"selector":"@s"},"§c 淘汰了。剩余玩家数量：",{"score":{"name":"sw.people","objective":"tick"},"color":"yellow"}]
execute unless score sw.state state matches 1.. run function minecraft:cloud/join
