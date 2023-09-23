scoreboard players reset * btw.coin
scoreboard players reset * btw.score
scoreboard players set btw.state state 5
gamemode spectator @a[team=btw.play.a]
gamemode spectator @a[team=btw.play.b]
gamemode spectator @a[team=btw.wait]
scoreboard players reset * btw.boattype
scoreboard players reset * btw.gunspeed
schedule function boatwars/over/tp 5s