# execute unless data entity @s {Item:{components:{"minecraft:custom_data":{stronghold:"xuyuanbi"}}}} run tp @s ~ ~2.5 ~
execute if data entity @s {Item:{components:{"minecraft:custom_data":{stronghold:"xuyuanbi"}}}} run function minecraft:stronghold/special/xuyuanchi_loot
# summon item ~ ~ ~ 
function minecraft:stronghold/special/xuyuanchi_waste_change_gold