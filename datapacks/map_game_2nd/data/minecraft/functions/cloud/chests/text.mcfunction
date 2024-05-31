scoreboard players set tmp.chest board 1
execute if block ~ ~-1 ~ chest{Items:[]} run scoreboard players set tmp.chest board 0
execute if data block ~ ~-1 ~ LootTable run scoreboard players set tmp.chest board 3
execute unless block ~ ~-1 ~ chest run scoreboard players set tmp.chest board 2
execute if score tmp.chest board matches 1 run data merge entity @s {text:'"\\u00a7e箱子 (剩余物品)"'}
execute if score tmp.chest board matches 0 run data merge entity @s {text:'"\\u00a77空箱子"'}
execute if score tmp.chest board matches 2 run data merge entity @s {text:'"\\u00a7c箱子被破坏"'}
execute if score tmp.chest board matches 3 run data merge entity @s {text:'"\\u00a7a箱子 (未开封)"'}