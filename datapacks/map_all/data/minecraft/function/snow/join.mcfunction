##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute store result score tmp.team.canjoin board run function minecraft:team/api/can_join {game:"snow",join:"function snow/join",pull:1b}
execute if score tmp.team.canjoin board matches 0 run return 0
execute in overworld run tp @s -22 32 -74 -90 0
clear @s
effect clear @s
effect give @s instant_health 1 25 true
effect give @s resistance 2 25 true
gamemode adventure @s[gamemode=!creative]
execute as @s run tellraw @a ["§a[MESSAGE] ",{"selector":"@s"},"§7 Joined §fSnow §7."]
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
team join wait.snow @s

execute if score snow.state state matches 1.. run function minecraft:snow/spec
