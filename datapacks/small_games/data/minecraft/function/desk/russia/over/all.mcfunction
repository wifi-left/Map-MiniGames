tag @a[team=deskgame] remove no_health
scoreboard players set desk.state state 100
gamemode spectator @a[team=deskgame,gamemode=adventure]
schedule function minecraft:desk/russia/over/tp 5s replace
tellraw @a[team=deskgame] ["\u00a7e游戏结束。你将在\u00a7c5s\u00a7e后传送。"]
execute as @a[team=deskgame] run attribute @s max_health modifier remove desk