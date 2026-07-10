scoreboard players set desk.state state 2
execute as @e[tag=merchant.npc,type=armor_stand] run function minecraft:merchant/player/action/npc/die
function minecraft:merchant/during/new_round