##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in minecraft:hungerworld run spawnpoint @a[team=hunger] 101 -60 0

# 人数检测
scoreboard players set hunger.player tick 0
execute as @a[team=hunger,gamemode=adventure] run scoreboard players add hunger.player tick 1
# 倒计时
execute if score hunger.state state matches 1..9 run scoreboard players remove hunger.time board 1
execute if score hunger.state state matches 1..9 run execute store result bossbar hungergame value run scoreboard players get hunger.time board
execute if score hunger.state state matches 1 run function hunger/step/waitallowpvp
execute if score hunger.state state matches 2 run function hunger/step/waitrechest
execute if score hunger.state state matches 3 run function hunger/step/waitfinal
execute if score hunger.state state matches 4 run function hunger/step/finalcountdown
execute if score hunger.state state matches 5 run function hunger/step/waitend


# 结束检测
execute if score hunger.state state matches 1..9 if score hunger.player tick matches ..1 run function hunger/over/over
