scoreboard players set TNT.a.player tick 0 
scoreboard players set TNT.b.player tick 0 
execute as @a[team=play.tntwars,tag=tntwars.a,gamemode=adventure] run scoreboard players add TNT.a.player tick 1
execute as @a[team=play.tntwars,tag=tntwars.b,gamemode=adventure] run scoreboard players add TNT.b.player tick 1