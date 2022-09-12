# say @a[scores={bw.kill=1..},team=sur]
# scoreboard players reset @a[scores={bw.kill=1..},team=sur] bw.kill
advancement revoke @s only surgame:player_was_killed
team leave @s
tag @s add sur.sel
forceload add -46 3 -46 3
data merge block -46 -20 3 {Text1:'[{"selector":"@a[tag=sur.sel]","color":"aqua"},"\\u00a7a 的背包"]'}
forceload remove -46 3 -46 3
team join play.sur @s
summon item ~ ~ ~ {Item:{id:"minecraft:bundle",Count:1b,tag:{surItem:1b}},Tags:["sur.loot.new"],CustomNameVisible:1b}
data modify entity @e[limit=1,type=item,tag=sur.loot.new] Item.tag.Items set from entity @s Inventory
data modify entity @e[limit=1,type=item,tag=sur.loot.new] Item.tag.display.Name set from block -46 -20 3 Text1
data modify entity @e[limit=1,type=item,tag=sur.loot.new] CustomName set from block -46 -20 3 Text1
tag @e[tag=sur.loot.new] remove sur.loot.new
# execute as @a[team=sur] if predicate minecraft:sur/killed
scoreboard players reset @s die
tag @s remove sur.sel
clear @s
tellraw @s ["\u00a7c你的物品已经掉落。"]