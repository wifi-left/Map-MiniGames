##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set tick2 tick 0
effect give @a regeneration 2 1 true




give @a[team=play.live.killer,gamemode=adventure] arrow 1

# execute positioned 122 120 59 unless entity @e[tag=lobby.car,type=minecart,distance=0..10] run execute if block 123 121 59 stone_button[powered=true] run setblock 121 120 60 minecraft:air
