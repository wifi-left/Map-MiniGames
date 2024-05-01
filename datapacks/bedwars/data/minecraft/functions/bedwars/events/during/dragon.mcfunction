##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute store result bossbar minigames:bedwars value run scoreboard players get bw.reset board
bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7c死亡决斗: ",{"score":{"name": "bw.event.countdown","objective": "board"},"color":"light_purple"},"\u00a7es"]

execute store result score bw.event.time tick run bossbar get minigames:bedwars max
scoreboard players operation bw.event.time tick -= bw.event.countdown board
execute store result bossbar minigames:bedwars value run scoreboard players get bw.event.time tick

execute if score bw.event.countdown board matches ..0 run function bedwars/events/dragon

