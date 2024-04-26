execute in minecraft:airworld run spawnpoint @s 553 6 32
effect give @a[team=btw.wait] resistance 1 25 true
effect give @a[team=btw.play.a] resistance 1 25 true
effect give @a[team=btw.play.b] resistance 1 25 true

execute as @a[team=btw.play.a,gamemode=adventure] at @s run function boatwars/info
execute as @a[team=btw.play.b,gamemode=adventure] at @s run function boatwars/info
execute if score btw.state state matches 1..2 run function boatwars/detectplayercount

execute if score btw.state state matches 1 as @a[team=btw.play.a,gamemode=adventure] run function boatwars/testgunitem
execute if score btw.state state matches 1 as @a[team=btw.play.b,gamemode=adventure] run function boatwars/testgunitem
