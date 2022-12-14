scoreboard players set bw.event state 3
scoreboard players set bw.event.countdown board 120
# bw.event
# 0: Diamond Up 
# 1: Emerlad Up
# 2: Bed Gone
# 3: Dragon
# scoreboard players set bw.set.dm board 32
bossbar set minigames:bedwars max 120
# execute store result bossbar minigames:bedwars value run scoreboard players get bw.reset board
bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7c死亡决斗: ",{"score":{"name": "bw.event.countdown","objective": "board"},"color":"light_purple"},"\u00a7es"]

setblock -371 31 210 air
setblock -372 31 210 air
setblock -305 31 142 air
setblock -305 31 141 air
setblock -237 31 208 air
setblock -236 31 208 air
setblock -303 31 276 air
setblock -303 31 277 air

execute store result score bw.event.time tick run bossbar get minigames:bedwars max
scoreboard players operation bw.event.time tick -= bw.event.countdown board
execute store result bossbar minigames:bedwars value run scoreboard players get bw.event.time tick

title @a[tag=bw.play] title ["\u00a7c床已被破坏"]
title @a[tag=bw.play] subtitle ["\u00a7f所有的床都已被破坏"]