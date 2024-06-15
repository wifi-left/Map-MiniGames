##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=pw.play,gamemode=adventure] at @s if block ~ ~ ~ water run scoreboard players remove @s drown 1
execute as @a[team=pw.play,gamemode=adventure] at @s if block ~ ~ ~ air if block ~ ~1 ~ air if score @s drown < @s pw.max run scoreboard players add @s drown 1
execute as @a[team=pw.play,gamemode=adventure] at @s if block ~ ~ ~ air if block ~ ~1 ~ air if score @s drown < @s pw.max run title @s actionbar ["\u00a7d\u00a7l您正在休息... ",{"score":{"objective": "drown","name": "@s"},"color": "aqua"}," \u00a76/ \u00a7a",{"score":{"objective": "pw.max","name": "@s"},"color": "green"}]
execute as @a[team=pw.play,gamemode=adventure] at @s if block ~ ~ ~ air if block ~ ~1 ~ air if score @s drown matches ..50 run effect give @s slowness 1 2 true
execute as @a[team=pw.play,gamemode=adventure] at @s if block ~ ~ ~ air if block ~ ~1 ~ air if score @s drown matches ..80 run effect give @s slowness 1 1 true
execute as @a[team=pw.play,gamemode=adventure] at @s if block ~ ~ ~ air if block ~ ~1 ~ air if score @s drown >= @s pw.max run title @s actionbar ["\u00a7a\u00a7l您当前非常健康！ "]
execute as @a[team=pw.play,gamemode=adventure] at @s if block ~ ~ ~ water if score @s drown matches 50.. run title @s actionbar ["\u00a7e\u00a7l请注意您的体力 ",{"score":{"objective": "drown","name": "@s"},"color": "red"},"\u00a76 / \u00a7a",{"score":{"objective": "pw.max","name": "@s"},"color": "green"}]
execute as @a[team=pw.play,gamemode=adventure] at @s if block ~ ~ ~ water if score @s drown matches ..49 run title @s actionbar ["\u00a7c\u00a7l您感觉有点累 ",{"score":{"objective": "drown","name": "@s"},"color": "red"},"\u00a76 / \u00a7a",{"score":{"objective": "pw.max","name": "@s"},"color": "green"}]
execute as @a[team=pw.play,gamemode=adventure] at @s if block ~ ~ ~ water if score @s drown matches ..99 run effect give @s slowness 1 3 true

execute as @a[team=pw.play,gamemode=adventure] at @s as @e[type=item,distance=..3,sort=nearest] at @s run data modify entity @s Owner set from entity @s Thrower

execute as @a[team=pw.play,gamemode=adventure] at @s as @e[type=item,distance=..3,sort=nearest] at @s run data merge entity @s {PickupDelay:0}
# PickupDelay
# execute as @a[team=pw.play] at @s  run scoreboard players add @s drown 1
effect give @a[team=pw.play] resistance 1 25 true
effect give @a[team=pw.wait] resistance 1 25 true
execute as @a[team=pw.play,gamemode=adventure] at @s if block ~ ~ ~ water if score @s drown matches ..0 run function poolwar/die
