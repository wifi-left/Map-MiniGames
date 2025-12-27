##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set tick2 tick 0
effect give @a[tag=!no_health] regeneration 2 1 true


# execute positioned 122 120 59 unless entity @e[tag=lobby.car,type=minecart,distance=0..10] run execute if block 123 121 59 stone_button[powered=true] run setblock 121 120 60 minecraft:air
execute if score endwolf.state state matches 1..4 run function minecraft:endless_wolf/longsecond

execute if score gametotal state matches 1.. run function minecraft:small_games/total/long_second

