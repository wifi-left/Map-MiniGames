##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute run summon minecraft:block_display 453 -1 -473 {Invulnerable:1b,Tags:["hide.animals","neww","hide.wtf"],block_state:{Name:"minecraft:oak_leaves"}}
# execute if score hide.ranani board matches 1
execute as @e[tag=neww] run function minecraft:hideseek/during/ran_block_tp
execute as @e[tag=neww] at @s align xyz run tp @s ~ ~ ~
tag @e[tag=neww] remove neww

