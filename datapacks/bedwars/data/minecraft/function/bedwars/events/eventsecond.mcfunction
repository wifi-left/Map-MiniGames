##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 事件系统入口（每秒一次，来自 second.mcfunction）
# 时间表与阶段说明都在 events/during/tick.mcfunction 顶部
bossbar set minigames:bedwars players
bossbar set minigames:bedwars players @a[tag=bw.player]

function bedwars/events/during/tick

scoreboard players remove bw.event.countdown board 1
