title @s actionbar ["\u00a7a救援成功！"]
title @a[distance=..2,gamemode=spectator,tag=stronghold.alive,team=stronghold] actionbar ["\u00a7a救援成功！你复活了"]

tellraw @a[team=stronghold] [{selector:"@s"}," \u00a7b救活了 ",{selector:"@a[distance=..2,gamemode=spectator,tag=stronghold.alive]"}]
scoreboard players reset @s player.board
execute as @a[distance=..2,gamemode=spectator,tag=stronghold.alive,team=stronghold] at @s run function minecraft:stronghold/death/rescue