scoreboard players operation bw.traptype bw.board = bw.blue.trap.1 board
scoreboard players operation bw.blue.trap.1 board = bw.blue.trap.2 board
scoreboard players operation bw.blue.trap.2 board = bw.blue.trap.3 board
scoreboard players set bw.blue.trap.3 board -1
tag @a[team=bw.blue] add bw.show.target
function minecraft:bedwars/during/trigger_trap/all
tag @a[team=bw.blue] remove bw.show.target