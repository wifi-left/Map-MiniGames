execute in killerworld positioned 202 -48 240 run kill @e[type=item,distance=..200]
execute in killerworld positioned 61 -18 369 run kill @e[type=item,distance=..200]
execute in killerworld positioned 80 -39 450 run kill @e[type=item,distance=..200]
execute in killerworld positioned 196 -37 501 run kill @e[type=item,distance=..200]
execute in killerworld positioned -80 -38 507 run kill @e[type=item,distance=..200]
execute in killerworld positioned -73 -38 236 run kill @e[type=item,distance=..200]
execute in killerworld positioned 69 -38 277 run kill @e[type=item,distance=..200]

execute in killerworld positioned 202 -48 240 run forceload remove ~ ~
execute in killerworld positioned 61 -18 369 run forceload remove ~ ~
execute in killerworld positioned 80 -39 450 run forceload remove ~ ~
execute in killerworld positioned 196 -37 501 run forceload remove ~ ~
execute in killerworld positioned -80 -38 507 run forceload remove ~ ~
execute in killerworld positioned -73 -38 236 run forceload remove ~ ~
execute in killerworld positioned 69 -38 277 run forceload remove ~ ~
team join blaze.wait @a[team=blaze.team.a]
team join blaze.wait @a[team=blaze.team.b]
gamemode spectator @a[team=blaze.wait,gamemode=!creative]
tellraw @a[team=blaze.wait] ["\u00a7c你将在5s后传送。"]
scoreboard players set blaze.state state 100
schedule function minecraft:blaze/over/tp 5s
scoreboard players reset * blaze.coin
scoreboard players reset * blaze.trigger
