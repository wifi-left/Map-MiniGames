tag @s remove no_health
gamemode spectator @s
tellraw @s ["\u00a7c你淘汰了。"]
tellraw @a[team=deskgame] ["\u00a76[淘汰信息] ",{selector:"@s"},"\u00a7c 淘汰了。"]
tp @s -18 4 21 0 90
attribute @s max_health modifier remove desk