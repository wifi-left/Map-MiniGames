##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

tp @s -302 68 210
gamemode spectator @s
clear @s

execute if score @s bw.pickaxe matches 2.. run scoreboard players remove @s bw.pickaxe 1
execute if score @s bw.axe matches 2.. run scoreboard players remove @s bw.axe 1

execute at @e[limit=1,tag=bw.bed.yellow] if block ~ ~ ~ yellow_bed run tag @s[team=bw.yellow] add bw.fhing
execute at @e[limit=1,tag=bw.bed.green] if block ~ ~ ~ lime_bed run tag @s[team=bw.green] add bw.fhing
execute at @e[limit=1,tag=bw.bed.blue] if block ~ ~ ~ blue_bed run tag @s[team=bw.blue] add bw.fhing
execute at @e[limit=1,tag=bw.bed.red] if block ~ ~ ~ red_bed run tag @s[team=bw.red] add bw.fhing

execute if score bw.mode state matches 3 as @s[tag=bw.fhing] at @s run function minecraft:bedwars/special/xp_died
execute if score bw.mode state matches 7 as @s[tag=bw.fhing] at @s run function minecraft:bedwars/special/xp_died

scoreboard players set @s[tag=bw.fhing] board 6

execute as @s[tag=!bw.fhing] at @s run tag @s remove bw.play
execute as @s[tag=!bw.play] run tellraw @a[tag=bw.player] ["§b§l最终击杀！"]
execute as @s[tag=!bw.fhing] at @s run tellraw @s ["§c你已被淘汰！"]

execute as @s[tag=!bw.play] run function minecraft:bedwars/during/updateinfo/update

# execute as @s[]