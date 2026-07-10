scoreboard players operation bw.traptype bw.board = bw.red.trap.1 board
scoreboard players operation bw.red.trap.1 board = bw.red.trap.2 board
scoreboard players operation bw.red.trap.2 board = bw.red.trap.3 board
scoreboard players set bw.red.trap.3 board -1
tag @a[team=bw.red] add bw.show.target
function minecraft:bedwars/during/trigger_trap/all
tag @a[team=bw.red] remove bw.show.target