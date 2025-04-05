##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set bw.armor.tmp board 0
execute as @s[team=bw.red] run scoreboard players operation bw.armor.tmp board = bw.armor.red board
execute as @s[team=bw.green] run scoreboard players operation bw.armor.tmp board = bw.armor.green board
execute as @s[team=bw.yellow] run scoreboard players operation bw.armor.tmp board = bw.armor.yellow board
execute as @s[team=bw.blue] run scoreboard players operation bw.armor.tmp board = bw.armor.blue board

execute if score bw.armor.tmp board matches 0 run function minecraft:bedwars/during/player/armors/getarmor_noprotect
execute if score bw.armor.tmp board matches 1 run function minecraft:bedwars/during/player/armors/getarmor_protect1
execute if score bw.armor.tmp board matches 2 run function minecraft:bedwars/during/player/armors/getarmor_protect2
execute if score bw.armor.tmp board matches 3 run function minecraft:bedwars/during/player/armors/getarmor_protect3
execute if score bw.armor.tmp board matches 4 run function minecraft:bedwars/during/player/armors/getarmor_protect4
stopsound @s * item.armor.equip_chain
stopsound @s * item.armor.equip_diamond
stopsound @s * item.armor.equip_iron
stopsound @s * item.armor.equip_leather
