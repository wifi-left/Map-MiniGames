##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[tag=wolf.acting] ["§d[!] ",{"selector":"@s"}," §c放弃了操作。"]
function minecraft:twolf/action/per/tpback
scoreboard players set wolf.tmp board 0
tag @s remove wolf.acting
execute as @a[tag=wolf.acting,gamemode=adventure] run scoreboard players add wolf.tmp board 1
execute if score wolf.tmp board matches ..0 run function minecraft:twolf/control/job/wolf/next

