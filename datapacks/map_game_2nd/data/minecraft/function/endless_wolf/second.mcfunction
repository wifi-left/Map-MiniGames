##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 白天
execute if score endwolf.state state matches 1..4 run function minecraft:endless_wolf/overdetect

execute if score endwolf.state state matches 1 as @a[team=play.endwolf,tag=endless.vampire,gamemode=adventure] at @s if predicate {condition:location_check,predicate:{can_see_sky:true}} run function minecraft:endless_wolf/vampire_sunburt
execute if score endwolf.state state matches 1 as @a[team=play.endwolf,tag=endless.vampire,gamemode=adventure] at @s run effect give @s slowness 1 0 true
spawnpoint @a[team=play.endwolf] -376 54 624

clear @a[team=play.endwolf,tag=!endless.vampire,gamemode=adventure] *[]

execute as @a[team=play.endwolf,tag=endless.vampire,gamemode=adventure] run function minecraft:endless_wolf/compass/vampire
