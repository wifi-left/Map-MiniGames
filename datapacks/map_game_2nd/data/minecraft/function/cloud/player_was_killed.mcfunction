advancement revoke @s only cloud/player_was_killed

function player:loot_item/ground/cloudwars
scoreboard players reset @s die

clear @s
tellraw @s ["§c你的物品已经掉落。"]