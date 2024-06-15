##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players enable @a[team=parkour] parkour
execute as @a[scores={park.click=1..},team=parkour] at @s run function minecraft:lpark/backpoint
scoreboard players reset @a[scores={park.click=1..},team=parkour] park.click

execute as @a[scores={parkour=1},team=parkour] at @s run function minecraft:lpark/backpoint
execute as @a[scores={parkour=2},team=parkour] at @s run function minecraft:lpark/reset
execute as @a[scores={parkour=3},team=parkour] at @s run function minecraft:lpark/delect
execute as @a[scores={parkour=4},team=parkour] at @s run function minecraft:lpark/cancel

scoreboard players reset @a[scores={parkour=1..},team=parkour] parkour
# execute as @a[team=parkour,gamemode=!creative] at @s as @s[y=-1,dy=-30] run function minecraft:lpark/backpoint
execute as @a[team=parkour] at @s if block ~ ~ ~ heavy_weighted_pressure_plate run function minecraft:lpark/setpoint
execute as @a[team=parkour] at @s if block ~ ~ ~ polished_blackstone_pressure_plate run function minecraft:lpark/end
execute as @a[team=parkour] at @s if block ~ ~ ~ light_weighted_pressure_plate run function minecraft:lpark/resettime



scoreboard players add @a[team=parkour] parkour.tick 5
# 100 'tick' -> 's'

execute as @a[team=parkour] at @s as @s[y=-10,dy=-50] run function lpark/backpoint
execute as @a[team=parkour,gamemode=adventure] at @s if block ~ ~ ~ lava run function lpark/backpoint
# execute as @a[team=parkour,gamemode=adventure] at @s if block ~ ~-0.2 ~ lava run function lpark/backpoint
execute as @a[team=parkour,gamemode=survival] at @s run gamemode adventure @s
