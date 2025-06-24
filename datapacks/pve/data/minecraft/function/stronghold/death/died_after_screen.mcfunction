function minecraft:stronghold/death/find_deathpoint

execute unless entity @e[tag=stronghold.flagged] run return 0
gamemode spectator @s
tp @s @e[tag=stronghold.flagged,limit=1]
title @s title ["\u00a76你晕倒了"]
title @s subtitle ["正在等待救援..."]
execute if function minecraft:stronghold/death/died_check_if_fuhuo run return 0
tellraw @a[team=stronghold] [{selector:"@s"},"\u00a76 晕倒了，正在等待救援..."]

tag @e[tag=stronghold.flagged] remove stronghold.flagged
tag @s remove stronghold.died.waiting
scoreboard players set @s player.board 900
