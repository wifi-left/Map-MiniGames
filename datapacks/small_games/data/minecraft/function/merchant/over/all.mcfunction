scoreboard players set desk.state state 100
gamemode spectator @a[team=deskgame,gamemode=adventure]
schedule function minecraft:merchant/over/tp 5s replace
tellraw @a[team=deskgame] ["\u00a7e游戏结束。你将在\u00a7c5s\u00a7e后传送。"]
execute as @e[tag=merchant.npc,type=armor_stand] run function minecraft:merchant/player/action/npc/die

tag @a remove merchant.player
tag @a remove merchant.alive
tag @a remove merchant.win
tag @a remove play.total