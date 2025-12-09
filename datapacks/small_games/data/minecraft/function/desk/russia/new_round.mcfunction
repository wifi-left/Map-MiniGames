scoreboard players set desk.russia.nowround order 0
tellraw @a[team=deskgame] ["\u00a7a下一轮。"]
function minecraft:desk/russia/next_player
scoreboard players set desk.state state 1