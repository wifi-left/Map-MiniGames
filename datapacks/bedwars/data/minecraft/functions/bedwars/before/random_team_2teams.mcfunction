tag @r[team=bw.wait,tag=!GOABLE.SPEC] add bw.rd.sel
execute if score bw.team.random1 board matches 0..0 run team join bw.red @a[tag=bw.rd.sel]
execute if score bw.team.random1 board matches 1..1 run team join bw.blue @a[tag=bw.rd.sel]
tag @a[tag=bw.rd.sel] remove bw.rd.sel
scoreboard players add bw.team.random1 board 1
execute if score bw.team.random1 board matches 2.. run scoreboard players set bw.team.random1 board 0
