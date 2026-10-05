##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 事件：最终对决（每支存活队伍刷一只凋灵）；下一个事件 = 平局（5:00）
scoreboard players set bw.event state 8
scoreboard players set bw.event.countdown board 300
bossbar set minigames:bedwars max 300
bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7c平局: ",{"score":{"name": "bw.event.countdown","objective": "board"},"color":"light_purple"},"\u00a7es"]
scoreboard players display name bw.event bw.info ["即将：\u00a7c平局\u00a7r"]

tellraw @a[tag=bw.player] ["\n§e§lBEDWARS §c最终对决开始。凋灵已召唤。\n"]

execute if score bw.yellow state matches 1.. run summon wither -303 60 210 {Team:"bw.yellow",Tags:["bw.entity"],CustomName:"凋灵",PersistenceRequired:1b}
execute if score bw.red state matches 1.. run summon wither -303 60 210 {Team:"bw.red",Tags:["bw.entity"],CustomName:"凋灵",PersistenceRequired:1b}
execute if score bw.blue state matches 1.. run summon wither -303 60 210 {Team:"bw.blue",Tags:["bw.entity"],CustomName:"凋灵",PersistenceRequired:1b}
execute if score bw.green state matches 1.. run summon wither -303 60 210 {Team:"bw.green",Tags:["bw.entity"],CustomName:"凋灵",PersistenceRequired:1b}

execute store result score bw.event.time tick run bossbar get minigames:bedwars max
scoreboard players operation bw.event.time tick -= bw.event.countdown board
execute store result bossbar minigames:bedwars value run scoreboard players get bw.event.time tick
