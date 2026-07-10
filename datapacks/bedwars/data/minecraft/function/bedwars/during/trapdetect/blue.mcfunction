#取消陷阱
execute as @a[distance=12..,tag=bw.play,gamemode=adventure,team=!bw.blue,tag=bw.triggeredtrap] run tag @s remove bw.triggeredtrap
# 检测有没有陷阱
execute unless score bw.blue.trap.1 board matches 1.. run return fail
# 有陷阱：
execute as @a[distance=..8,tag=bw.play,gamemode=adventure,team=!bw.blue,tag=!bw.triggeredtrap] run function minecraft:bedwars/during/trigger_trap/blue