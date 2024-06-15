##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
##execute as @a[team=play.hotpot.k] at @s run function hotpotever/died

scoreboard players set play.hotpot.player tick 0
execute as @a[team=play.hotpot,gamemode=adventure] run scoreboard players add play.hotpot.player tick 1

team join play.hotpot.k @r[team=play.hotpot,gamemode=adventure]
execute if score play.hotpot.player tick matches 5.. run team join play.hotpot.k @r[team=play.hotpot,gamemode=adventure]
execute if score play.hotpot.player tick matches 8.. run team join play.hotpot.k @r[team=play.hotpot,gamemode=adventure]
execute if score play.hotpot.player tick matches 12.. run team join play.hotpot.k @r[team=play.hotpot,gamemode=adventure]
execute if score play.hotpot.player tick matches 16.. run team join play.hotpot.k @r[team=play.hotpot,gamemode=adventure]
execute as @a[team=play.hotpot] at @s run playsound entity.ender_dragon.growl player @s
execute as @a[team=play.hotpot.k] at @s run playsound entity.ender_dragon.growl player @s

tellraw @a[team=play.hotpot] ["\n    \u00a7cHot Potato 持有者：",{"selector":"@a[team=play.hotpot.k]"},"\n"]
tellraw @a[team=play.hotpot.k] ["\n    \u00a7bHot Potato 持有者（包含你）：",{"selector":"@a[team=play.hotpot.k]"},"\n"]
give @a[team=play.hotpot.k] potato[custom_data={hotpot:1},custom_name='{"text":"Hot Potato","color":"#aed3ff","bold": true}']
scoreboard players set hotpot.state state 2
execute if score play.hotpot.player tick matches 2.. run scoreboard players set hp.time tick 30
execute if score play.hotpot.player tick matches 3.. run scoreboard players set hp.time tick 40
execute if score play.hotpot.player tick matches 4.. run scoreboard players set hp.time tick 45
execute if score play.hotpot.player tick matches 8.. run scoreboard players set hp.time tick 50
execute if score play.hotpot.player tick matches 16.. run scoreboard players set hp.time tick 60
team modify play.hotpot.k color dark_red
