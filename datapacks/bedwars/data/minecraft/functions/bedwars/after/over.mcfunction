# say @a[tag=bw.play]
scoreboard players reset * bw.tmp.ir
scoreboard players reset * bw.tmp.gd
scoreboard players reset * bw.tmp.dm
scoreboard players reset * bw.tmp.em
scoreboard players reset * bw.axe
scoreboard players reset * bw.pickaxe
scoreboard players reset * bw.armor
tag @a remove bw.attack
tag @a remove bw.armor
tag @a remove bw.speed
tag @a remove bw.fasti
tag @a remove bw.fastii
tag @a remove bw.shears
scoreboard players set bw.state state 6
tag @a remove bw.play
gamemode spectator @a[tag=bw.player]
clear @a[tag=bw.player]
effect clear @a[tag=bw.player] 
schedule function bedwars/after/tp 5s
forceload remove -216 300 -393 121
kill @e[type=item]