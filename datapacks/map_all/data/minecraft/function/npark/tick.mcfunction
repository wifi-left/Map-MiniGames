##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players enable @a[team=lobby,tag=parkouring] parkour
execute as @a[scores={park.click=1..},team=lobby,tag=parkouring] at @s run function minecraft:npark/backpoint
scoreboard players reset @a[scores={park.click=1..},team=lobby,tag=parkouring] park.click

execute as @a[scores={parkour=1..1},team=lobby,tag=parkouring] at @s run function minecraft:npark/backpoint
execute as @a[scores={parkour=2..2},team=lobby,tag=parkouring] at @s run function minecraft:npark/reset
execute as @a[scores={parkour=3..3},team=lobby,tag=parkouring] at @s run function minecraft:npark/delect
execute as @a[scores={parkour=4..4},team=lobby,tag=parkouring] at @s run function minecraft:npark/cancel

scoreboard players reset @a[scores={parkour=1..},team=lobby,tag=parkouring] parkour
execute as @a[team=lobby,tag=parkouring,gamemode=!creative] at @s as @s[y=-1,dy=-30] run function minecraft:npark/backpoint
execute as @a[team=lobby,tag=parkouring] at @s if block ~ ~ ~ heavy_weighted_pressure_plate run function minecraft:npark/setpoint
execute as @a[team=lobby,tag=parkouring] at @s if block ~ ~ ~ polished_blackstone_pressure_plate run function minecraft:npark/end
execute as @a[team=lobby,tag=parkouring] at @s if block ~ ~ ~ light_weighted_pressure_plate run function minecraft:npark/resettime



scoreboard players add @a[tag=parkouring,team=lobby] parkour.tick 5
# 100 'tick' -> 's'

