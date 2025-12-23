
title @s title ["\u00a7b一箭毙命"]
title @s subtitle ["\u00a7e游戏即将开始"]
clear @s
tellraw @s ["\n\n\u00a7e温馨提示#1：\u00a7f你可以在森林中找到随机道具，它们可能可以帮助到你。\n\u00a7e温馨提示#2：\u00a7f你可以潜行以隐身。但请注意，你的道具无法隐藏！"]

execute as @s[tag=GLOBAL.SPEC] run gamemode spectator @s
execute in overworld run spawnpoint @s -71 -2 224 0 0
