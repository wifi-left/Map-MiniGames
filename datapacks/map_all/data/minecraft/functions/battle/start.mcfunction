##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[gamemode=adventure,team=wait.battle] add battle.random
execute as @a[tag=battle.random] run function battle/spr
tag @a remove battle.random
tellraw @a[team=wait.battle] ["\u00a7f\u00a7lBATTLE BOX\u00a7a 游戏开始。"]
scoreboard players set battle.ranteam board 1
execute as @a[team=wait.battle,gamemode=adventure] run function battle/spec_s
scoreboard players set battle.score.r board 0
scoreboard players set battle.score.b board 0

scoreboard players operation tmp board = wait.player tick
scoreboard players operation tmp1 board = wait.player tick
scoreboard players set 8 board 8
scoreboard players operation tmp board /= 8 board
scoreboard players operation tmp1 board %= 8 board
execute if score tmp1 board matches 1.. run scoreboard players add tmp board 1

scoreboard players operation battle.toolcount board = tmp board
kill @e[type=armor_stand,tag=battle.ranpotion]

function battle/nextround

