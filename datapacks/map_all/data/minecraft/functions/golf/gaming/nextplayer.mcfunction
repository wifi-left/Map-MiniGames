tellraw @a[team=golf] ["\u00a76 > 现在轮到 ",{"selector":"@s"},"\u00a76 了。"]
tp @s @e[limit=1,tag=golf.start]
tag @s remove golf.waitshoot
gamemode adventure @s
clear @s