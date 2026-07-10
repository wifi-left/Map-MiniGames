
scoreboard players set mining.state state 100
schedule function minecraft:mining/over/tp 5s replace
schedule clear minecraft:mining/map/random_block/1 
schedule clear minecraft:mining/map/random_block/2 
schedule clear minecraft:mining/map/random_block/3 
schedule clear minecraft:mining/map/random_block/4 
schedule clear minecraft:mining/map/random_block/5 
schedule clear minecraft:mining/map/random_block/6 
tellraw @a ["§a§l[MESSAGE] §2挖矿达人§c游戏结束。"]
tellraw @a[team=mining] ["\u00a7e你将在 \u00a7c5s \u00a7e后传送。"]
team modify mining friendlyFire false
execute as @a[team=mining,gamemode=survival] run gamemode spectator @s
execute as @a[team=mining,gamemode=adventure] run gamemode spectator @s
schedule clear minecraft:mining/map/reset_m

execute in airworld positioned -167 -61 639 run kill @e[type=item,dx=-32,dy=28,dz=-32]
execute in airworld positioned -167 -61 639 run kill @e[type=falling_block,dx=-32,dy=28,dz=-32]
execute in airworld run fill -167 -61 639 -199 -34 607 air
execute in airworld run fill -167 -33 639 -199 -30 607 air
execute in airworld run fill -167 -62 639 -199 -62 607 barrier
tag @a remove mining.win
execute in airworld run forceload remove -199 607 -167 639
