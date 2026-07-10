scoreboard players operation bw.traptype bw.board = bw.green.trap.1 board
scoreboard players operation bw.green.trap.1 board = bw.green.trap.2 board
scoreboard players operation bw.green.trap.2 board = bw.green.trap.3 board
scoreboard players set bw.green.trap.3 board -1
tag @a[team=bw.green] add bw.show.target
function minecraft:bedwars/during/trigger_trap/all
tag @a[team=bw.green] remove bw.show.target