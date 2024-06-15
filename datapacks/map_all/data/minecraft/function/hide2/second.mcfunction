##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players remove hide2.resttime board 1
scoreboard players set hide2.restanimals board 0
scoreboard players set hide2.resthunts board 0
execute as @a[team=hide.runner,gamemode=adventure] at @s run scoreboard players add hide2.restanimals board 1
execute as @a[team=hide.killer,gamemode=adventure] at @s run scoreboard players add hide2.resthunts board 1

bossbar set minecraft:hideseek2 name ["\u00a7b剩余时间：",{"score":{"objective":"board","name":"hide2.resttime"},"color":"gold"},"\u00a76s  \u00a7a存活玩家数：",{"score":{"objective":"board","name":"hide2.restanimals"},"color":"gold"}]

execute store result bossbar minecraft:hideseek2 max run scoreboard players get hide2.maxtime board
execute store result bossbar minecraft:hideseek2 value run scoreboard players get hide2.resttime board

tag @a[team=hide.runner] add hide2.sel
tag @a[team=hide.killer] add hide2.sel
tag @a[team=hide.wait2] add hide2.sel
bossbar set minecraft:hideseek2 players
bossbar set minecraft:hideseek2 players @a[tag=hide2.sel]

# spawnpoint @a[team=hide.runner] 139 59 -135 180
# spawnpoint @a[team=hide.killer] 139 59 -135 180
spawnpoint @a[team=hide.runner] 138 90 -157 0
spawnpoint @a[team=hide.killer] 138 90 -157 0

execute if score hide2.state state matches 2..5 run function hide2/prepare/step1
execute if score hide2.state state matches 1..5 if score hide2.restanimals board matches ..0 run function hide2/gameover/killer
execute if score hide2.state state matches 1..5 if score hide2.resthunts board matches ..0 run function hide2/gameover/runner
execute if score hide2.state state matches 1..5 if score hide2.resttime board matches ..0 run function hide2/gameover/runnertime

scoreboard players set 60 board 60
scoreboard players operation hide2.tmp board = hide2.resttime board
scoreboard players operation hide2.tmp board %= hide2.glowgap board
execute if score hide2.resttime board matches 1.. if score hide2.tmp board matches ..0 run function hide2/glowingeveryone

scoreboard players set 180 board 180
scoreboard players operation hide2.tmp board = hide2.resttime board
scoreboard players operation hide2.tmp board %= 180 board
execute if score hide2.resttime board matches 1.. if score hide2.tmp board matches ..0 run function hide2/during/reflushitem

tag @a[tag=hide2.sel] remove hide2.sel

