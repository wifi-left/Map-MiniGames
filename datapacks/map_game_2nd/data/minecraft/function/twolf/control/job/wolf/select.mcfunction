##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:twolf/action/tagselected
execute unless entity @a[tag=wolf.selected] run return 0
execute if entity @a[tag=wolf.selected] run tellraw @a[tag=wolf.acting] ["§d[!] ",{"selector":"@s"},"§6 想要杀死 ",{"selector":"@a[tag=wolf.selected]"}]

scoreboard players set wolf.tmp board 0
execute as @a[tag=wolf.acting,gamemode=adventure,scores={LRS_CS=1..}] run scoreboard players add wolf.tmp board 1

scoreboard players set wolf.wolfcount board 0
execute as @a[tag=wolf.acting,gamemode=adventure] run scoreboard players add wolf.wolfcount board 1

execute if score wolf.tmp board = wolf.wolfcount board run function minecraft:twolf/control/job/wolf/list_selectors

