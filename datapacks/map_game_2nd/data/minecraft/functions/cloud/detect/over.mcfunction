scoreboard players set sw.people tick 0
execute as @a[team=play.sw,gamemode=!spectator] at @s run scoreboard players add sw.people tick 1
execute if score sw.state state matches 2..99 if score sw.people tick matches ..1 unless entity @a[team=play.sw,gamemode=survival] run function minecraft:cloud/over/nopeople
execute if score sw.state state matches 2..99 if score sw.people tick matches ..1 run function minecraft:cloud/over/apeople