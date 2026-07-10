
execute as @a[team=sneak,gamemode=adventure] at @s unless entity @e[tag=sneak.disa,distance=..1] run function minecraft:sneak/color/setcolor

execute as @e[tag=sneak.disa,type=marker] at @s unless score @s snow.tick matches 1.. run tag @s add sneak.die
execute as @e[tag=sneak.disa,type=marker] at @s run particle minecraft:dust{color:5627418,scale:1} ~ ~ ~ 0 0 0 1 1 normal
execute as @e[tag=sneak.die,type=marker] at @s run function minecraft:sneak/color/block_colored

scoreboard players remove @e[tag=sneak.disa,type=marker] snow.tick 1