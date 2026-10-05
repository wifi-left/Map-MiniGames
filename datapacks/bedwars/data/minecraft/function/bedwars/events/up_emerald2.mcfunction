##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 事件：绿宝石升级 II（绿宝石 50s → 40s）；下一个事件 = 钻石升级 III（3:00）
scoreboard players set bw.set.em board 800

scoreboard players set bw.event state 4
scoreboard players set bw.event.countdown board 180
bossbar set minigames:bedwars max 180
bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7b钻石\u00a7e速度升级 III: ",{"score":{"name": "bw.event.countdown","objective": "board"},"color":"light_purple"},"\u00a7es"]
scoreboard players display name bw.event bw.info ["即将：\u00a7b钻石升级 III\u00a7r"]

tellraw @a[tag=bw.player] ["§a绿宝石§e生成变快。§8（升级 II）"]

execute store result score bw.event.time tick run bossbar get minigames:bedwars max
scoreboard players operation bw.event.time tick -= bw.event.countdown board
execute store result bossbar minigames:bedwars value run scoreboard players get bw.event.time tick
