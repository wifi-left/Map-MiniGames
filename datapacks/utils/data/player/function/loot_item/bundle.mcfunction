tag @s add loot.sel
execute in overworld run data modify block 0 -1 0 back_text.messages[0] set value [{"selector":"@a[tag=loot.sel]","color":"aqua"},"\u00a7a 的背包"]
summon item ~ ~ ~ {Item:{id:"minecraft:bundle",count:1,components:{"minecraft:custom_data":{player_loot:1b}}},Tags:["loot.new"],CustomNameVisible:1b}
data modify entity @e[limit=1,type=item,tag=loot.new] Item.components."minecraft:bundle_contents" set from entity @s Inventory
data modify entity @e[limit=1,type=item,tag=loot.new] Item.components."minecraft:bundle_contents" append from entity @s equipment.head
data modify entity @e[limit=1,type=item,tag=loot.new] Item.components."minecraft:bundle_contents" append from entity @s equipment.chest
data modify entity @e[limit=1,type=item,tag=loot.new] Item.components."minecraft:bundle_contents" append from entity @s equipment.legs
data modify entity @e[limit=1,type=item,tag=loot.new] Item.components."minecraft:bundle_contents" append from entity @s equipment.feet
data modify entity @e[limit=1,type=item,tag=loot.new] Item.components."minecraft:bundle_contents" append from entity @s equipment.offhand
execute in overworld run data modify entity @e[limit=1,type=item,tag=loot.new] Item.components."minecraft:item_name" set from block 0 -1 0 back_text.messages[0]
execute in overworld run data modify entity @e[limit=1,type=item,tag=loot.new] CustomName set from block 0 -1 0 back_text.messages[0]
tag @e[tag=loot.new] remove loot.new
tag @a[tag=loot.sel] remove loot.sel