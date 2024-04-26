scoreboard players reset * btw.coin
scoreboard players reset * btw.score
scoreboard players set btw.state state 2
scoreboard players set btw.round board 0

scoreboard players set btw.score.a board 0
scoreboard players set btw.score.b board 0

scoreboard players set btw.toround board 0
execute as @a[team=btw.wait,gamemode=adventure] run scoreboard players add btw.toround board 1
scoreboard players set 2 board 2
scoreboard players operation btw.toround board *= 1 board
scoreboard players add btw.toround board 1
execute if score btw.toround board matches 8.. run scoreboard players set btw.toround board 8
tellraw @a[team=btw.wait] ["\u00a76本次回合数量：",{"score":{"objective": "board","name": "btw.toround"}}]
scoreboard players reset * btw.boattype
scoreboard players reset * btw.gunspeed
scoreboard players set @a[team=btw.wait] btw.coin 0
scoreboard players set @a[team=btw.wait] btw.boattype 0
scoreboard players set @a[team=btw.wait] btw.gunspeed 0
xp set @a[team=btw.wait] 0 points
xp set @a[team=btw.wait] 0 levels
execute as @a[team=btw.wait,gamemode=adventure] at @s run function boatwars/ranteam
function boatwars/roundover/waitnext