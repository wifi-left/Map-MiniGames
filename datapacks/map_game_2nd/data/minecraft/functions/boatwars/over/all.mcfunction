scoreboard players reset * btw.coin
scoreboard players set @a[team=btw.wait] btw.coin 0
scoreboard players reset * btw.score
scoreboard players set btw.state state 5
gamemode spectator @a[team=btw.play.a]
gamemode spectator @a[team=btw.play.b]
gamemode spectator @a[team=btw.wait]
scoreboard players reset * btw.boattype
scoreboard players reset * btw.gunspeed
schedule function boatwars/over/tp 5s
schedule clear boatwars/startround
kill @e[tag=btw.boat]
kill @e[tag=boat.gun.line]