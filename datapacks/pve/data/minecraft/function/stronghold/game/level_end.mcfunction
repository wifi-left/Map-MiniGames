tellraw @a[team=stronghold] ["\n\u00a7a  全员已经完成了本层探索。\n"]
gamemode spectator @s
title @s title ["\u00a7a已完成探索"]
title @s subtitle ["即将前往下一关"]
execute as @a[team=stronghold] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
scoreboard players set stronghold.state state 3
schedule function minecraft:stronghold/game/next_level 1s