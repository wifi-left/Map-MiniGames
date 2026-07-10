
scoreboard players set one_arrow.state state 100
schedule function minecraft:one_arrow/over/tp 5s replace

tellraw @a ["§a§l[MESSAGE] §b一箭毙命§c游戏结束。"]
tellraw @a[team=one_arrow] ["\u00a7e你将在 \u00a7c5s \u00a7e后传送。"]
team modify one_arrow friendlyFire false
execute as @a[team=one_arrow,gamemode=adventure] run gamemode spectator @s
schedule clear minecraft:one_arrow/map/reset_m

tag @a remove one_arrow.win
execute positioned -170 -48 370 run kill @e[type=item,distance=..30]
team modify one_arrow friendlyFire false
team modify one_arrow nametagVisibility always
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{one_arrow:tool}}}}]
