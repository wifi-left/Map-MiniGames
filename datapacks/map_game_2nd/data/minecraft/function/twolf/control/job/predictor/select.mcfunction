##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:twolf/action/tagselected
execute unless entity @a[tag=wolf.selected] run return 0

tellraw @a[tag=wolf.tip,gamemode=spectator] ["",{"selector":"@s"},"§6 预言了 ",{"selector":"@a[tag=wolf.selected]"}]
tellraw @a[tag=wolf.acting] ["§6你预言了 ",{"selector":"@a[tag=wolf.selected]"}]

execute store result score wolf.1 board as @a[tag=wolf.selected] run function twolf/action/per/getjobtype

execute if score wolf.1 board matches 1 run tellraw @a[tag=wolf.tip,gamemode=spectator] [{"selector":"@a[tag=wolf.selected]"},"§6是",{"text":"好人","color":"green"}]
execute if score wolf.1 board matches 2 run tellraw @a[tag=wolf.tip,gamemode=spectator] [{"selector":"@a[tag=wolf.selected]"},"§6是",{"text":"坏人","color":"red"}]
execute if score wolf.1 board matches 3 run tellraw @a[tag=wolf.tip,gamemode=spectator] [{"selector":"@a[tag=wolf.selected]"},"§6是",{"text":"未知","color":"aqua"}]
execute if score wolf.1 board matches 0 run tellraw @a[tag=wolf.tip,gamemode=spectator] [{"selector":"@a[tag=wolf.selected]"},"§6是",{"text":"出错","color":"dark_red"}]

execute if score wolf.1 board matches 1 run tellraw @s [{"selector":"@a[tag=wolf.selected]"},"§6是",{"text":"好人","color":"green"}]
execute if score wolf.1 board matches 2 run tellraw @s [{"selector":"@a[tag=wolf.selected]"},"§6是",{"text":"坏人","color":"red"}]
execute if score wolf.1 board matches 3 run tellraw @s [{"selector":"@a[tag=wolf.selected]"},"§6是",{"text":"未知","color":"aqua"}]
execute if score wolf.1 board matches 0 run tellraw @s [{"selector":"@a[tag=wolf.selected]"},"§6是",{"text":"出错","color":"dark_red"}]

function twolf/events/event_over

