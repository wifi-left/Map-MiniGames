##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove wolf.selected
execute as @r[tag=wolf.acting,gamemode=adventure,scores={LRS_CS=1..}] run function minecraft:twolf/action/tagselected
tag @a remove wolf.randomkilled

execute run tag @a[limit=1,sort=random,tag=wolf.selected,gamemode=adventure,team=wolfpeople] add wolf.randomkilled
tag @a remove wolf.selected
tag @a[tag=wolf.randomkilled] add wolf.selected
tag @a remove wolf.randomkilled
execute if entity @a[tag=wolf.selected,gamemode=adventure] run tellraw @a[tag=wolf.acting] ["\u00a7c操作超时，随机选择。"]
execute unless entity @a[tag=wolf.selected,gamemode=adventure] run tellraw @a[tag=wolf.acting] ["\u00a7c操作超时，取消操作。"]

function minecraft:twolf/control/job/wolf/kill_selector
