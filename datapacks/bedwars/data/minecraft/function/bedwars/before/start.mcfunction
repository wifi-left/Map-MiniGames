##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set bw.state state -3
execute if score bw.custom_team board matches 1 run scoreboard players set bw.startcountdown board 1
execute unless score bw.custom_team board matches 1 run scoreboard players set bw.startcountdown board 10
execute if score bw.startcountdown board matches 5.. run tellraw @a[tag=bw.player] ["§e游戏即将在§c10§e秒后开始"]
