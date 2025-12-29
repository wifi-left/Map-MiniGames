
scoreboard players set mutouren.state state 100
schedule function minecraft:mutouren/over/tp 5s replace

tellraw @a ["§a§l[MESSAGE] §b1、2、3，木头人§c游戏结束。"]
tellraw @a[team=mutouren] ["\u00a7e你将在 \u00a7c5s \u00a7e后传送。"]
team modify mutouren friendlyFire false
execute as @a[team=mutouren,gamemode=adventure] run gamemode spectator @s
tag @a remove mutouren.win_true
tag @a remove mutouren.win
execute in parkourworld run fill -4 -53 423 -4 -55 419 minecraft:oak_fence
team modify mutouren collisionRule never

kill @e[type=pillager,tag=mutouren.pillager]