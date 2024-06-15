##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s title ["\u00a7c\u00a7lYou Died"]
title @s subtitle ["\u00a7aLoading..."]
gamemode spectator @s[team=play.live.runner]
execute if score live.set.mode live.all matches 1..1 as @s[team=play.live.runner] run team join play.live.runner @a[team=play.live.killer]
execute if score live.set.mode live.all matches 1..1 as @s[team=play.live.runner] run function minecraft:live/ingame/selkiller
## Normal Mode
execute if score live.set.mode live.all matches 0..0 if score live.state state matches 1.. if score live.time live.all >= live.timelimit live.all as @s run function minecraft:live/gameover_runner

execute if score live.set.mode live.all matches 0..0 run tp @s[team=play.live.killer] 64 55 152 -90 0
execute if score live.set.mode live.all matches 0..0 run title @s[team=play.live.killer] subtitle ["\u00a7a你复活了！"]
execute if score live.set.mode live.all matches 0..0 run clear @s[team=play.live.killer] arrow
## Guess Killer
execute if score live.set.mode live.all matches 1..1 run gamemode spectator @s[team=play.live.killer]
execute as @s[team=play.live.killer] if score live.set.mode live.all matches 1..1 run function minecraft:live/ingame/selkiller
execute if score live.set.mode live.all matches 1..1 as @s[team=play.live.killer] run tellraw @a[team=play.live.runner] ["\u00a7a[INFO] \u00a7c杀手 ",{"selector":"@s"},"\u00a7c 淘汰了 !"]
execute if score live.set.mode live.all matches 1..1 as @s[team=play.live.killer] run team join play.live.runner @s

title @s[gamemode=spectator] subtitle ["对不起，你淘汰了！"]

tp @s[gamemode=spectator] 101 70 172 0 90
