
tp @s -302 68 210
gamemode spectator @s
clear @s

execute if score @s bw.pickaxe matches 2.. run scoreboard players remove @s bw.pickaxe 1
execute if score @s bw.axe matches 2.. run scoreboard players remove @s bw.axe 1

execute at @e[limit=1,tag=bw.bed.yellow] if block ~ ~ ~ yellow_bed run tag @s[team=bw.yellow] add bw.fhing
execute at @e[limit=1,tag=bw.bed.green] if block ~ ~ ~ lime_bed run tag @s[team=bw.green] add bw.fhing
execute at @e[limit=1,tag=bw.bed.blue] if block ~ ~ ~ blue_bed run tag @s[team=bw.blue] add bw.fhing
execute at @e[limit=1,tag=bw.bed.red] if block ~ ~ ~ red_bed run tag @s[team=bw.red] add bw.fhing

scoreboard players set @s[tag=bw.fhing] board 6

execute as @s[tag=!bw.fhing] at @s run tag @s remove bw.play
execute as @s[tag=!bw.play] run tellraw @a[tag=bw.player] ["\u00a7b\u00a7l最终击杀！"]
execute as @s[tag=!bw.fhing] at @s run tellraw @s ["\u00a7c你已被淘汰！"]
