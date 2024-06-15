##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[team=wait.battle] add battle.sel
tag @a[team=play.battle.r] add battle.sel
tag @a[team=play.battle.b] add battle.sel
# bossbar set minecraft:battle players @a[tag=battle.sel]

scoreboard players set battle.state state 3
# 选择

scoreboard players set battle.time board 61
fill 145 27 -341 143 27 -339 white_wool

tp @a[team=play.battle.r] 142 43.2 -362 180 0
effect give @a[team=play.battle.r] regeneration 2 25 true
gamemode adventure @a[team=play.battle.r]

tp @a[team=play.battle.b] 146 43.2 -318 0 0
effect give @a[team=play.battle.b] regeneration 2 25 true
gamemode adventure @a[team=play.battle.b]

# tag @a[tag=battle.sel]

scoreboard players operation battle.item.a.1 board = battle.toolcount board
scoreboard players operation battle.item.a.2 board = battle.toolcount board
scoreboard players operation battle.item.a.3 board = battle.toolcount board
scoreboard players operation battle.item.a.4 board = battle.toolcount board

scoreboard players operation battle.item.b.1 board = battle.toolcount board
scoreboard players operation battle.item.b.2 board = battle.toolcount board
scoreboard players operation battle.item.b.3 board = battle.toolcount board
scoreboard players operation battle.item.b.4 board = battle.toolcount board

fill 141 44 -312 150 44 -312 minecraft:light_blue_concrete replace minecraft:redstone_block
fill 147 44 -368 138 44 -368 minecraft:light_blue_concrete replace minecraft:redstone_block
fill 146 39 -324 142 35 -324 minecraft:light_blue_stained_glass keep
fill 142 39 -356 146 35 -356 minecraft:red_stained_glass keep

title @a[tag=battle.sel] title ["\u00a76回合开始"]
title @a[tag=battle.sel] subtitle ["\u00a7b请选择物品"]
execute as @a[tag=battle.sel] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @a[tag=battle.sel] run function battle/item/normal
execute as @a[tag=battle.sel] run tag @s add battle.notready

tag @a remove battle.sel

scoreboard players set battle.time board 61
