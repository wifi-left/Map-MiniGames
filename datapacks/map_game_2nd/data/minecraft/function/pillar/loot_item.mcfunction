##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

advancement revoke @s only pillar/player_was_killed
team leave @s
tag @s add pillar.sel
data modify block -99 44 615 front_text.messages[0] set value [{"selector":"@a[tag=pillar.sel,limit=1]","color":"aqua"},"\u00a7a 的背包"]
team join pillar @s

summon item ~ ~ ~ {Item:{id:"minecraft:bundle",count:1,components:{"minecraft:custom_data":{pillarItem:1b}}},Tags:["pillar.loot.new"],CustomNameVisible:1b}

data modify entity @e[limit=1,type=item,tag=pillar.loot.new] Item.components."minecraft:bundle_contents" set from entity @s Inventory

data modify entity @e[limit=1,type=item,tag=pillar.loot.new] Item.components."minecraft:custom_name" set from block -99 44 615 front_text.messages[0]

data modify entity @e[limit=1,type=item,tag=pillar.loot.new] CustomName set from block -99 44 615 front_text.messages[0]
tag @e[tag=pillar.loot.new] remove pillar.loot.new
# execute as @a[team=pillar] if predicate minecraft:pillar/killed
scoreboard players reset @s die
tag @s remove pillar.sel
clear @s
tellraw @s ["§c你的物品已经掉落。"]

