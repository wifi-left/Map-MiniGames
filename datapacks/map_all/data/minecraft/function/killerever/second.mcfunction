##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set play.killer.player tick 0
scoreboard players set play.killer.killer tick 0
scoreboard players set play.killer.runner tick 0
execute as @a[team=play.killer,gamemode=adventure] run scoreboard players add play.killer.player tick 1
execute as @a[team=play.killer,tag=killer.killer,gamemode=adventure] run scoreboard players add play.killer.killer tick 1
execute as @a[team=play.killer,tag=killer.runner,gamemode=adventure] run scoreboard players add play.killer.runner tick 1

# execute if score killer.state state matches 1..3 if score play.killer.runner tick matches ..0 run function minecraft:killerever/over/killer
# execute if score killer.state state matches 1..3 if score play.killer.killer tick matches ..0 run function minecraft:killerever/over/runner
# execute if score killer.state state matches 1..3 if score play.killer.player tick matches ..1 run function minecraft:killerever/over/sthwrong