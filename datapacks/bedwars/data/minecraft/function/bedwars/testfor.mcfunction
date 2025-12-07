# 床破坏
execute if score bd.blue state matches 1.. as @e[tag=bw.bed.blue,limit=1] at @s unless block ~ ~ ~ blue_bed run function minecraft:bedwars/during/beddestroy/blue
execute if score bd.green state matches 1.. as @e[tag=bw.bed.green,limit=1] at @s unless block ~ ~ ~ lime_bed run function minecraft:bedwars/during/beddestroy/green
execute if score bd.yellow state matches 1.. as @e[tag=bw.bed.yellow,limit=1] at @s unless block ~ ~ ~ yellow_bed run function minecraft:bedwars/during/beddestroy/yellow
execute if score bd.red state matches 1.. as @e[tag=bw.bed.red,limit=1] at @s unless block ~ ~ ~ red_bed run function minecraft:bedwars/during/beddestroy/red

# 陷阱
execute if score bd.blue state matches 1.. as @e[tag=bw.bed.blue,limit=1] at @s if block ~ ~ ~ blue_bed run function minecraft:bedwars/during/trapdetect/blue
execute if score bd.green state matches 1.. as @e[tag=bw.bed.green,limit=1] at @s if block ~ ~ ~ lime_bed run function minecraft:bedwars/during/trapdetect/green
execute if score bd.yellow state matches 1.. as @e[tag=bw.bed.yellow,limit=1] at @s if block ~ ~ ~ yellow_bed run function minecraft:bedwars/during/trapdetect/yellow
execute if score bd.red state matches 1.. as @e[tag=bw.bed.red,limit=1] at @s if block ~ ~ ~ red_bed run function minecraft:bedwars/during/trapdetect/red

