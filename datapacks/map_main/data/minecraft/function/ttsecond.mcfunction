##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set tick3 tick 0
give @a[team=play.live.runner,gamemode=adventure] arrow 1
# give  arrow 1
## 210 116 30 拉杆2 - 烟花
# execute if block 210 116 22 lever[powered=true] run function lobby/firework

## 210 116 22 拉杆1 - 烟花
# execute if block 210 116 30 lever[powered=true] run function lobby/firework2

execute if score killer.state state matches 1.. run function minecraft:killerever/tsecond
execute if score tnt.state state matches 1.. run function minecraft:tntwars/longsecond
# item replace entity @a[team=hide.play.ani] inventory.26 with arrow


