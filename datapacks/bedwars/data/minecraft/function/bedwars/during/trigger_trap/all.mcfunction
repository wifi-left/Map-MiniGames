execute as @a[tag=bw.show.target] run function minecraft:bedwars/message/show_trap/main
tag @s add bw.triggeredtrap
execute if score bw.traptype bw.board matches 1 run function minecraft:bedwars/during/trigger_trap/trap_type/mine
execute if score bw.traptype bw.board matches 2 run function minecraft:bedwars/during/trigger_trap/trap_type/slowness
execute if score bw.traptype bw.board matches 3 run function minecraft:bedwars/during/trigger_trap/trap_type/show