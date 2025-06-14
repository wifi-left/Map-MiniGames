gamemode spectator @a[team=boom,gamemode=adventure]
scoreboard players set boom.state state 5
schedule clear minecraft:bomb/round/cdover
schedule clear minecraft:bomb/round/next_person
function minecraft:bomb/round/reset

scoreboard players set tmp board 0
execute unless entity @a[team=boom,tag=boom.waittoplay] run scoreboard players set tmp board 1
execute if score tmp board matches 1 run function minecraft:bomb/round/now_round_over
execute if score tmp board matches 1 run return 0

tag @a[limit=1,sort=random,team=boom,tag=boom.waittoplay] add boom.sel
tp @a[tag=boom.sel] 424 -59 626 -135 0

gamemode adventure @a[tag=boom.sel]

execute as @a[tag=boom.sel] run title @s title ["\u00a76现在是你的回合"]
execute as @a[tag=boom.sel] run title @s subtitle ["\u00a7a目标：用最少羊毛，拆除所有\u00a7e幽匿尖啸体\u00a7a、\u00a7e潜声传感器"]
execute as @a[tag=boom.sel] run tellraw @s ["§a目标：用最少羊毛，拆除所有\u00a7e幽匿尖啸体\u00a7a、\u00a7e潜声传感器"]
# gamemode adventure @a
clear @a[tag=boom.sel]

tag @a[tag=boom.sel] remove boom.waittoplay
tag @a[tag=boom.sel] remove boom.sel

scoreboard players set boom.time board 421

tellraw @a[team=boom] ["\u00a7d请等待\u00a7a2s\u00a7d，游戏将会继续。"]
schedule function minecraft:bomb/round/cdover 2s replace
