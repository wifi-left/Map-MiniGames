
scoreboard players set fishing.state state 100
schedule function minecraft:fishing/over/tp 5s replace

tellraw @a ["§a§l[MESSAGE] §b钓鱼达人§c游戏结束。"]
tellraw @a[team=fishing] ["\u00a7e你将在 \u00a7c5s \u00a7e后传送。"]
team modify fishing friendlyFire false
execute as @a[team=fishing,gamemode=adventure] run gamemode spectator @s
schedule clear minecraft:fishing/map/reset_m

tag @a remove fishing.win
execute positioned -170 -48 370 run kill @e[type=item,distance=..30]
