##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set wait.player tick 0
execute as @a[team=wait.battle,gamemode=adventure] run scoreboard players add wait.player tick 1

# execute if score battle.state state matches 1.. run 

execute if score wait.player tick matches ..1 run tellraw @s ["§c人数不够！请等待至少2人！"]
execute if score wait.player tick matches ..1 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
# execute if score wait.player tick matches 9.. run tellraw @s ["\u00a7c人数过多！只允许最多8人！"]
# execute if score wait.player tick matches 9.. run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1

scoreboard players operation tmp board = wait.player tick
scoreboard players set 2 board 2
scoreboard players operation tmp board %= 2 board

execute if score wait.player tick matches 2.. unless score tmp board matches 0 run execute as @a[sort=random,limit=1,team=wait.battle,gamemode=adventure] run function minecraft:battle/spec_not_fair

execute if score wait.player tick matches 2.. run function minecraft:battle/start


