##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set bw.wait.total tick 0
execute as @a[team=bw.wait,tag=!GLOBAL.SPEC] run scoreboard players add bw.wait.total tick 1

execute if score bw.wait.total tick matches ..1 run function minecraft:bedwars/after/over_beforestart
execute if score bw.wait.total tick matches ..1 run return 0

scoreboard players remove bw.startcountdown board 1
execute if score bw.startcountdown board matches 1.. run tellraw @a[tag=bw.player] ["§e游戏即将在",{"score":{"objective":"board","name":"bw.startcountdown"},"color":"red"},"§e秒后开始"]
execute if score bw.startcountdown board matches ..0 run function bedwars/before/truestart
execute as @a[tag=bw.player] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 0
