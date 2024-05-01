##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set play.hotpot.player tick 0
execute as @a[team=play.hotpot,gamemode=adventure] run scoreboard players add play.hotpot.player tick 1
execute as @a[team=play.hotpot.k,gamemode=adventure] run scoreboard players add play.hotpot.player tick 1

execute if score play.hotpot.player tick matches ..1 run function minecraft:hotpotever/over
effect give @a[team=play.hotpot] resistance 2 25 true

effect give @a[team=play.hotpot] minecraft:water_breathing 2 25 true
effect give @a[team=play.hotpot] minecraft:fire_resistance 2 25 true
effect give @a[team=play.hotpot.k] resistance 2 25 true
effect give @a[team=play.hotpot.k] minecraft:water_breathing 2 25 true
effect give @a[team=play.hotpot.k] minecraft:fire_resistance 2 25 true

effect give @a[team=play.hotpot.k] glowing 2 25 true
effect give @a[team=play.hotpot] glowing 2 25 true
effect give @a[team=play.hotpot] speed 4 0 true
effect give @a[team=play.hotpot.k] speed 4 1 true

execute if score hotpot.state state matches 2.. as @a[team=play.hotpot.k] run title @s actionbar ["\u00a7c你持有 \u00a7aHot Potato，快传给他人！  \u00a7e剩余时间： ",{"score":{"objective": "tick","name": "hp.time"},"color": "green"},"\u00a7as"]
execute if score hotpot.state state matches 2.. as @a[team=play.hotpot] run title @s actionbar ["\u00a7b小心土豆持有者！  \u00a7e剩余时间： ",{"score":{"objective": "tick","name": "hp.time"},"color": "green"},"\u00a7as"]
execute if score hotpot.state state matches 2.. if score hp.time tick matches ..0 run function hotpotever/onceover
execute if score hotpot.state state matches 2.. run scoreboard players remove hp.time tick 1
clear @a[team=play.hotpot] potato
