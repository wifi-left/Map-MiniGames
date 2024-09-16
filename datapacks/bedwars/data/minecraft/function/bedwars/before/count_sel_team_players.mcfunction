scoreboard players set bw.green.1 tick 0
execute as @a[team=bw.wait,tag=!GOABLE.SPEC,scores={bw.team=4}] run scoreboard players add bw.green.1 tick 1
scoreboard players set bw.blue.1 tick 0
execute as @a[team=bw.wait,tag=!GOABLE.SPEC,scores={bw.team=2}] run scoreboard players add bw.blue.1 tick 1
scoreboard players set bw.yellow.1 tick 0
execute as @a[team=bw.wait,tag=!GOABLE.SPEC,scores={bw.team=3}] run scoreboard players add bw.yellow.1 tick 1
scoreboard players set bw.red.1 tick 0
execute as @a[team=bw.wait,tag=!GOABLE.SPEC,scores={bw.team=1}] run scoreboard players add bw.red.1 tick 1

scoreboard players set bw.wait.total tick 0
execute as @a[team=bw.wait,tag=!GOABLE.SPEC] run scoreboard players add bw.wait.total tick 1
scoreboard players set 4 board 4
scoreboard players set 2 board 2
scoreboard players operation bw.wait.perteammax tick = bw.wait.total tick
scoreboard players operation bw.wait.perteammax2 tick = bw.wait.total tick
## 4 teams
execute if score bw.mode state matches 0..3 run scoreboard players operation bw.wait.perteammax tick /= 4 board
execute if score bw.mode state matches 0..3 run scoreboard players operation bw.wait.perteammax2 tick %= 4 board
## 2 teams
execute if score bw.mode state matches 4..7 run scoreboard players operation bw.wait.perteammax tick /= 2 board
execute if score bw.mode state matches 4..7 run scoreboard players operation bw.wait.perteammax2 tick %= 2 board
## Total
execute unless score bw.wait.perteammax2 tick matches 0 run scoreboard players add bw.wait.perteammax tick 1