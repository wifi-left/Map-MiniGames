##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

advancement revoke @s only pillar/player_was_killed
team leave @s
function player:loot_item/bundle
team join pillar @s
# execute as @a[team=pillar] if predicate minecraft:pillar/killed
scoreboard players reset @s die
clear @s
tellraw @s ["§c你的物品已经掉落。"]

