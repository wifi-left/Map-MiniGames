scoreboard players set gameleft.player temp 0
execute as @a[team=blockrace,gamemode=!creative,gamemode=!spectator] run scoreboard players add gameleft.player temp 1
execute if score gameleft.player temp matches ..0 run function minecraft:blockrace/over/over