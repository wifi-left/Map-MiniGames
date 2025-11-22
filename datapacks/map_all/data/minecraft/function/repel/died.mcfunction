gamemode spectator @s

scoreboard players set play.tmp.player tick 0
execute as @a[team=play.repel,gamemode=adventure] run scoreboard players add play.tmp.player tick 1

execute if score play.tmp.player tick matches 0 run execute as @s run function minecraft:small_games/total/win_score {score:3}
execute if score play.tmp.player tick matches 1 run execute as @s run function minecraft:small_games/total/win_score {score:2}
execute if score play.tmp.player tick matches 2 run execute as @s run function minecraft:small_games/total/win_score {score:1}

clear @s

tellraw @a[team=play.repel] [{"selector":"@s"},"§c 淘汰了 ！"]
scoreboard players operation @s number = cnt.repel number
scoreboard players add cnt.repel number 1

tp @s -94 40 62 0 90