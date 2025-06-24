##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove wolf.selected
execute as @a[tag=wolf.acting,gamemode=adventure] run function minecraft:twolf/action/tagselected_notclear

scoreboard players set wolf.tmp board 0
execute as @a[tag=wolf.selected,gamemode=adventure] run scoreboard players add wolf.tmp board 1

execute if score wolf.tmp board matches 2.. run tellraw @a[tag=wolf.acting] ["§d[!] §6请统一意见。你们只能共同杀死一个人。\n§8 | §6请在统一意见后确认操作。"]
execute if score wolf.tmp board matches 1 run function minecraft:twolf/control/job/wolf/kill_selector

