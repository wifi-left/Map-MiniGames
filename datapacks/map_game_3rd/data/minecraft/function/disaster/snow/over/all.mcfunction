
scoreboard players set disaster.snow.state state 100
schedule function minecraft:disaster/snow/over/tp 5s replace

tellraw @a ["§a§l[MESSAGE] \u00a7f灾难 · 雪灾§c游戏结束。"]
tellraw @a[team=disaster.snow] ["\u00a7e你将在 \u00a7c5s \u00a7e后传送。"]
team modify disaster.snow friendlyFire false
execute as @a[team=disaster.snow,gamemode=adventure] run gamemode spectator @s
schedule clear minecraft:disaster/snow/try_reset
fill 240 -35 39 202 -49 1 air
fill 240 -34 39 202 -3 1 air
fill 202 -35 1 240 -37 39 minecraft:snow_block
tag @a remove disaster.snow.win
execute positioned 221 -35 20 run kill @e[type=item,distance=..30]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{disaster.snow:tool}}}}]
kill @e[type=marker,tag=disaster.snow.marker]
kill @e[type=falling_block,tag=disaster.snow.falling_block]
kill @e[type=armor_stand,tag=disaster.snow.armor_stand]
team modify disaster.snow friendlyFire false
