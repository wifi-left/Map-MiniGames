##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score battle.state state matches 1 run scoreboard players remove battle.time board 1
execute if score battle.state state matches 3..4 run scoreboard players remove battle.time board 1
tag @a[team=wait.battle] add battle.sel
tag @a[team=play.battle.r] add battle.sel
tag @a[team=play.battle.b] add battle.sel
bossbar set minecraft:battle players @a[tag=battle.sel]
spawnpoint @a[tag=battle.sel] 148 29 -420
execute store result bossbar minecraft:battle value run scoreboard players get battle.time board

execute if score battle.state state matches 1 run bossbar set battle max 60
execute if score battle.state state matches 2 run bossbar set battle max 60
execute if score battle.state state matches 2 run bossbar set battle value 60
execute if score battle.state state matches 3 run bossbar set battle max 60
execute if score battle.state state matches 4 run bossbar set battle max 5

execute if score battle.state state matches 1 run bossbar set minecraft:battle name ["\u00a7f\u00a7lBattle Box \u00a7d[红队: ",{"score":{"name": "battle.score.r","objective": "board"},"color": "gold"},"\u00a7d] \u00a7b[蓝队: ",{"score":{"name": "battle.score.b","objective": "board"},"color": "gold"},"\u00a7b] \u00a7a[本局剩余时间: ",{"score":{"name": "battle.time","objective": "board"},"color": "yellow"},"\u00a7es\u00a7a]"]
execute if score battle.state state matches 2 run bossbar set minecraft:battle name ["\u00a7f\u00a7lBattle Box \u00a7d[红队: ",{"score":{"name": "battle.score.r","objective": "board"},"color": "gold"},"\u00a7d] \u00a7b[蓝队: ",{"score":{"name": "battle.score.b","objective": "board"},"color": "gold"},"\u00a7b]"]
execute if score battle.state state matches 3 run bossbar set minecraft:battle name ["\u00a7f\u00a7lBattle Box \u00a7d[红队: ",{"score":{"name": "battle.score.r","objective": "board"},"color": "gold"},"\u00a7d] \u00a7b[蓝队: ",{"score":{"name": "battle.score.b","objective": "board"},"color": "gold"},"\u00a7b] \u00a7a[剩余选择时间: ",{"score":{"name": "battle.time","objective": "board"},"color": "yellow"},"\u00a7es\u00a7a]"]
execute if score battle.state state matches 4 run bossbar set minecraft:battle name ["\u00a7f\u00a7lBattle Box \u00a76[请准备: ",{"score":{"name": "battle.time","objective": "board"},"color": "yellow"},"\u00a7es\u00a76]"]

# 检测
scoreboard players set battle.player.r tick 0
scoreboard players set battle.player.b tick 0
scoreboard players set battle.player.r.live tick 0
scoreboard players set battle.player.b.live tick 0
execute as @a[team=play.battle.r,gamemode=adventure] run scoreboard players add battle.player.r tick 1
# execute as @a[team=play.battle.r,gamemode=adventure] run scoreboard players add battle.player.r.live tick 1
execute as @a[team=play.battle.r,gamemode=spectator] run scoreboard players add battle.player.r tick 1
execute as @a[team=play.battle.b,gamemode=adventure] run scoreboard players add battle.player.b tick 1
# execute as @a[team=play.battle.b,gamemode=adventure] run scoreboard players add battle.player.b.live tick 1
execute as @a[team=play.battle.b,gamemode=spectator] run scoreboard players add battle.player.b tick 1

execute if score battle.state state matches 1..4 if score battle.player.r tick matches ..0 run function battle/over/blue
# execute if score battle.player.r.live tick matches ..0
execute if score battle.state state matches 1..4 if score battle.player.b tick matches ..0 run function battle/over/red
# execute if score battle.player.b.live tick matches ..0

execute if score battle.state state matches 1 run function battle/testfor/secondblock
execute if score battle.state state matches 1 if score battle.time board matches ..0 run function battle/testfor/finalblock
execute if score battle.state state matches 3 if score battle.time board matches ..0 as @a[tag=battle.sel,tag=battle.notready] run function battle/choose/auto
execute if score battle.state state matches 3 if score battle.time board matches ..0 run function battle/round_ready
execute if score battle.state state matches 3 run function battle/testfor/allready
execute if score battle.state state matches 4 if score battle.time board matches 1.. run tellraw @a[tag=battle.sel] ["\u00a7e笼子将在",{"score":{"name": "battle.time","objective": "board"},"color":"red"},"\u00a7e秒后打开。"]
execute if score battle.state state matches 4 if score battle.time board matches 1.. as @a[tag=battle.sel] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 0 1
execute if score battle.state state matches 4 if score battle.time board matches ..0 run function battle/round_start
tag @a remove battle.sel

# execute as @e[type=marker,tag=battle.ranpotion] at @s run
