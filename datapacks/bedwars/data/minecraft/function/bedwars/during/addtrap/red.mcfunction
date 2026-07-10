execute if score bw.trap.tobeadded bw.board matches 1 run tellraw @a[team=bw.red] [{"selector":"@s"},"§a购买了§6挖掘疲劳陷阱 "]
execute if score bw.trap.tobeadded bw.board matches 2 run tellraw @a[team=bw.red] [{"selector":"@s"},"§a购买了§6缓慢失明陷阱 "]
execute if score bw.trap.tobeadded bw.board matches 3 run tellraw @a[team=bw.red] [{"selector":"@s"},"§a购买了§6现身陷阱 "]
execute if score bw.red.trap.1 board matches 1.. if score bw.red.trap.2 board matches 1.. unless score bw.red.trap.3 board matches 1.. run scoreboard players operation bw.red.trap.3 board = bw.trap.tobeadded bw.board
execute if score bw.red.trap.1 board matches 1.. unless score bw.red.trap.2 board matches 1.. run scoreboard players operation bw.red.trap.2 board = bw.trap.tobeadded bw.board

execute unless score bw.red.trap.1 board matches 1.. run scoreboard players operation bw.red.trap.1 board = bw.trap.tobeadded bw.board


execute as @a[team=bw.red] run function minecraft:bedwars/message/show_trap/main
