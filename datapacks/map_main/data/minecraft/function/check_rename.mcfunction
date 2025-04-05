execute in overworld run tp @s 188 124 26
gamemode survival @s
team leave @s
execute as @s[tag=map.old] run tellraw @a ["\u00a7b[玩家] ",{"selector":"@s","color":"gray"},"\u00a7e 貌似更换了一个新的名字重新加入了游戏。"]
scoreboard players set @s old 1
