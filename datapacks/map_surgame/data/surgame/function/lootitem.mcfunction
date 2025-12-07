
advancement revoke @s only surgame:player_was_killed

function player:loot_item/bundle

scoreboard players reset @s die
clear @s
tellraw @s ["§c你的物品已经掉落。"]

