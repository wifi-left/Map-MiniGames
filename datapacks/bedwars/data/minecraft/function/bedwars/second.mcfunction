execute if score bw.state state matches 1.. run function minecraft:bedwars/testforover


## 防止重置的时候出现问题
execute if score bw.state state matches -1 run function bedwars/testforreset
execute if score bw.state state matches -3..-2 run function bedwars/wait_start
execute unless score bw.custom_team board matches 1 if score bw.state state matches -3..0 run title @a[team=bw.wait,scores={bw.team=1}] actionbar ["\u00a7b\u00a7l您选择的队伍：\u00a7c红队"]
execute unless score bw.custom_team board matches 1 if score bw.state state matches -3..0 run title @a[team=bw.wait,scores={bw.team=2}] actionbar ["\u00a7b\u00a7l您选择的队伍：\u00a79蓝队"]
execute unless score bw.custom_team board matches 1 if score bw.state state matches -3..0 run title @a[team=bw.wait,scores={bw.team=3}] actionbar ["\u00a7b\u00a7l您选择的队伍：\u00a7e黄队"]
execute unless score bw.custom_team board matches 1 if score bw.state state matches -3..0 run title @a[team=bw.wait,scores={bw.team=4}] actionbar ["\u00a7b\u00a7l您选择的队伍：\u00a7a绿队"]
#

execute as @e[tag=bw.tntsheep] at @s run function bedwars/item/sheepsecond

## 救援平台：每秒递减，15 秒后自动收回
execute as @e[tag=bw.pf] at @s run function minecraft:bedwars/item/platform_tick

## 蠹虫：45 秒后回收
execute as @e[tag=bw.bug] at @s run scoreboard players add @s board 1
execute as @e[tag=bw.bug,scores={board=45..}] run kill @s

## 铁傀儡守卫：每秒刷新索敌目标与寿命
execute as @e[tag=bw.golem] at @s run function minecraft:bedwars/item/golem_second

## 魔法牛奶 / 无敌卷轴：按秒递减
execute as @a[scores={bw.milk.t=1..}] run scoreboard players remove @s bw.milk.t 1
execute as @a[tag=bw.milk,scores={bw.milk.t=..0}] run function minecraft:bedwars/item/milk_end
execute as @a[scores={bw.invul.t=1..}] run scoreboard players remove @s bw.invul.t 1
execute as @a[tag=bw.invul,scores={bw.invul.t=..0}] run function minecraft:bedwars/item/invul_end

## 僵尸潮（模式 6）
execute if score bw.mode state matches 6 run function minecraft:bedwars/special/zombie_wave
# 僵尸寿命 90 秒：比 2 分钟一波的间隔短，所以每波都会在下一波刷新前清干净
execute as @e[tag=bw.zombie] at @s run scoreboard players add @s board 1
execute as @e[tag=bw.zombie,scores={board=90..}] run kill @s

## 永久床（模式 7）：行动栏显示剩余重生次数
execute if score bw.mode state matches 7 run function minecraft:bedwars/special/lives_bar

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
execute if score bw.state state matches 1.. run function bedwars/events/eventsecond

fill -216 67 299 -392 72 121 air destroy
