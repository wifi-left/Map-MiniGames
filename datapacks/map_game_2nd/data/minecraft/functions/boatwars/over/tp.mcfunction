##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[team=btw.play.a] add tmp
tag @a[team=btw.play.b] add tmp
tag @a[team=btw.wait] add tmp
execute as @a[tag=tmp] run function boatwars/join
tag @a[tag=tmp] remove tmp
scoreboard players set btw.state state 0
schedule clear boatwars/startround

