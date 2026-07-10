function minecraft:blaze/reset_chests
tellraw @a[tag=blaze.player] ["\u00a7a地图木桶战利品已重新填充！"]
execute as @a[tag=blaze.player] at @s run playsound block.chest.open block @s ~ ~ ~ 1 1 1