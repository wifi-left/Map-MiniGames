##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team modify boat prefix ["\u00a7a[W]\u00a79 竞速\u00a78 | "]

scoreboard players reset @e[tag=boat]
kill @e[tag=boat]
scoreboard players set boat.state state 0

gamemode adventure @a[team=boat,gamemode=!creative]
execute as @a[team=boat,gamemode=!creative] run function boat/join
kill @e[type=marker,tag=boat.trap]
kill @e[type=marker,tag=boat.speedmarker]
kill @e[type=armor_stand,tag=boat.speedmarker]
kill @e[type=marker,tag=boat.speedmarkerroot]
kill @e[type=armor_stand,tag=boat.speedmarkerroot]

team modify hunger friendlyFire false


