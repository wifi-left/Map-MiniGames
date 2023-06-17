scoreboard players set bw.event state 1
scoreboard players set bw.event.countdown board 720
# bw.event
# 0: Diamond Up 
# 1: Emerlad Up
# 2: Bed Gone
# 3: Dragon
scoreboard players set bw.set.dm board 32

bossbar set minigames:bedwars max 720
# execute store result bossbar minigames:bedwars value run scoreboard players get bw.reset board
bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7a绿宝石\u00a7e速度升级: ",{"score":{"name": "bw.event.countdown","objective": "board"},"color":"light_purple"},"\u00a7es"]

tellraw @a[tag=bw.player] ["\u00a7b钻石\u00a7e生成变快。"]

execute store result score bw.event.time tick run bossbar get minigames:bedwars max
scoreboard players operation bw.event.time tick -= bw.event.countdown board
execute store result bossbar minigames:bedwars value run scoreboard players get bw.event.time tick