##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set play.color.player tick 0
execute as @a[team=play.color,gamemode=adventure] run scoreboard players add play.color.player tick 1
execute if score play.color.player tick matches ..1 run function minecraft:color/over
effect give @a[team=play.color] resistance 1 25 true
effect give @a[team=play.color] night_vision 15 25 true

execute if score color.state state matches 2..2 run function minecraft:color/step/one
execute if score color.state state matches 3..3 run function minecraft:color/step/two
function color/gettip
