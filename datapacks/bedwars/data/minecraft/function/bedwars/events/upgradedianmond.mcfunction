##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set bw.event state 1
scoreboard players set bw.event.countdown board 360
# bw.event
# 0: Diamond Up
# 1: Emerlad Up
# 2: Bed Gone
# 3: Dragon
scoreboard players set bw.set.dm board 32

bossbar set minigames:bedwars max 720
# execute store result bossbar minigames:bedwars value run scoreboard players get bw.reset board
bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7a绿宝石\u00a7e速度升级: ",{"score":{"name": "bw.event.countdown","objective": "board"},"color":"light_purple"},"\u00a7es"]
scoreboard players display name event bw.info ["即将：\u00a7a绿宝石\u00a7r速度升级"]

tellraw @a[tag=bw.player] ["§b钻石§e生成变快。"]

execute store result score bw.event.time tick run bossbar get minigames:bedwars max
scoreboard players operation bw.event.time tick -= bw.event.countdown board
execute store result bossbar minigames:bedwars value run scoreboard players get bw.event.time tick

