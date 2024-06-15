##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players enable @a[team=lobby,tag=mazing] parkour
execute as @a[scores={park.click=1..},team=lobby,tag=mazing] at @s run function minecraft:maze/backpoint
scoreboard players reset @a[scores={park.click=1..},team=lobby,tag=mazing] park.click

execute as @a[scores={parkour=1..1},team=lobby,tag=mazing] at @s run function minecraft:maze/backpoint
execute as @a[scores={parkour=2..2},team=lobby,tag=mazing] at @s run function minecraft:maze/reset
# execute as @a[scores={parkour=3..3},team=lobby,tag=mazing] at @s run function minecraft:maze/delect
execute as @a[scores={parkour=4..4},team=lobby,tag=mazing] at @s run function minecraft:maze/cancel

scoreboard players reset @a[scores={parkour=1..},team=lobby,tag=mazing] parkour
execute as @a[team=lobby,tag=mazing,gamemode=!creative] at @s as @s[y=-1,dy=-30] run function minecraft:maze/backpoint
# execute as @a[team=lobby,tag=mazing] at @s if block ~ ~ ~ mangrove_pressure_plate run function minecraft:maze/setpoint
execute as @a[team=lobby,tag=mazing] at @s if block ~ ~ ~ crimson_pressure_plate run function minecraft:maze/end
execute as @a[team=lobby,tag=mazing] at @s if block ~ ~ ~ warped_pressure_plate run function minecraft:maze/resettime



scoreboard players add @a[tag=mazing,team=lobby] parkour.tick 5
# 100 'tick' -> 's'

