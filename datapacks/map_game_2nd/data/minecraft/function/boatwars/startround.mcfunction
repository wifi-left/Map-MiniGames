##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=btw.play.a] at @s run function boatwars/spawnboat
execute as @a[team=btw.play.b] at @s run function boatwars/spawnboat
scoreboard players set btw.state state 1
