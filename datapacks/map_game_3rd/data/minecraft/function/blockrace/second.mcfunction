execute in minecraft:airworld run spawnpoint @a[team=blockrace] 164 -40 225

execute if score blockrace.state state matches 2..99 if score blockrace.time board matches 1.. run function minecraft:blockrace/countdown

execute if score blockrace.state state matches 2..99 run function minecraft:blockrace/testfor_over

effect give @a[team=blockrace,gamemode=survival] haste 2 1 true