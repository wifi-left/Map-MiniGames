##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set sur.state state 1
execute in airworld run kill @e[type=item,distance=0..]
execute as @a[team=wait.sur] run tp @s @e[limit=1,sort=random,tag=sur.tp,type=marker]
team join play.sur @a[team=wait.sur]
tellraw @a[team=play.sur] ["\n\u00a7e   目前 PVP 已被禁止。请留意特殊事件。\n"]
schedule function surgame:enablepvp 180s
team modify play.sur friendlyFire false
gamemode survival @a[team=play.sur,tag=!GOABLE.SPEC]
gamemode spectator @a[team=play.sur,tag=GOABLE.SPEC]
scoreboard players set wait.player tick 0
execute as @a[team=play.sur,gamemode=survival] run scoreboard players add wait.player tick 1
scoreboard players operation sur.maxtime board = wait.player tick
scoreboard players set 90 board 90
scoreboard players set 600 board 600
scoreboard players operation sur.maxtime board *= 90 board
scoreboard players operation sur.maxtime board += 600 board
execute if score sur.maxtime board matches 2400.. run scoreboard players set sur.maxtime board 2400
execute store result bossbar surgame:time max run scoreboard players get sur.maxtime board
scoreboard players set sur.time board 0
execute if score sur.zommode state matches 0 run bossbar set surgame:time max 180

