##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[tag=bw.player] ["\n\u00a7e\u00a7lBEDWARS \u00a7c死亡决斗开始。凋灵已召唤。\n"]

scoreboard players set bw.event state 4
scoreboard players set bw.event.countdown board 360
# bw.event
# 0: Diamond Up
# 1: Emerlad Up
# 2: Bed Gone
# 3: Dragon
# scoreboard players set bw.set.dm board 32
bossbar set minigames:bedwars max 360
# execute store result bossbar minigames:bedwars value run scoreboard players get bw.reset board
bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7c游戏结束: ",{"score":{"name": "bw.event.countdown","objective": "board"},"color":"light_purple"},"\u00a7es"]
scoreboard players display name event bw.info ["\u00a7r即将：游戏结束"]
# tp @s[team=bw.yellow] -383 30 210 -90 0
# tp @s[team=bw.blue] -303 30 288 -180 0
# tp @s[team=bw.green] -225 30 208 90 0
# tp @s[team=bw.red] -305 30 130 0 0
execute if score bw.yellow state matches 1.. run summon wither -303 60 210 {Team:"bw.yellow",Tags:["bw.entity"],CustomName:'"凋灵"',PersistenceRequired:1b}
execute if score bw.red state matches 1.. run summon wither -303 60 210 {Team:"bw.red",Tags:["bw.entity"],CustomName:'"凋灵"',PersistenceRequired:1b}
execute if score bw.blue state matches 1.. run summon wither -303 60 210 {Team:"bw.blue",Tags:["bw.entity"],CustomName:'"凋灵"',PersistenceRequired:1b}
execute if score bw.green state matches 1.. run summon wither -303 60 210 {Team:"bw.green",Tags:["bw.entity"],CustomName:'"凋灵"',PersistenceRequired:1b}
execute store result score bw.event.time tick run bossbar get minigames:bedwars max
scoreboard players operation bw.event.time tick -= bw.event.countdown board
execute store result bossbar minigames:bedwars value run scoreboard players get bw.event.time tick
