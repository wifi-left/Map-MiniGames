scoreboard players set sur.player tick 0
execute as @a[team=play.sur,gamemode=survival] run scoreboard players add sur.player tick 1
execute if score sur.player tick matches ..1 run function surgame:over/normal