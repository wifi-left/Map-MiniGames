##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @r[team=bw.wait,tag=!GOABLE.SPEC] add bw.rd.sel
execute if score bw.team.random board matches 0..0 run team join bw.green @a[tag=bw.rd.sel]
execute if score bw.team.random board matches 1..1 run team join bw.yellow @a[tag=bw.rd.sel]
execute if score bw.team.random board matches 2..2 run team join bw.red @a[tag=bw.rd.sel]
execute if score bw.team.random board matches 3..3 run team join bw.blue @a[tag=bw.rd.sel]
tag @a[tag=bw.rd.sel] remove bw.rd.sel
scoreboard players add bw.team.random board 1
execute if score bw.team.random board matches 4.. run scoreboard players set bw.team.random board 0

