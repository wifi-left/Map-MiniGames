##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set bw.state state 0
gamemode adventure @a[tag=bw.player]

execute as @a[tag=bw.player] run function minecraft:bedwars/message/join
scoreboard players reset * bw.info
scoreboard players set §c bw.info 7
scoreboard players set §r欢迎游玩Bedwars！ bw.info 6
scoreboard players set §r bw.info 5
scoreboard players set §eAuthor§b:§awifi_left bw.info 3
scoreboard players set §r游戏需要至少2人 bw.info 4
scoreboard players set §d bw.info 2
scoreboard players set §eBedwars@MiniGame bw.info 1

bossbar set minigames:bedwars value 1
bossbar set minigames:bedwars max 1
bossbar set minigames:bedwars players
bossbar set minigames:bedwars visible false

title @a[tag=bw.player] reset
