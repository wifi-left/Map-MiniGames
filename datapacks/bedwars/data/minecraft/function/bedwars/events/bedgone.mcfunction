##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 事件：床破坏（所有床消失，此后死亡不能重生）；下一个事件 = 最终对决（5:00）
scoreboard players set bw.event state 7
scoreboard players set bw.event.countdown board 300
bossbar set minigames:bedwars max 300
bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7c最终对决: ",{"score":{"name": "bw.event.countdown","objective": "board"},"color":"light_purple"},"\u00a7es"]
scoreboard players display name bw.event bw.info ["即将：\u00a7c最终对决\u00a7r"]

# 永久床模式（mode 7）下床不会被破坏，这里只提示规则
execute if score bw.mode state matches 7 run tellraw @a[tag=bw.player] ["\n§e§lBEDWARS §c永久床模式：床无法被破坏，耗光对手的重生次数才能取胜！\n"]
execute unless score bw.mode state matches 7 run function minecraft:bedwars/beds/destory
execute unless score bw.mode state matches 7 run title @a[tag=bw.play] title ["\u00a7c床已被破坏"]
execute unless score bw.mode state matches 7 run title @a[tag=bw.play] subtitle ["\u00a7f所有的床都已被破坏"]
execute unless score bw.mode state matches 7 run tellraw @a[tag=bw.player] ["\n§e§lBEDWARS §c所有床已被破坏，死亡将无法重生！\n"]

execute store result score bw.event.time tick run bossbar get minigames:bedwars max
scoreboard players operation bw.event.time tick -= bw.event.countdown board
execute store result bossbar minigames:bedwars value run scoreboard players get bw.event.time tick
