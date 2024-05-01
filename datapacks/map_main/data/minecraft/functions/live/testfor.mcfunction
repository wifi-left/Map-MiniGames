##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[team=wait.live] add liveshowboss
tag @a[team=play.live.killer] add liveshowboss
tag @a[team=play.live.runner] add liveshowboss
bossbar set minecraft:live players
bossbar set minecraft:live players @a[tag=liveshowboss]
tag @a remove liveshowboss
title @a[tag=live.Killer] actionbar ["\u00a7c你是 Killer"]
title @a[team=play.live.runner] actionbar ["\u00a7b你是 Runner"]
## the number of runners
scoreboard players set live.runner tick 0
execute as @a[team=play.live.runner,gamemode=adventure] run scoreboard players add live.runner tick 1
execute if score live.state state matches 1.. if score live.runner tick matches ..0 run function minecraft:live/gameover_killer
execute if score live.state state matches 1.. if score live.time live.all >= live.timelimit live.all as @a[team=play.live.killer] run function minecraft:live/ingame/died
execute if score live.state state matches 1.. unless entity @a[team=play.live.killer] run function minecraft:live/gameover_runner
