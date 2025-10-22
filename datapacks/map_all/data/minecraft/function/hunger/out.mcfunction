##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tellraw @a[team=hunger] [{"selector":"@s"},"\u00a7c 淘汰了。"]
tellraw @s ["§c你已被淘汰。"]
gamemode spectator
tp @s 449 -10 -238 0 0

scoreboard players set hunger.player tick 0
execute as @a[team=hunger,gamemode=adventure] run scoreboard players add hunger.player tick 1

tellraw @a[team=hunters] [{"selector":"@s"},"\u00a7c淘汰了。剩余",{"score":{"objective": "tick","name": "hunger.player"}},"\u00a7c人。"]

execute if score hunger.player tick matches 0 run execute as @s run function minecraft:small_games/total/win_score {score:3}
execute if score hunger.player tick matches 1 run execute as @s run function minecraft:small_games/total/win_score {score:2}
execute if score hunger.player tick matches 2 run execute as @s run function minecraft:small_games/total/win_score {score:1}