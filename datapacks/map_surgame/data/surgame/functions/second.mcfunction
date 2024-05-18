##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in airworld run spawnpoint @a[team=play.sur] -46 -26 3
execute in airworld run spawnpoint @a[team=play.sur.zom] -46 -26 3

tag @a[team=play.sur] add sur.needshow
tag @a[team=play.sur.zom] add sur.needshow
tag @a[team=wait.sur] add sur.needshow
bossbar set surgame:time players @a[tag=sur.needshow]
tag @a remove sur.needshow

recipe give @a[team=play.sur] *
recipe give @a[team=play.sur.zom] *

function compasstrack:second

execute store result bossbar surgame:time value run scoreboard players get sur.time board
execute if score sur.state state matches 2 run bossbar set surgame:time name ["\u00a79生存游戏 \u00a7aSurvival Game \u00a76- \u00a7e重置地图中..."]
execute if score sur.state state matches 1 if score sur.zommode state matches 1 if score sur.time board matches ..180 run bossbar set surgame:time name ["\u00a79事件：\u00a7c僵尸变异 \u00a7b[",{"score":{"name": "sur.time","objective": "board"},"color":"green"},"\u00a7b/\u00a7e180\u00a7b]"]
# execute if score sur.state state matches 1 if score sur.zommode state matches 1 if score sur.time board matches ..180 run bossbar set surgame:time max 180
execute if score sur.state state matches 1 if score sur.zommode state matches 0 if score sur.time board matches ..180 run bossbar set surgame:time name ["\u00a79事件：\u00a7c允许 PVP \u00a7b[",{"score":{"name": "sur.time","objective": "board"},"color":"green"},"\u00a7b/\u00a7e180\u00a7b]"]
execute if score sur.state state matches 1 if score sur.zommode state matches 1 if score sur.time board matches 181.. run bossbar set surgame:time name ["\u00a79事件：\u00a7a救援到来 \u00a7b[",{"score":{"name": "sur.time","objective": "board"},"color":"green"},"\u00a7b/\u00a7e",{"score":{"name": "sur.maxtime","objective": "board"},"color":"yellow"},"\u00a7b]"]

scoreboard players operation sur.resettime board = sur.maxtime board
scoreboard players operation sur.resettime board -= sur.time board
execute if score sur.resettime board matches 120 run tellraw @a[team=play.sur] ["\u00a76现在僵尸能更轻松地找到你！"]
execute if score sur.resettime board matches 120 run tellraw @a[team=play.sur.zom] ["\u00a76现在你能更轻松地找到玩家！"]
execute if score sur.resettime board matches ..120 run effect give @a[team=play.sur] glowing 2 25 true

execute if score sur.state state matches 1 run scoreboard players add sur.time board 1
execute if score sur.state state matches 1 if score sur.zommode state matches 1 run function surgame:testfor/zombie
execute if score sur.state state matches 1 if score sur.zommode state matches 0 run function surgame:testfor/normal
execute as @a[team=play.sur.zom] at @s run team join play.sur.zom @e[type=zombie,distance=0..10]
execute as @a[team=play.sur.zom] at @s run team join play.sur.zom @e[type=skeleton,distance=0..10]
effect give @e[team=play.sur.zom] speed 2 0 true
effect give @e[team=play.sur.zom] jump_boost 2 1 true
effect give @e[team=play.sur.zom] minecraft:strength 3 2 true
effect give @e[team=play.sur.zom] minecraft:haste 3 0 true
effect give @e[team=play.sur] minecraft:haste 3 1 true
