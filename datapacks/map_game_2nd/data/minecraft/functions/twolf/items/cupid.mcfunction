clear @s
execute positioned 29 16 31 run kill @e[type=item,distance=..50]
tellraw @s ["\u00a7a请选择第1个人"]
# 开始倒计时
execute unless entity @a[tag=wolf.acting] store result score wolf.ttime board run random value 3..15

scoreboard players set wolf.time board 60
scoreboard players set twolf.state state 2
function minecraft:twolf/items/selector
execute at @s run playsound entity.firework_rocket.blast player @s ~ ~ ~ 1 1 1