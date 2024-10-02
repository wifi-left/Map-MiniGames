##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set golf.state state 1
gamemode spectator @a[team=golf,gamemode=!creative]
kill @e[type=zombie,tag=golf.ball]
clear @a[team=golf,gamemode=spectator]

scoreboard players set tmp board 0
execute unless entity @a[team=golf,tag=golf.waittoplay] run scoreboard players set tmp board 1
execute if score tmp board matches 1 run function minecraft:golf/over/now_round
execute if score tmp board matches 1 run return 0

execute as @e[type=experience_orb] at @s if block ~ ~-1 ~ copper_block run kill @s
execute as @e[type=experience_orb] at @s if block ~ ~-1 ~ magma_block run kill @s

tag @a[limit=1,sort=random,team=golf,tag=golf.waittoplay] add golf.sel
execute in golfworld as @a[tag=golf.sel] run function minecraft:golf/gaming/back
gamemode adventure @a[tag=golf.sel]
tellraw @a[team=golf] ["\u00a76 > 现在轮到 ",{"selector":"@a[gamemode=adventure,team=golf]"},"\u00a76 了。"]
tp @a[gamemode=adventure,team=golf,limit=1] @e[limit=1,tag=golf.start]
tag @a[gamemode=adventure,team=golf,limit=1] remove golf.waitshoot
execute as @a[tag=golf.sel] run title @s title ["\u00a76现在是你的回合"]
execute as @a[tag=golf.sel] run title @s subtitle ["\u00a7a目标：让Ball进洞（粗金块+铜块）"]
execute as @a[tag=golf.sel] run tellraw @s ["\u00a7a目标：让Ball进洞（粗金块+铜块）"]
# gamemode adventure @a
clear @a[gamemode=adventure,team=golf,limit=1]
tag @a[tag=golf.sel] remove golf.waittoplay
tag @a[tag=golf.sel] remove golf.sel

execute in golfworld positioned -91 -60 40 run function golf/gaming/ballspawn
scoreboard players set golf.state state 2

scoreboard players set golf.time tick 421
bossbar set minecraft:golf players @a[team=golf]