scoreboard players operation bw.traptype bw.board = bw.yellow.trap.1 board
scoreboard players operation bw.yellow.trap.1 board = bw.yellow.trap.2 board
scoreboard players operation bw.yellow.trap.2 board = bw.yellow.trap.3 board
scoreboard players set bw.yellow.trap.3 board -1
tag @a[team=bw.yellow] add bw.show.target
function minecraft:bedwars/during/trigger_trap/all
tag @a[team=bw.yellow] remove bw.show.target
