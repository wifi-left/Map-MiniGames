execute in overworld run tp @s -152 13 -6 -90 0
clear @s
scoreboard players reset @s LRS_CS

effect clear @s
gamemode adventure @s[gamemode=!creative]
execute as @s run tellraw @a ["§a[MESSAGE] ",{"selector":"@s"},"§7 加入了 §a贪吃蛇游戏 §7."]
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
team join sneak @s

execute if score sneak.state state matches 1.. run function minecraft:sneak/spec
