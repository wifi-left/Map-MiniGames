##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add wolf.round board 1
scoreboard players set wolf.event board 0
function minecraft:twolf/time/night
schedule function minecraft:twolf/events/1/new_round 5s
execute as @a[tag=wolf.tip] at @s run playsound minecraft:ambient.cave player @s ~ ~ ~ 1 1 0

