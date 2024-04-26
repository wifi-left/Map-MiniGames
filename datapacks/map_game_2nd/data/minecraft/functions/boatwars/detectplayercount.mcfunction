
scoreboard players set btw.c.a board 0
scoreboard players set btw.c.b board 0
execute as @a[team=btw.play.a] run scoreboard players add btw.c.a board 1
execute as @a[team=btw.play.b] run scoreboard players add btw.c.b board 1

execute if score btw.state state matches 1..2 if score btw.c.a board matches ..0 run function boatwars/over/b
execute if score btw.state state matches 1..2 if score btw.c.b board matches ..0 run function boatwars/over/a

scoreboard players set btw.d.a board 0
scoreboard players set btw.d.b board 0
execute as @a[team=btw.play.a,gamemode=adventure] run scoreboard players add btw.d.a board 1
execute as @a[team=btw.play.b,gamemode=adventure] run scoreboard players add btw.d.b board 1

execute if score btw.state state matches 1 if score btw.d.a board matches ..0 run function boatwars/roundover/b
execute if score btw.state state matches 1 if score btw.d.b board matches ..0 run function boatwars/roundover/a