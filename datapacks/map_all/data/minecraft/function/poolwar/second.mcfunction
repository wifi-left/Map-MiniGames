##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## Testfor
scoreboard players set play.pw tick 0
execute as @a[team=pw.play,gamemode=adventure] run scoreboard players add play.pw tick 1
scoreboard players add play.pw state 0
execute if score play.pw tick matches ..1 if score pw.state state matches 1.. run function poolwar/gameover

execute as @a[team=pw.play,gamemode=adventure] at @s if score @s pw.max matches 35.. if block ~ ~ ~ water run scoreboard players remove @s pw.max 5
