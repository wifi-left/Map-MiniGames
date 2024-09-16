##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute as @e[tag=emerald] at @s run title @a[distance=0..2] actionbar ["\u00a7aEmerald \u00a7e将在 ",{"score":{"objective":"board","name":"bw.em","value":"1"},"color":"aqua"},"\u00a7bs\u00a7e 后产出。"]
# execute as @e[tag=diamond] at @s run title @a[distance=0..2] actionbar ["\u00a7bDiamond \u00a7e将在 ",{"score":{"objective":"board","name":"bw.dm","value":"1"},"color":"green"},"\u00a7as\u00a7e 后产出。"]
execute if score bw.state state matches 1.. run function minecraft:bedwars/summon
execute if score bw.state state matches 1.. run function minecraft:bedwars/testforover

## 防止重置的时候出现问题
execute if score bw.state state matches -1 run function bedwars/testforreset
execute if score bw.state state matches -3..-2 run function bedwars/wait_start
execute if score bw.state state matches -3..0 run title @a[team=bw.wait,scores={bw.team=1}] actionbar ["\u00a7b\u00a7l您选择的队伍：\u00a7c红队"]
execute if score bw.state state matches -3..0 run title @a[team=bw.wait,scores={bw.team=2}] actionbar ["\u00a7b\u00a7l您选择的队伍：\u00a79蓝队"]
execute if score bw.state state matches -3..0 run title @a[team=bw.wait,scores={bw.team=3}] actionbar ["\u00a7b\u00a7l您选择的队伍：\u00a7e黄队"]
execute if score bw.state state matches -3..0 run title @a[team=bw.wait,scores={bw.team=4}] actionbar ["\u00a7b\u00a7l您选择的队伍：\u00a7a绿队"]
#
function minecraft:bedwars/armor

execute as @e[tag=bw.tntsheep] at @s run function bedwars/item/sheepsecond

effect give @a[tag=bw.attack] strength 2 0 true
effect give @a[tag=bw.fasti] haste 2 0 true
effect give @a[tag=bw.fastii] haste 2 1 true
effect give @a[tag=bw.armor] resistance 2 0 true
effect give @a[tag=bw.speed] speed 2 0 true
# execute as @a[tag=bw.player] at @s run attribute @s minecraft:generic.attack_speed base set 8
## Death
scoreboard players remove @a[tag=bw.fhing] board 1
execute as @a[tag=bw.fhing] if score @s board matches ..0 run function minecraft:bedwars/during/player/teleport
tellraw @a[tag=bw.fhing] ["\u00a7e你将在",{"score":{"objective": "board","name": "*"},"color":"red"},"\u00a7e秒后重生！"]
title @a[tag=bw.fhing] title ["\u00a7c你死了！"]
title @a[tag=bw.fhing] subtitle ["\u00a7e你将在",{"score":{"objective": "board","name": "*"},"color":"red"},"\u00a7e秒后重生！"]
# execute as @a[tag=INV] at @s run particle minecraft:block gold_block ~ ~ ~ 0 0 0 1 15 force


## Other
recipe take @a[tag=bw.player] *

## Shop Item
function bedwars/shop/resetshop

#execute as @a[tag=bw.play] run attribute @s minecraft:generic.attack_speed base set 10

## Events
execute if score bw.state state matches 1..3 run function bedwars/events/eventsecond
