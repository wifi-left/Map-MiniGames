##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# say @a[scores={bw.kill=1..},team=hunger]
# scoreboard players reset @a[scores={bw.kill=1..},team=hunger] bw.kill
advancement revoke @s only hunger/player_was_killed
team leave @s
function player:loot_item/bundle
team join hunger @s
scoreboard players reset @s die
clear @s
tellraw @s ["§c你的物品已经掉落。"]

