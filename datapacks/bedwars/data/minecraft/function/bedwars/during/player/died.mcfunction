##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s remove bw.was_killed
tag @s remove bw.died_because_out_of_world
tp @s -302 68 210
gamemode spectator @s
clear @s
tag @s remove bw.triggeredtrap

execute if score @s bw.pickaxe matches 2.. run scoreboard players remove @s bw.pickaxe 1
execute if score @s bw.axe matches 2.. run scoreboard players remove @s bw.axe 1

execute at @e[limit=1,tag=bw.bed.yellow] if block ~ ~ ~ yellow_bed run tag @s[team=bw.yellow] add bw.fhing
execute at @e[limit=1,tag=bw.bed.green] if block ~ ~ ~ lime_bed run tag @s[team=bw.green] add bw.fhing
execute at @e[limit=1,tag=bw.bed.blue] if block ~ ~ ~ blue_bed run tag @s[team=bw.blue] add bw.fhing
execute at @e[limit=1,tag=bw.bed.red] if block ~ ~ ~ red_bed run tag @s[team=bw.red] add bw.fhing

# 永久床模式（mode 7）：床打不掉，淘汰只能靠「重生次数用尽」
execute if score bw.mode state matches 7 as @s[tag=bw.fhing,team=bw.red] if score bw.lives.red board matches ..0 run tag @s remove bw.fhing
execute if score bw.mode state matches 7 as @s[tag=bw.fhing,team=bw.blue] if score bw.lives.blue board matches ..0 run tag @s remove bw.fhing
execute if score bw.mode state matches 7 as @s[tag=bw.fhing,team=bw.yellow] if score bw.lives.yellow board matches ..0 run tag @s remove bw.fhing
execute if score bw.mode state matches 7 as @s[tag=bw.fhing,team=bw.green] if score bw.lives.green board matches ..0 run tag @s remove bw.fhing
execute if score bw.mode state matches 7 as @s[tag=bw.fhing,team=bw.red] run scoreboard players remove bw.lives.red board 1
execute if score bw.mode state matches 7 as @s[tag=bw.fhing,team=bw.blue] run scoreboard players remove bw.lives.blue board 1
execute if score bw.mode state matches 7 as @s[tag=bw.fhing,team=bw.yellow] run scoreboard players remove bw.lives.yellow board 1
execute if score bw.mode state matches 7 as @s[tag=bw.fhing,team=bw.green] run scoreboard players remove bw.lives.green board 1

execute if score bw.mode state matches 3 as @s[tag=bw.fhing] at @s run function minecraft:bedwars/special/xp_died

scoreboard players set @s[tag=bw.fhing] player.board 6

# 快速重生（团队升级）：按队伍等级缩短等待（I = 4 秒 / II = 2 秒）
execute as @s[tag=bw.fhing,team=bw.red] if score bw.respawn.red board matches 1 run scoreboard players set @s player.board 4
execute as @s[tag=bw.fhing,team=bw.red] if score bw.respawn.red board matches 2 run scoreboard players set @s player.board 2
execute as @s[tag=bw.fhing,team=bw.blue] if score bw.respawn.blue board matches 1 run scoreboard players set @s player.board 4
execute as @s[tag=bw.fhing,team=bw.blue] if score bw.respawn.blue board matches 2 run scoreboard players set @s player.board 2
execute as @s[tag=bw.fhing,team=bw.yellow] if score bw.respawn.yellow board matches 1 run scoreboard players set @s player.board 4
execute as @s[tag=bw.fhing,team=bw.yellow] if score bw.respawn.yellow board matches 2 run scoreboard players set @s player.board 2
execute as @s[tag=bw.fhing,team=bw.green] if score bw.respawn.green board matches 1 run scoreboard players set @s player.board 4
execute as @s[tag=bw.fhing,team=bw.green] if score bw.respawn.green board matches 2 run scoreboard players set @s player.board 2

execute as @s[tag=!bw.fhing] at @s run tag @s remove bw.play
# execute as @s[tag=!bw.play] run tellraw @a[tag=bw.player] ["§b§l最终击杀！"]
execute as @s[tag=!bw.fhing] at @s run tellraw @s ["§c你已被淘汰！"]
execute as @s[tag=!bw.fhing] at @s run function minecraft:bedwars/during/player/out
execute as @s[tag=!bw.play] run function minecraft:bedwars/during/updateinfo/update

# execute as @s[]