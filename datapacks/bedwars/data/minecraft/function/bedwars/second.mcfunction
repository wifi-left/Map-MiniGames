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

execute as @e[tag=bw.tntsheep] at @s run function bedwars/item/sheepsecond

function minecraft:bedwars/buffs
## Death
scoreboard players remove @a[tag=bw.fhing] player.board 1
execute as @a[tag=bw.fhing] if score @s player.board matches ..0 run function minecraft:bedwars/during/player/teleport
tellraw @a[tag=bw.fhing] ["§e你将在",{"score":{"objective":"player.board","name":"*"},"color":"red"},"§e秒后重生！"]
title @a[tag=bw.fhing] title ["\u00a7c你死了！"]
title @a[tag=bw.fhing] subtitle ["\u00a7e你将在",{"score":{"objective": "player.board","name": "*"},"color":"red"},"\u00a7e秒后重生！"]

## Other
recipe take @a[tag=bw.player] *

## Shop Item
function bedwars/shop/resetshop

## Events
execute if score bw.state state matches 1..3 run function bedwars/events/eventsecond

fill -216 -3 299 -392 -1 121 air
